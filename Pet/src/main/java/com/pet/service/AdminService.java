package com.pet.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.pet.entity.Admin;

/**
 * (Admin)表服务接口
 *
 * @author makejava
 * @since 2024-01-26 21:48:53
 */
public interface AdminService extends IService<Admin> {

    /**
     * 管理员登录业务逻辑层
     *
     * @param admin  登录信息
     * @return 用户信息
     */
    Admin login(Admin admin);
}

