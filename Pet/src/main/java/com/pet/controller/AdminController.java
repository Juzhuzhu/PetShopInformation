package com.pet.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.pet.entity.Customer;
import com.pet.utils.Result;
import com.pet.utils.IdGenerator;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pet.vo.AdminVo;
import com.pet.entity.Admin;
import com.pet.service.AdminService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeanUtils;

import java.io.Serializable;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import java.util.List;
import java.util.Objects;

import org.springframework.stereotype.Controller;


/**
 * 管理员实体(Admin)表控制层
 *
 * @author makejava
 * @since 2024-01-31 22:57:45
 */
//解决跨域
@CrossOrigin
@Controller
@RequestMapping("/admin")
@Api(tags = "Admin" + "模块")
public class AdminController {

    //id生成器
    IdGenerator idGenerator = IdGenerator.getInstance();

    /**
     * 服务对象
     */

    private final AdminService adminService;

    public AdminController(AdminService adminService) {
        this.adminService = adminService;
    }

    /**
     * 分页查询所有数据
     *
     * @param adminVo 查询实体
     * @return 所有数据
     */
    @PostMapping("/selectAll")
    @ResponseBody
    @ApiOperation(value = "分页查询所有数据")
    public Result selectAll(@RequestBody AdminVo adminVo) {
        Page<Admin> page = new Page<>(adminVo.getPageNumber(), adminVo.getPageSize());
        Admin admin = new Admin();
        BeanUtils.copyProperties(adminVo, admin);
        LambdaQueryWrapper<Admin> wrapper = Wrappers.lambdaQuery();
        wrapper.orderByDesc(Admin::getUpdateTime);
        IPage<Admin> adminPage = this.adminService.page(page, wrapper);
        return Result.ok(adminPage);
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @PostMapping("/select")
    @ResponseBody
    @ApiOperation(value = "通过主键查询单条数据")
    public Result selectOne(@RequestParam("id") String id) {
        return Result.ok(this.adminService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param adminVo 实体对象
     * @return 新增结果
     */
    @PostMapping("/insert")
    @ResponseBody
    @ApiOperation(value = "新增数据")
    public Result insert(@RequestBody AdminVo adminVo) {
        adminVo.setId(String.valueOf(idGenerator.nextId()));
        Admin admin = new Admin();
        BeanUtils.copyProperties(adminVo, admin);
        return Result.ok(this.adminService.save(admin));
    }

    /**
     * 修改数据
     *
     * @param adminVo 实体对象
     * @return 修改结果
     */
    @PostMapping("/update")
    @ResponseBody
    @ApiOperation(value = "修改数据")
    public Result update(@RequestBody AdminVo adminVo) {
        Admin admin = new Admin();
        BeanUtils.copyProperties(adminVo, admin);
        return Result.ok(this.adminService.updateById(admin));
    }

    /**
     * 删除数据
     *
     * @param id 主键结合
     * @return 删除结果
     */
    @PostMapping("/delete")
    @ResponseBody
    @ApiOperation(value = "删除数据")
    public Result delete(@RequestParam("id") String id) {
        return Result.ok(this.adminService.removeById(id));
    }

    /**
     * 管理员登录
     *
     * @param admin 登录信息
     * @return
     */
    @Operation(summary = "用户登录", security = {@SecurityRequirement(name = "Authorization")})
    @ResponseBody
    @PostMapping("/login")
    Result<Admin> userLogin(@RequestBody Admin admin){
        Admin admin1 = adminService.login(admin);
        //为空表示登录失败
        if (Objects.isNull(admin1)){
            return Result.error(5000, "登录失败");
        }
        return Result.ok(admin1);
    }
}

