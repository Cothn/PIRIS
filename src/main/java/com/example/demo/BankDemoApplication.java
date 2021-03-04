package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import com.example.demo.config.HibernateConfig;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.resource.ResourceHttpRequestHandler;


@SpringBootApplication(exclude = HibernateJpaAutoConfiguration.class)
public class BankDemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(BankDemoApplication.class, args);
    }


}
