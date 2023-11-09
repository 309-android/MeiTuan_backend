package com.meituan.mapper;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.meituan.model.DO.store.StoreDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface StoreMapper extends BaseMapper<StoreDO> {

    /**
     * 店铺分类查询
     * @param storeCategory
     * @return
     */
    default List<StoreDO> getByStoreCategory(String storeCategory) {
        // 构造查询条件
        LambdaQueryWrapper<StoreDO> wrapper = new LambdaQueryWrapper<>();

        wrapper.eq(!"".equals(storeCategory), StoreDO::getStoreCategory, storeCategory);

        return selectList(wrapper);
    }
}
