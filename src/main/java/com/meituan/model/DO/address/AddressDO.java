package com.meituan.model.DO.address;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@TableName("address")
public class AddressDO implements Serializable {

    // 地址id
    @TableId(type = IdType.AUTO)//指明表的id
    private Integer id;

    // 用户id
    @TableField("user_id")
    private Integer userId;

    // 收货姓名
    @TableField("consignee")
    private String consignee;

    // 性别
    @TableField("sex")
    private String sex;

    //手机号
    @TableField("phone_number")
    private String phoneNumber;

    // 地址细节
    @TableField("detail")
    private String detail;

    // 地址标签
    @TableField("label")
    private String label;

    // 是否默认地址
    @TableField("is_default")
    private String isDefault;

    // 创建时间
    @TableField("create_time")
    private LocalDateTime createTime;

}
