package com.pet.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.pet.entity.Admin;
import org.apache.ibatis.annotations.Mapper;

/**
 * (Admin)表数据库访问层
 *
 * @author makejava
 * @since 2024-01-26 21:48:53
 */
@Mapper
public interface AdminMapper extends BaseMapper<Admin> {

}

