package com.meituan.service;


import com.meituan.model.DO.food.FoodDO;
import com.meituan.model.DO.order.OrderDO;

import java.util.List;

public interface FoodService {

    /**
     * 获取所有食物
     * @return
     */
    List<FoodDO> getAllFood();

    /**
     * 根据店铺id查找
     * @param storeId
     * @return
     */
    List<FoodDO> getByStoreId(String storeId);

    /**
     * 根据分类id查找
     * @param storeId
     * @return
     */
    List<FoodDO> getByCategoryId(String categoryId);
}
