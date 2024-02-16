package com.pet.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Echars图表的数据
 * <p>
 * Create at 2024/02/16 17:14
 *
 * @author 罗康明
 * @version 1.0.0, 2024/02/16
 * @since 1.0.0
 */
@Setter
@Getter
@ToString
public class EcharsVo implements Serializable {
    /**
     * x轴数据
     */
    private List<String> xData;

    /**
     * y轴数据
     */
    private List<BigDecimal> yData;

    /**
     * 总记录数
     */
    private Integer dataCount;
}
