package com.pet.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;


/**
 * (Product)表实体类
 *
 * @author makejava
 * @since 2024-02-07 22:56:01
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Schema(title = "Product实体类", name = "Product")
public class Product implements Serializable {

    private static final long serialVersionUID = -93676878693858337L;

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
     * 创建时间
     */
    @Schema(title = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;

    /**
     * 更新时间
     */
    @Schema(title = "更新时间")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date updateTime;

    /**
     * 逻辑删除:0=未删除,1=已删除
     */
    @Schema(title = "逻辑删除:0=未删除,1=已删除")
    private Integer deleted;

}

