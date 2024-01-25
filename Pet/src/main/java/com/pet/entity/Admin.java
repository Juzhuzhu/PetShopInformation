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
 * (Admin)表实体类
 *
 * @author makejava
 * @since 2024-01-26 01:27:58
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("")
public class Admin implements Serializable {

    private static final long serialVersionUID = -38691266095892678L;

    /**
     * 管理员id（主键）
     */
    @ApiModelProperty(value = "管理员id（主键）")
    @TableId(type = IdType.AUTO)
    private String id;

    /**
     * 用户名
     */
    @ApiModelProperty(value = "用户名")
    private String username;

    /**
     * 密码
     */
    @ApiModelProperty(value = "密码")
    private String password;

    /**
     * 逻辑删除:0=未删除,1=已删除
     */
    @ApiModelProperty(value = "逻辑删除:0=未删除,1=已删除")
    private Integer deleted;

}

