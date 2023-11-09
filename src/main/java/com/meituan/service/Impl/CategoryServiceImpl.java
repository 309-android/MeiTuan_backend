package com.meituan.service.Impl;


import com.meituan.mapper.CategoryMapper;
import com.meituan.mapper.FoodMapper;
import com.meituan.model.DO.category.CategoryDO;
import com.meituan.model.DO.food.FoodDO;
import com.meituan.service.CategoryService;
import com.meituan.service.FoodService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class CategoryServiceImpl implements CategoryService {


    @Autowired
    private CategoryMapper categoryMapper;


    @Override
    public List<CategoryDO> getAllByStoreId(String storeId) {
        if (storeId != null){
            return categoryMapper.getAllByStoreId(storeId);
        }
        return null;
    }
}
