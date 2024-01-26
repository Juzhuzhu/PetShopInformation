package com.pet.controller;


import com.pet.utils.Result;
import com.pet.utils.IdGenerator;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pet.vo.SaleVo;
import com.pet.entity.Sale;
import com.pet.service.SaleService;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeanUtils;

import java.io.Serializable;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import java.util.List;

import org.springframework.stereotype.Controller;


/**
 * (Sale)表控制层
 *
 * @author makejava
 * @since 2024-01-27 02:04:26
 */
@Controller
@RequestMapping("/sale")
@Api(tags = "Sale" + "模块")
public class SaleController {

    //id生成器
    IdGenerator idGenerator = IdGenerator.getInstance();

    /**
     * 服务对象
     */

    private final SaleService saleService;

    public SaleController(SaleService saleService) {
        this.saleService = saleService;
    }

    /**
     * 分页查询所有数据
     *
     * @param saleVo 查询实体
     * @return 所有数据
     */
    @PostMapping("/selectAll")
    @ResponseBody
    @ApiOperation(value = "分页查询所有数据")
    public Result selectAll(@RequestBody SaleVo saleVo) {
        Page<Sale> page = new Page<>(saleVo.getPageNumber(), saleVo.getPageSize());
        Sale sale = new Sale();
        BeanUtils.copyProperties(saleVo, sale);
        IPage<Sale> salePage = this.saleService.page(page, new QueryWrapper<>(sale));
        return Result.ok(salePage);
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
        return Result.ok(this.saleService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param saleVo 实体对象
     * @return 新增结果
     */
    @PostMapping("/insert")
    @ResponseBody
    @ApiOperation(value = "新增数据")
    public Result insert(@RequestBody SaleVo saleVo) {
        saleVo.setId(String.valueOf(idGenerator.nextId()));
        Sale sale = new Sale();
        BeanUtils.copyProperties(saleVo, sale);
        return Result.ok(this.saleService.save(sale));
    }

    /**
     * 修改数据
     *
     * @param saleVo 实体对象
     * @return 修改结果
     */
    @PostMapping("/update")
    @ResponseBody
    @ApiOperation(value = "修改数据")
    public Result update(@RequestBody SaleVo saleVo) {
        Sale sale = new Sale();
        BeanUtils.copyProperties(saleVo, sale);
        return Result.ok(this.saleService.updateById(sale));
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
        return Result.ok(this.saleService.removeById(id));
    }
}

