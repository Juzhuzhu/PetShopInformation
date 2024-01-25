package com.pet.controller;


import com.pet.utils.Result;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pet.entity.Customer;
import com.pet.service.CustomerService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (Customer)表控制层
 *
 * @author makejava
 * @since 2024-01-26 01:27:59
 */
@RestController
@RequestMapping("customer")
public class CustomerController {
    /**
     * 服务对象
     */
    @Resource
    private CustomerService customerService;

    /**
     * 分页查询所有数据
     *
     * @param page     分页对象
     * @param customer 查询实体
     * @return 所有数据
     */
    @GetMapping
    public Result selectAll(Page<Customer> page, Customer customer) {
        return Result.ok(this.customerService.page(page, new QueryWrapper<>(customer)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public Result selectOne(@PathVariable Serializable id) {
        return Result.ok(this.customerService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param customer 实体对象
     * @return 新增结果
     */
    @PostMapping
    public Result insert(@RequestBody Customer customer) {
        return Result.ok(this.customerService.save(customer));
    }

    /**
     * 修改数据
     *
     * @param customer 实体对象
     * @return 修改结果
     */
    @PutMapping
    public Result update(@RequestBody Customer customer) {
        return Result.ok(this.customerService.updateById(customer));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public Result delete(@RequestParam("idList") List<Long> idList) {
        return Result.ok(this.customerService.removeByIds(idList));
    }
}

