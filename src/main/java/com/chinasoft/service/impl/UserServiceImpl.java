package com.chinasoft.service.impl;

import com.chinasoft.dao.IUserDao;
import com.chinasoft.domain.User;
import com.chinasoft.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserDao dao;

    @Override
    public List<User> findAll() {
        List<User> users = dao.findAll();
        return users;
    }

    @Override
    public void insertUser(User user) {
        System.out.println(user);
        dao.insertUser(user);
    }

}
