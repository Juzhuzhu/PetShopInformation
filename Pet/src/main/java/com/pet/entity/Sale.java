package com.pet.entity;

import java.util.Date;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;


/**
 * (Sale)表实体类
 *
 * @author makejava
 * @since 2024-01-30 21:59:23
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Schema(title = "Sale实体类", name = "Sale")
public class Sale implements Serializable {

    private static final long serialVersionUID = 893131555236334386L;

    /**
     * 销售记录ID（主键）
     */
    @Schema(title = "销售记录ID（主键）")
    private String id;

    /**
     * 商品ID
     */
    @Schema(title = "商品ID")
    private String productId;

    /**
     * 客户ID
     */
    @Schema(title = "客户ID")
    private String customerId;

    /**
     * 销售数量
     */
    @Schema(title = "销售数量")
    private Integer quantity;

    /**
     * 销售时间
     */
    @Schema(title = "销售时间")
    private Date saleTime;

    /**
     * 销售总额
     */
    @Schema(title = "销售总额")
    private Double totalAmount;

    /**
     * 逻辑删除:0=未删除,1=已删除
     */
    @Schema(title = "逻辑删除:0=未删除,1=已删除")
    private Integer deleted;

}

