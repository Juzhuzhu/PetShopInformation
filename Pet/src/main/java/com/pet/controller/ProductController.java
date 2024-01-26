package com.pet.controller;


import com.pet.utils.Result;
import com.pet.utils.IdGenerator;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pet.vo.ProductVo;
import com.pet.entity.Product;
import com.pet.service.ProductService;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeanUtils;

import java.io.Serializable;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import java.util.List;

import org.springframework.stereotype.Controller;


/**
 * (Product)表控制层
 *
 * @author makejava
 * @since 2024-01-26 21:48:53
 */
@Controller
@RequestMapping("/product")
@Api(tags = "Product" + "模块")
public class ProductController {

    //id生成器
    IdGenerator idGenerator = IdGenerator.getInstance();

    /**
     * 服务对象
     */

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    /**
     * 分页查询所有数据
     *
     * @param productVo 查询实体
     * @return 所有数据
     */
    @PostMapping("/select")
    @ResponseBody
    @ApiOperation(value = "分页查询所有数据")
    public Result selectAll(@RequestBody ProductVo productVo) {
        Page<Product> page = new Page<>(productVo.getPageNumber(), productVo.getPageSize());
        Product product = new Product();
        BeanUtils.copyProperties(productVo, product);
        IPage<Product> productPage = this.productService.page(page, new QueryWrapper<>(product));
        return Result.ok(productPage);
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
        return Result.ok(this.productService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param productVo 实体对象
     * @return 新增结果
     */
    @PostMapping("/insert")
    @ResponseBody
    @ApiOperation(value = "新增数据")
    public Result insert(@RequestBody ProductVo productVo) {
        productVo.setId(String.valueOf(idGenerator.nextId()));
        Product product = new Product();
        BeanUtils.copyProperties(productVo, product);
        return Result.ok(this.productService.save(product));
    }

    /**
     * 修改数据
     *
     * @param productVo 实体对象
     * @return 修改结果
     */
    @PostMapping("/update")
    @ResponseBody
    @ApiOperation(value = "修改数据")
    public Result update(@RequestBody ProductVo productVo) {
        Product product = new Product();
        BeanUtils.copyProperties(productVo, product);
        return Result.ok(this.productService.updateById(product));
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
        return Result.ok(this.productService.removeById(id));
    }
}

