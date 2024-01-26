package com.pet.vo;

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
 * (Admin)表实体类
 *
 * @author makejava
 * @since 2024-01-26 21:48:53
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Schema(title = "Admin实体类", name = "Admin")
public class AdminVo extends PageRequest implements Serializable {

    private static final long serialVersionUID = -20590046137869828L;

    /**
     * 管理员id（主键）
     */
    @Schema(title = "管理员id（主键）")
    @TableId(type = IdType.AUTO)
    private String id;

    /**
     * 用户名
     */
    @Schema(title = "用户名")
    private String username;

    /**
     * 密码
     */
    @Schema(title = "密码")
    private String password;

    /**
     * 逻辑删除:0=未删除,1=已删除
     */
    @Schema(title = "逻辑删除:0=未删除,1=已删除")
    private Integer deleted;

}

