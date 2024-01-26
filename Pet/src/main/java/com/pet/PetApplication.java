package com.pet;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
/**
 * 项目启动类
 * <p>
 * Create at 2024/01/26 17:17
 *
 * @author java
 * @version 1.0.0, 2024/01/26
 * @since 1.0.0
 */
@SpringBootApplication
@EnableTransactionManagement
@EnableWebMvc
public class PetApplication {
    public static void main(String[] args) {
        SpringApplication.run(PetApplication.class, args);
    }
}
