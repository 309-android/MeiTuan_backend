package com.meituan.service;


import com.meituan.model.DO.store.StoreDO;
import com.meituan.model.VO.user.UserLoginWithCodeReqVO;
import com.meituan.model.VO.user.UserLoginWithPasswordReqVO;

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
}
