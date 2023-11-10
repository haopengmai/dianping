package com.hmdp.utils;

import cn.hutool.core.util.StrUtil;
import com.hmdp.dto.UserDTO;
import com.hmdp.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 从request中获取请求头中的authorization，这是之前登录成功的时候，我们给前端返回的token
        String token = request.getHeader("authorization");;
        //2. 如果token是空，则未登录，拦截
        if (StrUtil.isBlank(token)) {
            response.setStatus(401);
            return false;
        }
//        //保存用户信息到ThreadLocal
//        UserHolder.saveUser((UserDTO) user);
        //方行
        return true;
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        //移除threadlocal用户，避免内存泄漏
        UserHolder.removeUser();
    }
}
