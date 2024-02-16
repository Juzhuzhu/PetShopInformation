package com.pet.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pet.mapper.SaleMapper;
import com.pet.entity.Sale;
import com.pet.service.SaleService;
import com.pet.vo.EcharsVo;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * (Sale)表服务实现类
 *
 * @author makejava
 * @since 2024-01-26 21:48:54
 */
@Service
public class SaleServiceImpl extends ServiceImpl<SaleMapper, Sale> implements SaleService {

    private final SaleMapper saleMapper;

    public SaleServiceImpl(SaleMapper saleMapper) {
        this.saleMapper = saleMapper;
    }

    @Override
    public EcharsVo getEchars() {
        //查询所有销售日期当天的销售总额
        List<Sale> sales = saleMapper.getEchars();
        //x轴数据
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        List<String> xData = new ArrayList<>();
        //y轴数据
        List<BigDecimal> yData = new ArrayList<>();
        //遍历集合分别往x、y轴集合添加数据
        sales.forEach(sale -> {
            xData.add(formatter.format(sale.getSaleTime()));
            yData.add(sale.getTotalAmount());
        });
        //将vo对象返回
        EcharsVo echarsVo = new EcharsVo();
        echarsVo.setXData(xData);
        echarsVo.setYData(yData);
        if (xData.size() == yData.size()) {
            echarsVo.setDataCount(sales.size());
        }else {
            return null;
        }
        return echarsVo;
    }
}

