package com.pet.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pet.mapper.ProductMapper;
import com.pet.entity.Product;
import com.pet.service.ProductService;
import org.springframework.stereotype.Service;

/**
 * (Product)表服务实现类
 *
 * @author makejava
 * @since 2024-01-26 21:48:53
 */
@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper, Product> implements ProductService {

}

