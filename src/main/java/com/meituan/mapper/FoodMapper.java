package com.meituan.mapper;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.meituan.model.DO.food.FoodDO;
import com.meituan.model.DO.order.OrderDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FoodMapper extends BaseMapper<FoodDO> {
}
