package com.meituan.mapper;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.meituan.model.DO.order.OrderDO;
import com.meituan.model.DO.store.StoreDO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.core.annotation.Order;

import java.util.List;

@Mapper
public interface OrderMapper extends BaseMapper<OrderDO> {

    /**
     * 根据用户id查询此用户所有订单数据
     * @param userId
     * @return
     */
    default List<OrderDO> queryByUserId(Integer userId){
        // 构造查询条件
        LambdaQueryWrapper<OrderDO> wrapper = new LambdaQueryWrapper<>();

        wrapper.eq(OrderDO::getUserId,userId);

        return selectList(wrapper);
    }

    /**
     * 根据订单编号查询
     * @param code
     * @return
     */
    default List<OrderDO> queryByCode(Integer userId, String code){
        // 构造查询条件
        LambdaQueryWrapper<OrderDO> wrapper = new LambdaQueryWrapper<>();

        wrapper.eq(OrderDO::getUserId,userId);
        wrapper.eq(OrderDO::getCode,code);

        return selectList(wrapper);

    }
}
