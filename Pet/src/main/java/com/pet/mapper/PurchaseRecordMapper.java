package com.pet.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import com.pet.entity.PurchaseRecord;

/**
 * (PurchaseRecord)表数据库访问层
 *
 * @author makejava
 * @since 2024-01-26 01:28:00
 */
@Mapper
public interface PurchaseRecordMapper extends BaseMapper<PurchaseRecord> {

}

