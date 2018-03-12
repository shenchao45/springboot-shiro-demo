package com.shenchao.springbootshirodemo.service;

import com.shenchao.springbootshirodemo.mapper.UserMapper;
import com.shenchao.springbootshirodemo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User findByUsername(String username) {
        return userMapper.findByUsername(username);
    }
}
