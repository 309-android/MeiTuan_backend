package com.meituan.mapper;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.meituan.model.Do.user.UserCodeDO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserCodeMapper extends BaseMapper<UserCodeDO> {

    default UserCodeDO queryByPhoneNumber(String phoneNumber){
        // 构造查询条件
        LambdaQueryWrapper<UserCodeDO> wrapper = new LambdaQueryWrapper<>();
        // 根据手机号码查询
        wrapper.eq(phoneNumber!=null, UserCodeDO::getPhoneNumber,phoneNumber);
        UserCodeDO u = selectOne(wrapper);
        return u;
    }

    default void updateCodeByPhoneNumber(String phoneNumber, String code){
        // 构造更新条件
        LambdaQueryWrapper<UserCodeDO> wrapper = new LambdaQueryWrapper<>();
        // 根据手机号码查询
        wrapper.eq(phoneNumber != null,UserCodeDO::getPhoneNumber,phoneNumber);
        // 查出缓存表
        UserCodeDO userCodeDO = selectOne(wrapper);
        userCodeDO.setCode(code);
        // 更新code
        LambdaUpdateWrapper<UserCodeDO> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(UserCodeDO::getPhoneNumber,phoneNumber);
        update(userCodeDO,updateWrapper);
    }
}
