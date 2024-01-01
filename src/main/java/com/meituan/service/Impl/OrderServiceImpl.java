package com.meituan.service.Impl;


import com.meituan.mapper.FoodMapper;
import com.meituan.mapper.OrderMapper;
import com.meituan.mapper.StoreMapper;
import com.meituan.mapper.UserMapper;
import com.meituan.model.Do.food.FoodDO;
import com.meituan.model.Do.order.OrderDO;
import com.meituan.model.Do.store.StoreDO;
import com.meituan.model.Do.user.UserDO;
import com.meituan.model.Vo.order.GenerateOrderReqVO;
import com.meituan.service.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
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

    @Override
    @Transactional(rollbackFor = Exception.class)
    public String generateOrder(GenerateOrderReqVO generateOrderReqVO) {
        if (generateOrderReqVO == null){
            return "未知错误";
        }
        Integer storeId = generateOrderReqVO.getStoreId();
        StoreDO storeDO = storeMapper.selectById(storeId);
        String deliveryNum = storeDO.getDeliveryNum();
        Double delivery = Double.parseDouble(deliveryNum);
        Integer[] ids = generateOrderReqVO.getIds();
        String phoneNumber = generateOrderReqVO.getPhoneNumber();
        UserDO userDO = userMapper.queryByPhoneNumber(phoneNumber);
        if (userDO == null){
            return "未知错误";
        }
        // 以系统当前毫秒值生成订单号
        String orderCode = String.valueOf(System.currentTimeMillis());
        for (int i = 0; i < ids.length; i++) {
            if (i == 0){
                FoodDO foodDO = foodMapper.selectById(ids[0]);
                // 组装order
                OrderDO order = OrderDO.builder()
                        .orderAmount(String.valueOf(Double.parseDouble(foodDO.getFoodAmount())+ delivery))
                        .orderTime(LocalDateTime.now())
                        .code(orderCode)
                        .status("0")
                        .foodId(foodDO.getId())
                        .storeId(foodDO.getStoreId())
                        .userId(userDO.getId())
                        .build();

                orderMapper.insert(order);
                continue;
            }
            FoodDO foodDO = foodMapper.selectById(ids[i]);
            // 组装order
            OrderDO order = OrderDO.builder()
                    .orderAmount(foodDO.getFoodAmount())
                    .orderTime(LocalDateTime.now())
                    .code(orderCode)
                    .status("0")
                    .foodId(foodDO.getId())
                    .storeId(foodDO.getStoreId())
                    .userId(userDO.getId())
                    .build();

            orderMapper.insert(order);
        }
        return "下单成功";
    }
}
