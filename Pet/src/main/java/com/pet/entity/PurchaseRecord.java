package com.pet.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;


/**
 * (PurchaseRecord)表实体类
 *
 * @author makejava
 * @since 2024-01-26 01:28:00
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("")
public class PurchaseRecord implements Serializable {

    private static final long serialVersionUID = 139882384362995914L;

    /**
     * 购买记录ID（主键）
     */
    @ApiModelProperty(value = "购买记录ID（主键）")
    @TableId(type = IdType.AUTO)
    private String id;

    /**
     * 商品ID
     */
    @ApiModelProperty(value = "商品ID")
    private String productId;

    /**
     * 客户ID
     */
    @ApiModelProperty(value = "客户ID")
    private String customerId;

    /**
     * 购买数量
     */
    @ApiModelProperty(value = "购买数量")
    private Integer quantity;

    /**
     * 购买时间（UTC时间）
     */
    @ApiModelProperty(value = "购买时间（UTC时间）")
    private Date purchaseTime;

    /**
     * 逻辑删除:0=未删除,1=已删除
     */
    @ApiModelProperty(value = "逻辑删除:0=未删除,1=已删除")
    private Integer deleted;

}

