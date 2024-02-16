package com.pet.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import com.pet.entity.Sale;

import java.util.List;

/**
 * (Sale)表数据库访问层
 *
 * @author makejava
 * @since 2024-01-26 21:48:54
 */
@Mapper
public interface SaleMapper extends BaseMapper<Sale> {

    /**
     * SQL语句：
     * SELECT
     *     DATE( sale_time ) as sale_time,
     *     SUM( total_amount ) as  total_amount
     * FROM
     *     sale
     * WHERE
     *     deleted = 0
     * GROUP BY
     *     sale_time;
     *
     * @return List<Sale>
     */
    List<Sale> getEchars();
}

