package com.meituan.service.Impl;


import com.meituan.mapper.UserCodeMapper;
import com.meituan.mapper.UserMapper;
import com.meituan.model.DO.user.UserCodeDO;
import com.meituan.model.DO.user.UserDO;
import com.meituan.model.VO.user.UserLoginWithCodeReqVO;
import com.meituan.model.VO.user.UserLoginWithPasswordReqVO;
import com.meituan.service.UserService;
import com.meituan.utils.BaseContext;
import com.meituan.utils.ValidateCodeUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserCodeMapper userCodeMapper;

    @Override
    public String login(UserLoginWithPasswordReqVO userLoginWithPasswordReqVO) {
        UserDO u = userMapper.queryByPhoneNumber(userLoginWithPasswordReqVO.getPhoneNumber());
        if (u == null) {
            return "error";
        }
        if (u.getPassword().equals(userLoginWithPasswordReqVO.getPassword())) {
            return "success";
        }
        return "error";
    }

    @Override
    public String getCode(String phoneNumber) {
        // 获取验证码
        String code = ValidateCodeUtils.generateValidateCode(6).toString();
        log.info("code : {}", code);
        UserCodeDO userCode = userCodeMapper.queryByPhoneNumber(phoneNumber);
        if (userCode == null) {
            // 新用户
            // 放入缓存表
            UserCodeDO userCodeDO = UserCodeDO.builder()
                    .code(code)
                    .phoneNumber(phoneNumber)
                    .build();
            userCodeMapper.insert(userCodeDO);
        } else {
            // 更新code
            userCodeMapper.updateCodeByPhoneNumber(phoneNumber, code);
        }
        return "success";
    }

    @Override
    public String loginWithCode(UserLoginWithCodeReqVO userLoginWithCodeReqVo) {
        // 获取存在缓存表中的code
        String c = new String();
        if (userLoginWithCodeReqVo != null) {
            UserCodeDO userCodeDO = userCodeMapper.queryByPhoneNumber(userLoginWithCodeReqVo.getPhoneNumber());
            c = userCodeDO.getCode();
        } else {
            return "error";
        }
        // 验证码判断
        if (c != null) {
            // 判断验证码是否正确
            if (c.equals(userLoginWithCodeReqVo.getCode())) {
                UserDO userDO = userMapper.queryByPhoneNumber(userLoginWithCodeReqVo.getPhoneNumber());
                if (userDO == null) {
                    // 判断是否是新用户 如果是 设置初始密码123456 并保存
                    userDO = UserDO.builder()
                            .password("123456")
                            .phoneNumber(userLoginWithCodeReqVo.getPhoneNumber()).build();
                    userMapper.insert(userDO);
                }
                // 登录成功时将上次code置空
                userCodeMapper.updateCodeByPhoneNumber(userLoginWithCodeReqVo.getPhoneNumber(), "");
                return "success";
            } else {
                return "error";
            }
        }
        return "error";
    }
}
