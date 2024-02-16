package com.pet.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.pet.entity.Customer;
import com.pet.entity.Product;
import com.pet.service.CustomerService;
import com.pet.service.ProductService;
import com.pet.utils.Result;
import com.pet.utils.IdGenerator;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pet.vo.PurchaseRecordVo;
import com.pet.entity.PurchaseRecord;
import com.pet.service.PurchaseRecordService;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeanUtils;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import org.springframework.stereotype.Controller;

import java.util.List;


/**
 * (PurchaseRecord)表控制层
 *
 * @author makejava
 * @since 2024-01-27 02:04:25
 */
//解决跨域
@CrossOrigin
@Controller
@RequestMapping("/purchaseRecord")
@Api(tags = "PurchaseRecord" + "模块")
public class PurchaseRecordController {

    //id生成器
    IdGenerator idGenerator = IdGenerator.getInstance();

    /**
     * 服务对象
     */
    private final PurchaseRecordService purchaseRecordService;

    private final ProductService productService;

    private final CustomerService customerService;

    public PurchaseRecordController(PurchaseRecordService purchaseRecordService,
                                    ProductService productService,
                                    CustomerService customerService) {
        this.purchaseRecordService = purchaseRecordService;
        this.productService = productService;
        this.customerService = customerService;
    }

    /**
     * 分页查询所有数据
     *
     * @param purchaseRecordVo 查询实体
     * @return 所有数据
     */
    @PostMapping("/selectAll")
    @ResponseBody
    @ApiOperation(value = "分页查询所有数据")
    public Result selectAll(@RequestBody PurchaseRecordVo purchaseRecordVo) {
        Page<PurchaseRecord> page = new Page<>(purchaseRecordVo.getPageNumber(), purchaseRecordVo.getPageSize());
        PurchaseRecord purchaseRecord = new PurchaseRecord();
        BeanUtils.copyProperties(purchaseRecordVo, purchaseRecord);
        LambdaQueryWrapper<PurchaseRecord> wrapper = Wrappers.lambdaQuery();
        wrapper.orderByDesc(PurchaseRecord::getUpdateTime);
        IPage<PurchaseRecord> purchaseRecordPage = this.purchaseRecordService.page(page, wrapper);
        return Result.ok(purchaseRecordPage);
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
        return Result.ok(this.purchaseRecordService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param purchaseRecordVo 实体对象
     * @return 新增结果
     */
    @PostMapping("/insert")
    @ResponseBody
    @ApiOperation(value = "新增数据")
    public Result insert(@RequestBody PurchaseRecordVo purchaseRecordVo) {
        purchaseRecordVo.setId(String.valueOf(idGenerator.nextId()));
        PurchaseRecord purchaseRecord = new PurchaseRecord();
        BeanUtils.copyProperties(purchaseRecordVo, purchaseRecord);
        return Result.ok(this.purchaseRecordService.save(purchaseRecord));
    }

    /**
     * 修改数据
     *
     * @param purchaseRecordVo 实体对象
     * @return 修改结果
     */
    @PostMapping("/update")
    @ResponseBody
    @ApiOperation(value = "修改数据")
    public Result update(@RequestBody PurchaseRecordVo purchaseRecordVo) {
        PurchaseRecord purchaseRecord = new PurchaseRecord();
        BeanUtils.copyProperties(purchaseRecordVo, purchaseRecord);
        return Result.ok(this.purchaseRecordService.updateById(purchaseRecord));
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
        return Result.ok(this.purchaseRecordService.removeById(id));
    }

    /**
     * 查询所有商品id和名称
     *
     * @return
     */
    @GetMapping("/getProducts")
    @ResponseBody
    public Result<Product> getProducts() {
        BaseMapper<Product> baseMapper = productService.getBaseMapper();
        List<Product> products = baseMapper.selectList(null);
        return Result.ok(products);
    }

    /**
     * 查询所有商品id和名称
     *
     * @return
     */
    @GetMapping("/getCustomers")
    @ResponseBody
    public Result<Customer> getCustomers() {
        BaseMapper<Customer> baseMapper = customerService.getBaseMapper();
        List<Customer> customers = baseMapper.selectList(null);
        return Result.ok(customers);
    }
}

