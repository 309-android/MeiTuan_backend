package com.meituan.service.Impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.meituan.mapper.StarMapper;
import com.meituan.mapper.UserMapper;
import com.meituan.model.Do.star.StarDO;
import com.meituan.model.Do.user.UserDO;
import com.meituan.model.Vo.star.NewStarVO;
import com.meituan.service.StarService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class StarServiceImpl extends ServiceImpl<StarMapper, StarDO> implements StarService {

    @Autowired
    private StarMapper starMapper;
    @Autowired
    private UserMapper userMapper;

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
}
