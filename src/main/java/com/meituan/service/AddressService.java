package com.meituan.service;


import com.meituan.model.DO.address.AddressDO;
import com.meituan.model.DO.food.FoodDO;
import com.meituan.model.VO.address.UserAddAddressReqVO;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface AddressService {
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

}
