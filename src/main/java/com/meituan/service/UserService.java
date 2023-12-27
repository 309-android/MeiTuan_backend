package com.meituan.service;


import com.meituan.model.Vo.user.UserLoginWithCodeReqVO;
import com.meituan.model.Vo.user.UserLoginWithPasswordReqVO;

public interface UserService {

    /**
     * 用密码登录
     * @param userLoginWithPasswordReqVO
     * @return
     */
    public String login(UserLoginWithPasswordReqVO userLoginWithPasswordReqVO);

    /**
     * 获取验证码
     * @return
     */
    String getCode(String phoneNumber);

    /**
     * 用验证码登录
     * @param phoneNumber
     * @param code
     * @return
     */
    String loginWithCode(UserLoginWithCodeReqVO userLoginWithCodeReqVo);

}
