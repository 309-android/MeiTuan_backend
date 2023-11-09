package com.meituan.model.DO.store;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
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
@TableName("store")
public class StoreDO implements Serializable {

    // 店铺id
    @TableId(type = IdType.AUTO)//指明表的id
    private Integer id;

    // 店铺名字
    @TableField("store_name")
    private String storeName;

    // 店铺图片名
    private String Image;

    // 店铺评分
    @TableField("store_score")
    private String storeScore;

    // 店铺月售
    @TableField("month_sale")
    private String monthSale;

    // 店铺人均价格
    @TableField("people_avg")
    private String peopleAvg;

    // 店铺起送价格
    @TableField("minTakeOut_num")
    private String minTakeOutNum;

    // 配送价格
    @TableField("delivery_num")
    private String deliveryNum;

    // 店铺评价
    private String comment;

    // 店铺类型
    @TableField("store_category")
    private String storeCategory;

    // 店铺简介
    private String summary;

}
