package com.chinasoft.controller;

import com.chinasoft.domain.Table;
import com.chinasoft.domain.User;
import com.chinasoft.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping("findAll")
    @ResponseBody
    public Table<User> findAll(){
        List<User> users = userService.findAll();
        Table<User> table = new Table<>();
        table.setCode(0);
        table.setData(users);
        table.setCount(50);
        return table;
    }

    @RequestMapping("insertUser")
    public String insertUser(User user){
        userService.insertUser(user);
        return "message";
    }
}
