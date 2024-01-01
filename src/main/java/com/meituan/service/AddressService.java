package com.meituan.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.meituan.model.Do.address.AddressDO;
import com.meituan.model.Vo.address.UserAddAddressReqVO;

import java.util.List;

public interface AddressService extends IService<AddressDO> {
    /**
     * 用户新增地址
     * @param userAddAddressReqVO
     * @return
     */
     String addAddress(UserAddAddressReqVO userAddAddressReqVO);


    /**
     * 根据用户获取地址
     * @param phoneNumber
     * @return
     */
     List<AddressDO> getAll(String phoneNumber);

     String updateDefaultAddress(AddressDO addressDO);

    AddressDO getDefault(String phoneNumber);
}
