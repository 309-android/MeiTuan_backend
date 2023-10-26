package com.meituan.controller;


import com.meituan.mapper.UserMapper;
import com.meituan.model.VO.user.UserLoginWithCodeReqVO;
import com.meituan.model.VO.user.UserLoginWithPasswordReqVO;
import com.meituan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserMapper userMapper;

    @PostMapping("/login")
    public String login(@RequestBody UserLoginWithPasswordReqVO userLoginWithPasswordReqVO){
        return userService.login(userLoginWithPasswordReqVO);
    }

    @PostMapping("/getCode")
    public String getCode(@RequestParam String phoneNumber){
        return userService.getCode(phoneNumber);
    }

    @PostMapping("/loginWithCode")
    public String loginWithCode(@RequestBody UserLoginWithCodeReqVO userLoginWithCodeReqVo){
        return userService.loginWithCode(userLoginWithCodeReqVo);
    }
}
