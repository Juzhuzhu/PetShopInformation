package com.pet.entity;

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
 * (Product)表实体类
 *
 * @author makejava
 * @since 2024-01-26 01:27:59
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("")
public class Product implements Serializable {

    private static final long serialVersionUID = 193446430598897077L;

    /**
     * 商品ID（主键）
     */
    @ApiModelProperty(value = "商品ID（主键）")
    @TableId(type = IdType.AUTO)
    private String id;

    /**
     * 商品名称
     */
    @ApiModelProperty(value = "商品名称")
    private String productName;

    /**
     * 价格
     */
    @ApiModelProperty(value = "价格")
    private Double price;

    /**
     * 库存数量
     */
    @ApiModelProperty(value = "库存数量")
    private Integer stock;

    /**
     * 商品描述
     */
    @ApiModelProperty(value = "商品描述")
    private String description;

    /**
     * 逻辑删除:0=未删除,1=已删除
     */
    @ApiModelProperty(value = "逻辑删除:0=未删除,1=已删除")
    private Integer deleted;

}

