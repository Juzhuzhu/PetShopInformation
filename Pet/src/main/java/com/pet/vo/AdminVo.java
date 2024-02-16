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
 * 管理员实体(Admin)表实体类
 *
 * @author makejava
 * @since 2024-02-07 22:56:01
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Schema(title = "Admin实体类", name = "Admin")
public class AdminVo extends PageRequest implements Serializable {

    private static final long serialVersionUID = 618008927716112552L;

    /**
     * 管理员id（主键）
     */
    @Schema(title = "管理员id（主键）")
    private String id;

    /**
     * 用户名
     */
    @Schema(title = "用户名")
    private String name;

    /**
     * 电话号码-用于登录账号
     */
    @Schema(title = "电话号码-用于登录账号")
    private String phoneNumber;

    /**
     * 密码
     */
    @Schema(title = "密码")
    private String password;

    /**
     * 头像图片地址
     */
    @Schema(title = "头像图片地址")
    private String headImgUrl;

    /**
     * 登录令牌
     */
    @Schema(title = "登录令牌")
    private String token;

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

