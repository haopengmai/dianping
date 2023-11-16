package com.hmdp.service.impl;

import cn.hutool.core.util.BooleanUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.hmdp.dto.Result;
import com.hmdp.entity.Shop;
import com.hmdp.entity.ShopType;
import com.hmdp.mapper.ShopMapper;
import com.hmdp.service.IShopService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hmdp.utils.RedisData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import static com.hmdp.utils.RedisConstants.*;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 虎哥
 * @since 2021-12-22
 */
@Service
public class ShopServiceImpl extends ServiceImpl<ShopMapper, Shop> implements IShopService {
    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    //这里需要声明一个线程池，因为下面缓存击穿问题，我们需要新建一个线程来完成重构缓存
    private static final ExecutorService CACHE_REBUILD_EXECUTOR = Executors.newFixedThreadPool(10);
    @Override
    public Result queryById(Long id) {
        //解决缓存穿透的代码逻辑
        Shop shop = querywithchuantou(id);
        //利用互斥锁解决缓存击穿的代码逻辑
//        Shop shop = querywithjichuan_mutex(id);
//       Shop shop = queryWithLogicalExpire(id);
        if (shop == null) {
            return Result.fail("店铺不存在！！");
        }
        return Result.ok(shop);
    }

    //解决缓存穿透的代码
    public Shop querywithchuantou(Long id) {
        //先从Redis中查，这里的常量值是固定的前缀 + 店铺id
        String shopJson = stringRedisTemplate.opsForValue().get(CACHE_SHOP_KEY + id);
        //如果不为空（查询到了），则转为Shop类型直接返回
        if (StrUtil.isNotBlank(shopJson)) {
            Shop shop = JSONUtil.toBean(shopJson, Shop.class);
            return shop;
        }

        //如果这个数据不存在，将这个数据写入到Redis中，并且将value设置为空字符串，然后设置一个较短的TTL，返回错误信息。
        // 当再次发起查询时，先去Redis中判断value是否为空字符串，如果是空字符串，则说明是刚刚我们存的不存在的数据，直接返回错误信息

        //如果查询到的是空字符串，则说明是我们缓存的空数据
        if (shopJson!=null) {
            return  null;
        }

        //否则去数据库中查
        Shop shop = getById(id);

        //查不到，则将空字符串写入Redis
        if (shop == null) {
            //这里的常量值是2分钟
            stringRedisTemplate.opsForValue().set(CACHE_SHOP_KEY + id, null, CACHE_NULL_TTL, TimeUnit.MINUTES);
            return null;
        }

        //查到了则转为json字符串
        String jsonStr = JSONUtil.toJsonStr(shop);
        //并存入redis,并设置TTL，防止存了错的缓存
        stringRedisTemplate.opsForValue().set(CACHE_SHOP_KEY + id, jsonStr,CACHE_SHOP_TTL, TimeUnit.MINUTES);
        //最终把查询到的商户信息返回给前端
        return shop;
    }

    //互斥锁解决缓存击穿
    public Shop querywithjichuan_mutex(Long id) {
        //先从Redis中查，这里的常量值是固定的前缀 + 店铺id
        String shopJson = stringRedisTemplate.opsForValue().get(CACHE_SHOP_KEY + id);
        //如果不为空（查询到了），则转为Shop类型直接返回
        if (StrUtil.isNotBlank(shopJson)) {
            Shop shop = JSONUtil.toBean(shopJson, Shop.class);
            return shop;
        }

        //如果查询到的是空字符串“”，则说明是我们缓存的空数据
        if (shopJson!=null) {
            return  null;
        }

        //实现在高并发的情况下缓存重建
        Shop shop = null;
        try {
            //1.获取互斥锁
            boolean flag = tryLock(LOCK_SHOP_KEY + id);
//        2.失败，则休眠并重试
            while (!flag) {
                Thread.sleep(50);
                return querywithjichuan_mutex(id);
            }
            //3.获取成功->读取数据库，重建缓存
            //查不到，则将空值写入Redis
            shop = getById(id);
            if (shop == null) {
                stringRedisTemplate.opsForValue().set(CACHE_SHOP_KEY + id, "", CACHE_NULL_TTL, TimeUnit.MINUTES);
                return null;
            }
            //查到了则转为json字符串
            String jsonStr = JSONUtil.toJsonStr(shop);
            //并存入redis，设置TTL
            stringRedisTemplate.opsForValue().set(CACHE_SHOP_KEY + id, jsonStr, CACHE_SHOP_TTL, TimeUnit.MINUTES);
            //最终把查询到的商户信息返回给前端
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        } finally {
            unlock(LOCK_SHOP_KEY + id);
        }
        return shop;
    }

    //逻辑过期解决缓存击穿
    public Shop queryWithLogicalExpire(Long id) {
        //1. 从redis中查询商铺缓存
        String json = stringRedisTemplate.opsForValue().get(CACHE_SHOP_KEY + id);
        //2. 如果未命中，则返回空
        if (StrUtil.isBlank(json)) {
            return null;
        }
        //3. 命中，将json反序列化为对象
        RedisData redisData = JSONUtil.toBean(json, RedisData.class);
        //3.1 将data转为Shop对象
        JSONObject shopJson = (JSONObject) redisData.getData();
        Shop shop = JSONUtil.toBean(shopJson, Shop.class);
        //3.2 获取过期时间
        LocalDateTime expireTime = redisData.getExpireTime();
        //4. 判断是否过期
        if (LocalDateTime.now().isBefore(expireTime)) {
            //5. 未过期，直接返回商铺信息
            return shop;
        }
        //6. 过期，尝试获取互斥锁
        boolean flag = tryLock(LOCK_SHOP_KEY + id);
        //7. 获取到了锁
        if (flag) {
            //8. 开启独立线程
            CACHE_REBUILD_EXECUTOR.submit(() -> {
                try {
                    this.saveShop2Redis(id, 20L);//此处的expirSeconds应该为物品的活动时间,设置为20只为测试
                } catch (Exception e) {
                    throw new RuntimeException(e);
                } finally {
                    unlock(LOCK_SHOP_KEY + id);
                }
            });
            //9. 直接返回商铺信息
            return shop;
        }
        //10. 未获取到锁，直接返回商铺信息
        return shop;
    }

    @Override
    @Transactional
    public Result update(Shop shop) {
//        首先先判一下空
        if (shop.getId() == null){
            return Result.fail("店铺id不能为空！！");
        }
        //先修改数据库
        updateById(shop);
        //再删除缓存
        stringRedisTemplate.delete(CACHE_SHOP_KEY + shop.getId());
        return Result.ok();
    }

    //下面用来解决热点高并发访问中的缓存击穿问题

    //获取锁的代码逻辑
    private boolean tryLock(String key) {
        Boolean flag = stringRedisTemplate.opsForValue().setIfAbsent(key, "1", 10, TimeUnit.SECONDS);
        //避免返回值为null，我们这里使用了BooleanUtil工具类
        return BooleanUtil.isTrue(flag);
    }

    //释放锁
    private void unlock(String key) {
        stringRedisTemplate.delete(key);
    }

    //-------------------------------------------------------------
    //逻辑过期实现缓存击穿问题->热点问题的数据预热
    public void saveShop2Redis(Long id, Long expirSeconds) throws InterruptedException {
        Shop shop = getById(id);
        Thread.sleep(200); //模拟上面取数据的时间

        RedisData redisData = new RedisData();
        redisData.setData(shop);
        redisData.setExpireTime(LocalDateTime.now().plusSeconds(expirSeconds));
        stringRedisTemplate.opsForValue().set(CACHE_SHOP_KEY + id, JSONUtil.toJsonStr(redisData));
    }
}
