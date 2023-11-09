package com.meituan.service.Impl;


import com.meituan.mapper.StoreMapper;
import com.meituan.model.DO.store.StoreDO;
import com.meituan.model.VO.user.UserLoginWithCodeReqVO;
import com.meituan.model.VO.user.UserLoginWithPasswordReqVO;
import com.meituan.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StoreServiceImpl implements StoreService {

    @Autowired
    private StoreMapper storeMapper;

    /**
     * 查询所有店铺  若有分类则分类查
     * @return
     */
    @Override
    public List<StoreDO> get(String storeCategory) {
        List<StoreDO> storeDOS = storeMapper.getByStoreCategory(storeCategory);
        return storeDOS;
    }

    /**
     * 根据店铺id查询店铺
     * @param storeId
     * @return
     */
    @Override
    public StoreDO getById(String storeId) {
        return storeMapper.selectById(storeId);
    }
}
