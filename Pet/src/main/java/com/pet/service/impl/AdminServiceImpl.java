package com.pet.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.google.common.base.Preconditions;
import com.pet.entity.Admin;
import com.pet.mapper.AdminMapper;
import com.pet.service.AdminService;
import com.pet.utils.JwtUtils;
import org.springframework.stereotype.Service;

import java.util.Objects;

/**
 * (Admin)表服务实现类
 *
 * @author makejava
 * @since 2024-01-26 21:48:53
 */
@Service
public class AdminServiceImpl extends ServiceImpl<AdminMapper, Admin> implements AdminService {

    //头像默认链接
    public static final String DEFAULT_HEAD_IMG_URL = "https://lkm191.oss-cn-guangzhou.aliyuncs.com/Screenshot_20200827_231650.jpg";

    private final AdminMapper adminMapper;

    public AdminServiceImpl(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    @Override
    public Admin login(Admin admin) {
        //校验账号密码是否一致
        LambdaQueryWrapper<Admin> wrapper = Wrappers.lambdaQuery();
        wrapper.eq(admin.getPhoneNumber() != null, Admin::getPhoneNumber, admin.getPhoneNumber())
                .eq(admin.getPassword() != null, Admin::getPassword, admin.getPassword());
        Admin resultAdmin = adminMapper.selectOne(wrapper);
        //如果对象为空表示登录失败，账号或密码有误
        if (Objects.isNull(resultAdmin)) {
            return null;
        }
        //生成token
        String token = JwtUtils.createToken(resultAdmin.getId(), resultAdmin.getName());
        resultAdmin.setToken(token);
        //如果没有头像则设置默认头像
        if (resultAdmin.getHeadImgUrl() == null) {
            resultAdmin.setHeadImgUrl(DEFAULT_HEAD_IMG_URL);
        }
        //保存token
        Admin saveTokenObject = new Admin();
        saveTokenObject.setId(resultAdmin.getId());
        saveTokenObject.setToken(token);
        adminMapper.updateById(saveTokenObject);
        //登录对象返回
        return resultAdmin;
    }
}

