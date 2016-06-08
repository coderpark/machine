package com.sh.controller;

import com.github.pagehelper.PageInfo;
import com.sh.entity.User;
import com.sh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by zhaopin on 16/5/29.
 */
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/all")
    public ModelAndView getAll(User user) {
        ModelAndView result = new ModelAndView("index");
        List<User> userList = userService.getAll(user);
        result.addObject("pageInfo", new PageInfo<User>(userList));
        result.addObject("queryParam", user);
        result.addObject("page", user.getPage());
        result.addObject("rows", user.getRows());
        return result;
    }
}
