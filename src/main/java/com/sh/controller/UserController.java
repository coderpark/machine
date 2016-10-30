package com.sh.controller;

import com.github.pagehelper.PageInfo;
import com.sh.entity.User;
import com.sh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
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
        ModelAndView result = new ModelAndView("userList");
        List<User> userList = userService.getAll(user);
        result.addObject("pageInfo", new PageInfo<User>(userList));
        result.addObject("queryParam", user);
        result.addObject("page", user.getPage());
        result.addObject("rows", user.getRows());
        return result;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("id") Long userId) {
        ModelAndView result = new ModelAndView("editUser");
        User user = userService.getUserById(userId);
        result.addObject("user", user);
        return result;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(User user) {
        User curUser = userService.getUserById(user.getId());
        curUser.setEmail(user.getEmail());
        curUser.setName(user.getName());
        userService.saveOrUpdate(curUser);
        return "redirect:/all";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/login")
    public ModelAndView login(String username, String password, @SessionAttributes) {
        User curUser = userService.getUserByLogin(username);
        ModelAndView result;
        String errorMsg = "";
        if(curUser == null) {
            errorMsg = "用户不存在";
            result = new ModelAndView("login");
        } else {
            if(curUser.getPassword().equals(password)) {
                result = new ModelAndView("main");
            } else {
                errorMsg = "密码不正确";
                result = new ModelAndView("login");
            }
        }
        return result;
    }
}
