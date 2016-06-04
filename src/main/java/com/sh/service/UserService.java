package com.sh.service;

import com.github.pagehelper.PageHelper;
import com.sh.mapper.UserMapper;
import com.sh.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Optional;

/**
 * Created by zhaopin on 16/5/28.
 */

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    public List<User> getAll(User user) {
        if(user.getPage() != null && user.getRows() != null) {
            PageHelper.startPage(user.getPage(), user.getRows(), "id");
        }
        return userMapper.selectAll();
    }

    public Optional<User> getUserByMail(User user) {
        Example example = new Example(User.class);
        example.createCriteria().andEqualTo("mail", user.getEmail());
        List<User> users = userMapper.selectByExample(example);
        return users.stream().findFirst();
    }
}
