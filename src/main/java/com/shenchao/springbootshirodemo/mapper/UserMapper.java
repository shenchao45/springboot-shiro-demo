package com.shenchao.springbootshirodemo.mapper;

import com.shenchao.springbootshirodemo.model.User;
import org.apache.ibatis.annotations.Param;
public interface UserMapper {
    User findByUsername(@Param("username") String username);
}
