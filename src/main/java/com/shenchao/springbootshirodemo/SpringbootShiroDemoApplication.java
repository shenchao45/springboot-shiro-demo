package com.shenchao.springbootshirodemo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = {"com.shenchao.springbootshirodemo.mapper"})
public class SpringbootShiroDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootShiroDemoApplication.class, args);
	}
}
