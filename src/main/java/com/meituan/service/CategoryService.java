package com.meituan.service;


import com.meituan.model.Do.category.CategoryDO;

import java.util.List;

public interface CategoryService {

    /**
     * 根据店铺id获取分类
     * @param storeId
     * @return
     */
    List<CategoryDO> getAllByStoreId(String storeId);
}
