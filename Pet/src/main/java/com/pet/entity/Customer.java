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
 * (Customer)表实体类
 *
 * @author makejava
 * @since 2024-01-26 01:27:59
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("")
public class Customer implements Serializable {

    private static final long serialVersionUID = 943758212762908239L;

    /**
     * 客户ID（主键）
     */
    @ApiModelProperty(value = "客户ID（主键）")
    @TableId(type = IdType.AUTO)
    private String id;

    /**
     * 客户姓名
     */
    @ApiModelProperty(value = "客户姓名")
    private String name;

    /**
     * 电话号码
     */
    @ApiModelProperty(value = "电话号码")
    private String phone;

    /**
     * 邮箱
     */
    @ApiModelProperty(value = "邮箱")
    private String email;

    /**
     * 地址
     */
    @ApiModelProperty(value = "地址")
    private String address;

    /**
     * 逻辑删除:0=未删除,1=已删除
     */
    @ApiModelProperty(value = "逻辑删除:0=未删除,1=已删除")
    private Integer deleted;

}

