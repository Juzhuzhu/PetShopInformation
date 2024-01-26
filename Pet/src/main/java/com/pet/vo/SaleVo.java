package com.pet.vo;

import java.util.Date;

import com.pet.utils.PageRequest;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;


/**
 * (Sale)表实体类
 *
 * @author makejava
 * @since 2024-01-26 21:48:54
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Schema(title = "Sale实体类", name = "Sale")
public class SaleVo extends PageRequest implements Serializable {

    private static final long serialVersionUID = -95959795237705289L;

    /**
     * 销售记录ID（主键）
     */
    @Schema(title = "销售记录ID（主键）")
    @TableId(type = IdType.AUTO)
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

