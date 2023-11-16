package com.hmdp.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.lang.UUID;
import cn.hutool.core.util.RandomUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hmdp.dto.LoginFormDTO;
import com.hmdp.dto.Result;
import com.hmdp.dto.UserDTO;
import com.hmdp.entity.User;
import com.hmdp.mapper.UserMapper;
import com.hmdp.service.IUserService;
import com.hmdp.utils.MailUtils;
import com.hmdp.utils.RegexUtils;
import com.hmdp.utils.SystemConstants;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

import static com.hmdp.utils.RedisConstants.*;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author 虎哥
 * @since 2021-12-22
 */
@Slf4j
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {
    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    //发短信
    @Override
    public Result sendCode(String phone, HttpSession session) throws MessagingException {
        // TODO 发送email验证码并保存验证码
        if (RegexUtils.isEmailInvalid(phone)) {
            return Result.fail("邮箱格式不正确");
        }
        //符合，则生成验证码
        String code = MailUtils.achieveCode();

        //将生成的验证码保持到redis
        stringRedisTemplate.opsForValue().set(LOGIN_CODE_KEY+phone,code,LOGIN_CODE_TTL, TimeUnit.MINUTES);

        log.info("发送登录验证码：{}", code);
        //发送验证码
        MailUtils.sendtoMail(phone, code);
        return Result.ok();
    }

    //登录注册
    @Override
    public Result login(LoginFormDTO loginForm, HttpSession session) {
        String phone = loginForm.getPhone();
        String code = loginForm.getCode();
        //检验手机号是否正确，不同的请求就应该再次去进行确认
        if(RegexUtils.isEmailInvalid(phone))
        {
            //如果无效，则直接返回
            return Result.fail("邮箱格式不正确！！");
        }
        //从redis中读取验证码，并进行校验
        String Cachecode = stringRedisTemplate.opsForValue().get(LOGIN_CODE_KEY+phone);
        //1. 校验邮箱
        if (RegexUtils.isEmailInvalid(phone)) {
            return Result.fail("邮箱格式不正确！！");
        }
        //2. 不符合格式则报错
        if (Cachecode==null || !code.equals(Cachecode))
        {
            return Result.fail("无效的验证码");
        }
        //如果上述都没有问题的话，就从数据库中查询该用户的信息

        //select * from tb_user where phone = ?
        User user = query().eq("phone", phone).one();

        //判断用户是否存在
        if (user==null)
        {
            user = createuser(phone);
        }
        //保存用户信息到Redis中
        String token = UUID.randomUUID().toString();

        //7.2 将UserDto对象转为HashMap存储
        UserDTO userDTO = BeanUtil.copyProperties(user, UserDTO.class);
        HashMap<String, String > userMap = new HashMap<>();
        userMap.put("id", String.valueOf(userDTO.getId()));
        userMap.put("nickName", userDTO.getNickName());
        userMap.put("icon", userDTO.getIcon());


        //7.3 存储
        String tokenKey = LOGIN_USER_KEY + token;
        stringRedisTemplate.opsForHash().putAll(tokenKey, userMap);

        //7.4 设置token有效期为30分钟
        stringRedisTemplate.expire(tokenKey, LOGIN_USER_TTL, TimeUnit.MINUTES);

        //7.5 登陆成功则删除验证码信息
        stringRedisTemplate.delete(LOGIN_CODE_KEY + phone);

        //8. 返回token
        return Result.ok(token);
    }

    private User createuser(String phone) {
        //创建用户
        User user = new User();
        user.setPhone(phone);
        user.setNickName(SystemConstants.USER_NICK_NAME_PREFIX +RandomUtil.randomString(10));
        //保存用户 insert into tb_user(phone,nick_name) values(?,?)
        save(user);
        return user;
    }
}
