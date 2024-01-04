package com.meituan.service.Impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.meituan.mapper.StarMapper;
import com.meituan.mapper.StoreMapper;
import com.meituan.mapper.UserMapper;
import com.meituan.model.Do.star.StarDO;
import com.meituan.model.Do.store.StoreDO;
import com.meituan.model.Do.user.UserDO;
import com.meituan.model.Vo.star.NewStarVO;
import com.meituan.service.StarService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
public class StarServiceImpl extends ServiceImpl<StarMapper, StarDO> implements StarService {

    @Autowired
    private StarMapper starMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private StoreMapper storeMapper;

    @Override
    public String newStar(NewStarVO newStarVO) {
        if (newStarVO == null){
            return "未知错误，请稍后重试......";
        }
        // 不为空 取出手机号查询用户id
        UserDO userDO = userMapper.queryByPhoneNumber(newStarVO.getPhoneNumber());
        if (userDO == null){
            return "请先登录再进行收藏操作！";
        }
        Integer userId = userDO.getId();
        // 查询收藏表是否存在对当前店铺收藏数据
        LambdaQueryWrapper<StarDO> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(StarDO::getUserId,userId).eq(StarDO::getStoreId,newStarVO.getStoreId());
        StarDO starDO = starMapper.selectOne(wrapper);
        if (starDO == null){
            // 未收藏 进行收藏操作
            StarDO newStar = StarDO.builder()
                    .storeId(Integer.valueOf(newStarVO.getStoreId()))
                    .userId(userId)
                    .build();
            int count = starMapper.insert(newStar);
            return count == 1 ? "收藏成功！" : "收藏失败，请稍后重试！";
        }
        // 已收藏进行取消收藏操作
        int count = starMapper.deleteById(starDO.getId());

        return count == 1 ? "取消收藏成功！" : "取消收藏失败，请稍后重试！";
    }

    @Override
    public String isStarred(NewStarVO newStarVO) {
        if (newStarVO == null){
            return "未知错误，请稍后重试......";
        }
        // 不为空 取出手机号查询用户id
        UserDO userDO = userMapper.queryByPhoneNumber(newStarVO.getPhoneNumber());
        if (userDO == null){
            return "请先登录再进行收藏操作！";
        }
        Integer userId = userDO.getId();
        // 查询收藏表是否存在对当前店铺收藏数据
        LambdaQueryWrapper<StarDO> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(StarDO::getUserId,userId).eq(StarDO::getStoreId,newStarVO.getStoreId());
        StarDO starDO = starMapper.selectOne(wrapper);


        return starDO == null ? "未收藏" : "已收藏";
    }

    // 根据手机号 查询所有收藏店铺
    @Override
    public List<StoreDO> getAll(String phoneNumber) {
        UserDO userDO = userMapper.queryByPhoneNumber(phoneNumber);
        if (userDO == null){
            return null;
        }
        LambdaQueryWrapper<StarDO> wrapper = new LambdaQueryWrapper<StarDO>().eq(StarDO::getUserId, userDO.getId());

        List<StarDO> starDOS = starMapper.selectList(wrapper);
        if (starDOS == null || starDOS.size() == 0){
            return null;
        }
        // 遍历集合获取店铺id 最后查询
        List<StoreDO> stores = new ArrayList<>();
        for (StarDO starDO : starDOS) {
            StoreDO storeDO = storeMapper.selectById(starDO.getStoreId());
            stores.add(storeDO);
        }

        return stores;
    }
}
