package com.meituan.controller;

import com.meituan.model.Do.store.StoreDO;
import com.meituan.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/store")
public class StoreController {


    @Autowired
    private StoreService storeService;

    /**
     * 获取全部店铺
     * @return
     */
    @PostMapping("/get")
    public List<StoreDO> get(@RequestParam String storeCategory){
        return storeService.get(storeCategory);
    }

    @PostMapping("/getById")
    public StoreDO getById(@RequestParam String storeId){
        return storeService.getById(storeId);
    }

    /**
     * 店铺模糊匹配
     * @return
     */
    @PostMapping("/getByName")
    public List<StoreDO> getByName(@RequestParam String searchMsg){
        return storeService.getByName(searchMsg);
    }
}
