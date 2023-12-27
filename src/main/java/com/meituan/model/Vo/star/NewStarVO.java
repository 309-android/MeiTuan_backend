package com.meituan.model.Vo.star;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class NewStarVO {

    private String phoneNumber;

    private String storeId;
}
