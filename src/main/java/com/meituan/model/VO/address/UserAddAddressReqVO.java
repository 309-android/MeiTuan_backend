package com.meituan.model.VO.address;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UserAddAddressReqVO implements Serializable {

    // 地址信息
    private String detail;

    // 地址标签
    private String label;

    // 收货人姓名
    private String consignee;

    // 收货手机号
    private String phoneNumber;

    // 用户手机号
    private String loginPhoneNumber;

    // 性别
    private String sex;

}
