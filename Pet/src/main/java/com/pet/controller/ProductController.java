package com.pet.controller;


import cn.hutool.core.io.IoUtil;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
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
import java.io.IOException;
import java.io.OutputStream;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import java.net.URLEncoder;
import java.util.List;
import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpServletResponse;


/**
 * (Product)表控制层
 *
 * @author makejava
 * @since 2024-01-27 02:04:25
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
    @PostMapping("/selectAll")
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
    @PostMapping("/select")
    @ResponseBody
    @ApiOperation(value = "通过主键查询单条数据")
    public Result selectOne(@RequestParam("id") String id) {
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
    @PostMapping("/delete")
    @ResponseBody
    @ApiOperation(value = "删除数据")
    public Result delete(@RequestParam("id") String id) {
        return Result.ok(this.productService.removeById(id));
    }

    /**
     * excel表格导出
     *  没问题
     * @param response 响应体
     */
    @GetMapping("/export")
    public void exportExcel(HttpServletResponse response) throws IOException {
        /**
         * Hutool将Excel写出封装为ExcelWriter，原理为包装了Workbook对象，每次调用merge（合并单元格）或者write（写出数据）方法后只是将数据写入到Workbook，并不写出文件，只有调用flush或者close方法后才会真正写出文件。
         *
         * 由于机制原因，在写出结束后需要关闭ExcelWriter对象，调用close方法即可关闭，此时才会释放Workbook对象资源，否则带有数据的Workbook一直会常驻内存。
         */
        //获取数据集合
        List<Product> products = productService.getBaseMapper().selectList(new QueryWrapper<>(null));
        //获取ExcelWriter对象导出.xlsx文件
        //注意 ExcelUtil.getWriter()默认创建xls格式的Excel，因此写出到客户端也需要自定义文件名为XXX.xls，否则会出现文件损坏的提示。 若想生成xlsx格式，请使用ExcelUtil.getWriter(true)创建。
        ExcelWriter writer = ExcelUtil.getWriter(true);
        //设置sheet名称
        writer.renameSheet(0,"商品库存");
        //自定义标题别名
        writer.addHeaderAlias("id", "商品ID");
        writer.addHeaderAlias("productName", "商品名称");
        writer.addHeaderAlias("price", "价格");
        writer.addHeaderAlias("stock", "库存数量");
        writer.addHeaderAlias("description", "商品描述");
        // 默认的，未添加alias的属性也会写出，如果想只写出加了别名的字段，可以调用此方法排除之
        writer.setOnlyAlias(true);
        //设置列宽
        writer.setColumnWidth(0,20);
        writer.setColumnWidth(1,10);
        writer.setColumnWidth(2,15);
        writer.setColumnWidth(3,30);
        writer.setColumnWidth(4,40);
        //合并单元格后标题行，使用默认标题样式
        writer.merge(4, "商品清单");
        //写出数据到Workbook
        writer.write(products, true);
        //设置响应头
        String fileName = URLEncoder.encode("库存报表", "UTF-8").replaceAll("\\+", "%20");
        // 设置响应体与响应头
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        //Content-Disposition是MIME协议的拓展，MIME协议指示MIME用户代理如何显示附加的文件
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName + ".xlsx");
        OutputStream outputStream = response.getOutputStream();
        //数据写出并关闭流
        writer.flush(outputStream, true);
        writer.close();
        IoUtil.close(outputStream);
    }
}

