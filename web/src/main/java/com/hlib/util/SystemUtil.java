package com.hlib.util;

import com.hlib.dto.ShiroUser;
import org.apache.shiro.SecurityUtils;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by hlib on 2015/8/25 0025.
 */
public class SystemUtil {

    /**
     * 获取当前登录用户
     * @return
     */
    public static ShiroUser currentUser(){
        ShiroUser user = null;
        try {
            user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
            return user;
        }catch (Exception e){
//            log.warn("获取当前登录用户失败，默认为app接口请求");
        }
        /*if(null == user && null != local.get()){
            return local.get();
        }*/
        return null;
//        return user;
    }

    /**
     * request token
     * @return
     */
    public static String getToken(){
        RequestAttributes ra = RequestContextHolder.getRequestAttributes();
        ServletRequestAttributes sra = (ServletRequestAttributes) ra;
        HttpServletRequest request = sra.getRequest();
        String token = request.getHeader("token");
        return token;
    }

    public static Integer[] stringArr2Integer(String[] strArr){
        Integer[] intArr = new Integer[strArr.length];
        for(int i = 0; i<strArr.length; i++){
            intArr[i] = Integer.parseInt(strArr[i]);
        }
        return intArr;
    }

}
