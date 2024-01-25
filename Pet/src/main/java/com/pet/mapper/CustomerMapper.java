package com.pet.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import com.pet.entity.Customer;

/**
 * (Customer)表数据库访问层
 *
 * @author makejava
 * @since 2024-01-26 01:27:59
 */
@Mapper
public interface CustomerMapper extends BaseMapper<Customer> {

}
