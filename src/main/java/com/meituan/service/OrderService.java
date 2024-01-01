package com.meituan.service;


import com.meituan.model.Do.order.OrderDO;
import com.meituan.model.Vo.order.GenerateOrderReqVO;

import java.util.List;

public interface OrderService {

    /**
     * 获取当前用户所有订单
     * @return
     */
    List<List<OrderDO>> getAllOrders(String phoneNumber);

    String generateOrder(GenerateOrderReqVO generateOrderReqVO);
}
