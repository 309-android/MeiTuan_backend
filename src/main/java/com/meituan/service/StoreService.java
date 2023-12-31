package com.meituan.service;


import com.meituan.model.Do.store.StoreDO;

import java.util.List;

public interface StoreService {

    /**
     * 查询所有店铺  若有分类则分类查
     * @return
     */
    List<StoreDO> get(String storeCategory);


    /**
     * 根据店铺id查询店铺
     * @param storeId
     * @return
     */
    StoreDO getById(String storeId);

    /**
     * 根据店铺名查询
     * @param searchMsg
     * @return
     */
    List<StoreDO> getByName(String searchMsg);
}
