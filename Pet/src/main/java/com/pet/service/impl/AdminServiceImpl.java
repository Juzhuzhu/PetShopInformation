package com.pet.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pet.mapper.AdminMapper;
import com.pet.entity.Admin;
import com.pet.service.AdminService;
import org.springframework.stereotype.Service;

/**
 * (Admin)表服务实现类
 *
 * @author makejava
 * @since 2024-01-26 21:48:53
 */
@Service
public class AdminServiceImpl extends ServiceImpl<AdminMapper, Admin> implements AdminService {

}

