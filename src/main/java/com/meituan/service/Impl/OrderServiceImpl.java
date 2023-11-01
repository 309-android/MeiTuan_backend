package com.meituan.service.Impl;


import com.meituan.mapper.FoodMapper;
import com.meituan.mapper.OrderMapper;
import com.meituan.mapper.StoreMapper;
import com.meituan.mapper.UserMapper;
import com.meituan.model.DO.food.FoodDO;
import com.meituan.model.DO.order.OrderDO;
import com.meituan.model.DO.store.StoreDO;
import com.meituan.model.DO.user.UserDO;
import com.meituan.service.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@Service
@Slf4j
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private FoodMapper foodMapper;

    @Autowired
    private StoreMapper storeMapper;

    /**
     * 获取当前用户所有订单
     * @return
     */
    @Override
    public List<List<OrderDO>> getAllOrders(String phoneNumber) {

        // 根据手机号查出用户
        UserDO userDO = userMapper.queryByPhoneNumber(phoneNumber);

        if (userDO != null){
            // 用户id
            Integer userId = userDO.getId();

            List<List<OrderDO>> orders = new ArrayList<>();

            // 所有与此用户有关的订单
            List<OrderDO> orderDOS = orderMapper.queryByUserId(userId);

            HashSet<String> codes = new HashSet<>();

            // 获得所有订单编号 获取所有店铺id
            for (OrderDO orderDO : orderDOS) {
                codes.add(orderDO.getCode());
            }

            // 查询所有同一订单和用户
            for (String code : codes) {
                List<OrderDO> sameCodeOrders = orderMapper.queryByCode(userId, code);
                // 对列表内订单进行处理  为每个订单赋上他们对应的食物
                for (OrderDO sameCodeOrder : sameCodeOrders) {
                    Integer foodId = sameCodeOrder.getFoodId();
                    FoodDO foodDO = foodMapper.selectById(foodId);
                    sameCodeOrder.setFoodDO(foodDO);
                }
                orders.add(sameCodeOrders);
            }


            return orders;
        }

        return null;
    }
}
