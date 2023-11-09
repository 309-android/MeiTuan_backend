package com.meituan.controller;

import com.meituan.model.DO.food.FoodDO;
import com.meituan.service.FoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/food")
public class FoodController {


    @Autowired
    private FoodService foodService;

    @PostMapping("/getAllFood")
    public List<FoodDO> getAllFood(){
        return foodService.getAllFood();
    }

    @PostMapping("/getByStoreId")
    public List<FoodDO> getByStoreId(@RequestParam String storeId){
        return foodService.getByStoreId(storeId);
    }

    @PostMapping("/getByCategoryId")
    public List<FoodDO> getByCategoryId(@RequestParam String categoryId){
        return foodService.getByCategoryId(categoryId);
    }
}
