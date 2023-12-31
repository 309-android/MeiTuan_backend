package com.meituan.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.meituan.model.Do.star.StarDO;
import com.meituan.model.Do.store.StoreDO;
import com.meituan.model.Vo.star.NewStarVO;

import java.util.List;

public interface StarService extends IService<StarDO> {
    /**
     * 收藏当前店铺
     * @param newStarVO
     * @return
     */
    String newStar(NewStarVO newStarVO);

    /**
     * 查询用户是否收藏当前店铺
     * @param newStarVO
     * @return
     */
    String isStarred(NewStarVO newStarVO);

    List<StoreDO> getAll(String phoneNumber);
}
