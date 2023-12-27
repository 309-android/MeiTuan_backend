package com.meituan.service.Impl;


import com.meituan.mapper.FoodMapper;
import com.meituan.model.Do.food.FoodDO;
import com.meituan.service.FoodService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class FoodServiceImpl implements FoodService {

    @Autowired
    private FoodMapper foodMapper;

    /**
     * 查询所有食物
     * @return
     */
    @Override
    public List<FoodDO> getAllFood() {
         return foodMapper.selectList(null);
    }

    /**
     * 根据店铺id查询
     * @param storeId
     * @return
     */
    @Override
    public List<FoodDO> getByStoreId(String storeId) {
        return foodMapper.getByStoreId(storeId);
    }

    /**
     * 根据分类id查询
     * @param categoryId
     * @return
     */
    @Override
    public List<FoodDO> getByCategoryId(String categoryId) {
        return foodMapper.getByCategoryId(categoryId);
    }
}
