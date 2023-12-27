package com.meituan.mapper;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.meituan.model.Do.food.FoodDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FoodMapper extends BaseMapper<FoodDO> {

    /**
     * 根据店铺id获取菜品
     * @param storeId
     * @return
     */
    default List<FoodDO> getByStoreId(String storeId){
        //  构造查询条件
        LambdaQueryWrapper<FoodDO> wrapper = new LambdaQueryWrapper<>();

        wrapper.eq(!"".equals(storeId),FoodDO::getStoreId,storeId);

        return selectList(wrapper);
    }

    default List<FoodDO> getByCategoryId(String categoryId){
        //  构造查询条件
        LambdaQueryWrapper<FoodDO> wrapper = new LambdaQueryWrapper<>();

        wrapper.eq(!"".equals(categoryId),FoodDO::getCategoryId,categoryId);

        return selectList(wrapper);
    }
}
