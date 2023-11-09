package com.meituan.model.DO.category;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.*;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@TableName("category")
public class CategoryDO implements Serializable {

    @TableId(type = IdType.AUTO)
    private Integer id;

    @TableField("store_id")
    private Integer storeId;

    private String name;
}
