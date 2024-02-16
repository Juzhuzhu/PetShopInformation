package com.pet.handler;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.util.Date;

/**
 * 拦截sql语句进行自动填充字段
 * <p>
 * Create at 2023/02/25 22:06
 *
 * @author 罗康明
 * @version 1.0.0, 2023/02/25
 * @since 1.0.0
 */
@Component
public class MybatisMetaObjectHandler implements MetaObjectHandler {

    /**
     * 东八区ZoneOffset常量
     */
    public static final ZoneOffset EIGHTH_TIME_ZONE = ZoneOffset.ofHours(8);

    /**
     * 插入时自动填充字段
     *
     * @param metaObject MetaObject
     */
    @Override
    public void insertFill(MetaObject metaObject) {
        //插入东八区时间
        Date date = new Date();
        this.setFieldValByName("createTime", date, metaObject);
        this.setFieldValByName("updateTime", date, metaObject);
    }

    /**
     * 更新时自动填充字段
     *
     * @param metaObject MetaObject
     */
    @Override
    public void updateFill(MetaObject metaObject) {
        //插入东八区时间
//        LocalDateTime now = LocalDateTime.now(EIGHTH_TIME_ZONE);
        Date now = new Date();
        this.setFieldValByName("updateTime", now, metaObject);
    }
}
