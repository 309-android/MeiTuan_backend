package com.meituan.model.VO.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserLoginWithPasswordReqVO {

    private String phoneNumber;

    private String password;
}
