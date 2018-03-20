package com.shenchao.springbootshirodemo.service;

import com.shenchao.springbootshirodemo.model.User;

public interface UserService {
    User findByUsername(String username);
}
