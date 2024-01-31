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
 * (PurchaseRecord)表实体类
 *
 * @author makejava
 * @since 2024-01-30 21:59:23
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Schema(title = "PurchaseRecord实体类", name = "PurchaseRecord")
public class PurchaseRecordVo extends PageRequest implements Serializable {

    private static final long serialVersionUID = 625263551524237362L;

    /**
     * 购买记录ID（主键）
     */
    @Schema(title = "购买记录ID（主键）")
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
     * 购买数量
     */
    @Schema(title = "购买数量")
    private Integer quantity;

    /**
     * 购买时间（UTC时间）
     */
    @Schema(title = "购买时间（UTC时间）")
    private Date purchaseTime;

    /**
     * 逻辑删除:0=未删除,1=已删除
     */
    @Schema(title = "逻辑删除:0=未删除,1=已删除")
    private Integer deleted;

}

