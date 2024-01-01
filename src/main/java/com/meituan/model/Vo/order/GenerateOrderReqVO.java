package com.meituan.model.Vo.order;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class GenerateOrderReqVO {

    private Integer storeId;
    private Integer[] ids;
    private String phoneNumber;
}
