package com.meituan.service;


import com.meituan.model.DO.store.StoreDO;
import com.meituan.model.VO.user.UserLoginWithCodeReqVO;
import com.meituan.model.VO.user.UserLoginWithPasswordReqVO;

import java.util.List;

public interface StoreService {

    /**
     * 查询所有店铺
     * @return
     */
    List<StoreDO> getAll();

}
