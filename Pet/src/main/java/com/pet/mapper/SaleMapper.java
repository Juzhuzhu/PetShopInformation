package com.pet.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import com.pet.entity.Sale;

/**
 * (Sale)表数据库访问层
 *
 * @author makejava
 * @since 2024-01-26 21:48:54
 */
@Mapper
public interface SaleMapper extends BaseMapper<Sale> {

}

