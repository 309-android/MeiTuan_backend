package com.meituan.controller;

import com.meituan.model.DO.store.StoreDO;
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
    @GetMapping("/getAll")
    public List<StoreDO> getAll(){
        return storeService.getAll();
    }

}
