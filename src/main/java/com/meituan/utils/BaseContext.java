package com.meituan.utils;

/**
 * 基于ThreadLocal封装的工具类 用于保存和获取当前登陆用户的验证码
 */
public class BaseContext {

    private static ThreadLocal<String> threadLocal = new ThreadLocal<>();

    /**
     * 设置验证码
     * @param code
     */
    public static void setCode(String code){
        threadLocal.set(code);
    }

    /**
     * 获取验证码
     * @return
     */
    public static String getCode(){
        return threadLocal.get();
    }
}
