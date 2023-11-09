package com.meituan.controller;

import com.meituan.mapper.CategoryMapper;
import com.meituan.model.DO.category.CategoryDO;
import com.meituan.model.DO.food.FoodDO;
import com.meituan.service.CategoryService;
import com.meituan.service.FoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @PostMapping("/getAllByStoreId")
    public List<CategoryDO> getAllByStoreId(@RequestParam String storeId){
        return categoryService.getAllByStoreId(storeId);
    }
}
