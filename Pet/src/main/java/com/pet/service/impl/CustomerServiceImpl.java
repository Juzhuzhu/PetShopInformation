package com.pet.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pet.mapper.CustomerMapper;
import com.pet.entity.Customer;
import com.pet.service.CustomerService;
import org.springframework.stereotype.Service;

/**
 * (Customer)表服务实现类
 *
 * @author makejava
 * @since 2024-01-26 21:48:53
 */
@Service
public class CustomerServiceImpl extends ServiceImpl<CustomerMapper, Customer> implements CustomerService {

}

