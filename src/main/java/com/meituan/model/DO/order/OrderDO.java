package com.meituan.model.DO.order;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.meituan.model.DO.food.FoodDO;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@TableName("orders")
public class OrderDO implements Serializable {
    // 订单id
    @TableId(type = IdType.AUTO)//指明表的id
    private Integer id;

    //用户id
    @TableField("user_id")
    private Integer userId;

    //食物id
    @TableField("food_id")
    private Integer foodId;

    //店铺id
    @TableField("store_id")
    private Integer storeId;

    //订单金额
    @TableField("order_amount")
    private String orderAmount;

    /**
     * 订单状态
     * 0 未完成
     * 1 已完成
     */
    private String status;

    // 订单编号
    private String code;

    // 订单时间
    @TableField("order_time")
    private LocalDateTime orderTime;

    // 订单包含食物
    @TableField(exist = false)
    private FoodDO foodDO;

}
