package com.meituan.service;


import com.meituan.model.DO.order.OrderDO;
import com.meituan.model.DO.store.StoreDO;

import java.util.List;

public interface OrderService {

    /**
     * 获取当前用户所有订单
     * @return
     */
    List<List<OrderDO>> getAllOrders(String phoneNumber);
}
