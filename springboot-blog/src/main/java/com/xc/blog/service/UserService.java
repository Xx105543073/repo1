package com.xc.blog.service;

import com.xc.blog.po.User;

public interface UserService {

    User checkUser(String username, String password);
}
