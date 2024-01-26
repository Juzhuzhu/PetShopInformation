package com.pet.entity;

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
 * @since 2024-01-26 21:48:53
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Schema(title = "Customer实体类", name = "Customer")
public class Customer implements Serializable {

    private static final long serialVersionUID = 765955216007968765L;

    /**
     * 客户ID（主键）
     */
    @Schema(title = "客户ID（主键）")
    @TableId(type = IdType.AUTO)
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
     * 逻辑删除:0=未删除,1=已删除
     */
    @Schema(title = "逻辑删除:0=未删除,1=已删除")
    private Integer deleted;

}

