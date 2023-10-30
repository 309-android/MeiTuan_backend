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
     * 查询所有店铺
     * @return
     */
    @Override
    public List<StoreDO> getAll() {
        List<StoreDO> storeDOS = storeMapper.selectList(null);
        return storeDOS;
    }
}
