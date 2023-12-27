package com.meituan.model.Do.food;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@TableName("food")
public class FoodDO implements Serializable {

    // 食物id
    @TableField("id")
    private Integer id;

    // 店铺id
    @TableField("store_id")
    private Integer storeId;

    @TableField("category_id")
    private Integer CategoryId;

    // 食物名字
    @TableField("food_name")
    private String foodName;

    // 食物图片地址
    @TableField("food_img")
    private String foodImg;

    // 食物价格
    @TableField("food_amount")
    private String foodAmount;

    @TableField("month_sale")
    private String monthSale;

}
