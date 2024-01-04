package com.meituan.controller;

import com.meituan.model.Do.store.StoreDO;
import com.meituan.model.Vo.star.NewStarVO;
import com.meituan.service.StarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/star")
public class StarController {

    @Autowired
    private StarService starService;

    @PostMapping("/newStar")
    public String newStar(@RequestBody NewStarVO newStarVO){
        return starService.newStar(newStarVO);
    }

    @PostMapping("/isStarred")
    public String isStarred(@RequestBody NewStarVO newStarVO){
        return starService.isStarred(newStarVO);
    }

    @PostMapping("/getAll")
    public List<StoreDO> getAll(@RequestParam String phoneNumber){
        return starService.getAll(phoneNumber);
    }

}
