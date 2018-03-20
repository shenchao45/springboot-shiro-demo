package com.shenchao.springbootshirodemo.model;

import lombok.Data;

import java.util.HashSet;
import java.util.Set;

@Data
public class Role {
//    test1 edit
    private Integer rid;
    private String rname;
    private Set<Permission> permissions = new HashSet<>();
    private Set<User> users = new HashSet<>();
}
