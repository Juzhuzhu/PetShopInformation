package com.pet.entity;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;


/**
 * (Product)表实体类
 *
 * @author makejava
 * @since 2024-01-30 21:59:22
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Schema(title = "Product实体类", name = "Product")
public class Product implements Serializable {

    private static final long serialVersionUID = -63481720544369469L;

    /**
     * 商品ID（主键）
     */
    @Schema(title = "商品ID（主键）")
    private String id;

    /**
     * 商品名称
     */
    @Schema(title = "商品名称")
    private String productName;

    /**
     * 价格
     */
    @Schema(title = "价格")
    private Double price;

    /**
     * 库存数量
     */
    @Schema(title = "库存数量")
    private Integer stock;

    /**
     * 商品描述
     */
    @Schema(title = "商品描述")
    private String description;

    /**
     * 逻辑删除:0=未删除,1=已删除
     */
    @Schema(title = "逻辑删除:0=未删除,1=已删除")
    private Integer deleted;

}

