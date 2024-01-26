package com.pet.controller;


import com.pet.utils.Result;
import com.pet.utils.IdGenerator;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pet.vo.CustomerVo;
import com.pet.entity.Customer;
import com.pet.service.CustomerService;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeanUtils;

import java.io.Serializable;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import java.util.List;

import org.springframework.stereotype.Controller;


/**
 * (Customer)表控制层
 *
 * @author makejava
 * @since 2024-01-26 21:48:53
 */
@Controller
@RequestMapping("/customer")
@Api(tags = "Customer" + "模块")
public class CustomerController {

    //id生成器
    IdGenerator idGenerator = IdGenerator.getInstance();

    /**
     * 服务对象
     */

    private final CustomerService customerService;

    public CustomerController(CustomerService customerService) {
        this.customerService = customerService;
    }

    /**
     * 分页查询所有数据
     *
     * @param customerVo 查询实体
     * @return 所有数据
     */
    @PostMapping("/select")
    @ResponseBody
    @ApiOperation(value = "分页查询所有数据")
    public Result selectAll(@RequestBody CustomerVo customerVo) {
        Page<Customer> page = new Page<>(customerVo.getPageNumber(), customerVo.getPageSize());
        Customer customer = new Customer();
        BeanUtils.copyProperties(customerVo, customer);
        IPage<Customer> customerPage = this.customerService.page(page, new QueryWrapper<>(customer));
        return Result.ok(customerPage);
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("/{id}")
    @ResponseBody
    @ApiOperation(value = "通过主键查询单条数据")
    public Result selectOne(@RequestParam("id") Serializable id) {
        return Result.ok(this.customerService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param customerVo 实体对象
     * @return 新增结果
     */
    @PostMapping("/insert")
    @ResponseBody
    @ApiOperation(value = "新增数据")
    public Result insert(@RequestBody CustomerVo customerVo) {
        customerVo.setId(String.valueOf(idGenerator.nextId()));
        Customer customer = new Customer();
        BeanUtils.copyProperties(customerVo, customer);
        return Result.ok(this.customerService.save(customer));
    }

    /**
     * 修改数据
     *
     * @param customerVo 实体对象
     * @return 修改结果
     */
    @PostMapping("/update")
    @ResponseBody
    @ApiOperation(value = "修改数据")
    public Result update(@RequestBody CustomerVo customerVo) {
        Customer customer = new Customer();
        BeanUtils.copyProperties(customerVo, customer);
        return Result.ok(this.customerService.updateById(customer));
    }

    /**
     * 删除数据
     *
     * @param id 主键结合
     * @return 删除结果
     */
    @PostMapping("/delete/{id}")
    @ResponseBody
    @ApiOperation(value = "删除数据")
    public Result delete(@RequestParam("id") String id) {
        return Result.ok(this.customerService.removeById(id));
    }
}

