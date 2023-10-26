package com.meituan.model.VO.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserLoginWithPasswordRspVO {

    private String phoneNumber;

    private String password;
}
