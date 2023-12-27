package com.meituan.model.Vo.user;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserLoginWithCodeReqVO {

    private String phoneNumber;

    private String code;
}
