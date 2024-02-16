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
 * (Customer)表实体类
 *
 * @author makejava
 * @since 2024-02-07 22:39:52
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Schema(title = "Customer实体类", name = "Customer")
public class CustomerVo extends PageRequest implements Serializable {

    private static final long serialVersionUID = 302363581019097693L;

    /**
     * 客户ID（主键）
     */
    @Schema(title = "客户ID（主键）")
    private String id;

    /**
     * 客户姓名
     */
    @Schema(title = "客户姓名")
    private String name;

    /**
     * 电话号码
     */
    @Schema(title = "电话号码")
    private String phone;

    /**
     * 邮箱
     */
    @Schema(title = "邮箱")
    private String email;

    /**
     * 地址
     */
    @Schema(title = "地址")
    private String address;

    /**
     * 创建时间
     */
    @Schema(title = "创建时间")
    private Date createTime;

    /**
     * 更新时间
     */
    @Schema(title = "更新时间")
    private Date updateTime;

    /**
     * 逻辑删除:0=未删除,1=已删除
     */
    @Schema(title = "逻辑删除:0=未删除,1=已删除")
    private Integer deleted;

}

