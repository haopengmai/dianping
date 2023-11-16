package com.hmdp.service.impl;

import com.hmdp.dto.Result;
import com.hmdp.entity.SeckillVoucher;
import com.hmdp.entity.VoucherOrder;
import com.hmdp.mapper.VoucherOrderMapper;
import com.hmdp.service.ISeckillVoucherService;
import com.hmdp.service.IVoucherOrderService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hmdp.utils.RedisIdWorker;
import com.hmdp.utils.UserHolder;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.aop.framework.AopContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.time.LocalDateTime;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 虎哥
 * @since 2021-12-22
 */
@Service
public class VoucherOrderServiceImpl extends ServiceImpl<VoucherOrderMapper, VoucherOrder> implements IVoucherOrderService {
    @Autowired
    private ISeckillVoucherService seckillVoucherService;
    //该类实现了mybatisplus，用它来在数据库中查询数据
    @Resource
    private VoucherOrderServiceImpl voucherOrderService;

    @Autowired
    private RedisIdWorker redisIdWorker;

    @Resource
   private RedissonClient redissonClient;

    @Override
    public Result seckillVoucher(Long voucherId) {
        //1. 从数据库中查询优惠券
        SeckillVoucher seckillVoucher = seckillVoucherService.getById(voucherId);

        //2. 判断秒杀时间是否开始
        if (seckillVoucher.getBeginTime().isAfter(LocalDateTime.now()))
        {
            return Result.fail("秒杀还未开始，请耐心等待");
        }

        //3. 判断秒杀时间是否结束
        if (seckillVoucher.getEndTime().isBefore(LocalDateTime.now())) {
            return Result.fail("秒杀已经结束！");
        }

        //4. 判断库存是否充足
        if (seckillVoucher.getStock() < 1) {
            return Result.fail("优惠券已被抢光了哦，下次记得手速快点");
        }

        Long userId = UserHolder.getUser().getId();
        RLock redisLock = redissonClient.getLock("order:" + userId);
        boolean isLock = redisLock.tryLock();//不传入参数，就是失败不等待

        if (!isLock) {
            return Result.fail("不允许抢多张优惠券");
        }
        try {
            return voucherOrderService.createVoucherOrder(voucherId);
        } finally {
            redisLock.unlock();
        }
//        单机模式下，使用synchronized实现锁
//        synchronized (userId.toString().intern())
//        {
//            //    createVoucherOrder的事物不会生效,因为你调用的方法，其实是this.的方式调用的，事务想要生效，
//            //    还得利用代理来生效，所以这个地方，我们需要获得原始的事务对象， 来操作事务
//            return voucherOrderService.createVoucherOrder(voucherId);
//        }
    }


    @Transactional
    public Result createVoucherOrder(Long voucherId) {
        // 一人一单逻辑
        Long userId = UserHolder.getUser().getId();


        int count = query().eq("voucher_id", voucherId).eq("user_id", userId).count();
        if (count > 0){
            return Result.fail("你已经抢过优惠券了哦");
        }

        //5. 扣减库存
        boolean success = seckillVoucherService.update()
                .setSql("stock = stock - 1")
                .eq("voucher_id", voucherId)
                .gt("stock",0)   //加了CAS 乐观锁，Compare and swap
                .update();

        if (!success) {
            return Result.fail("库存不足");
        }

//        库存足且在时间范围内的，则创建新的订单
        //6. 创建订单
        VoucherOrder voucherOrder = new VoucherOrder();
        //6.1 设置订单id，生成订单的全局id
        long orderId = redisIdWorker.nextId("order");
        //6.2 设置用户id
        Long id = UserHolder.getUser().getId();
        //6.3 设置代金券id
        voucherOrder.setVoucherId(voucherId);
        voucherOrder.setId(orderId);
        voucherOrder.setUserId(id);
        //7. 将订单数据保存到表中
        save(voucherOrder);
        //8. 返回订单id
        return Result.ok(orderId);
    }
}
