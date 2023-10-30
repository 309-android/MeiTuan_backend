package com.meituan.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.meituan.model.DO.store.StoreDO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StoreMapper extends BaseMapper<StoreDO> {
}
