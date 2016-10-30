package com.sh.service;

import com.github.pagehelper.PageHelper;
import com.sh.entity.User;
import com.sh.mapper.UserMapper;
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

    @Autowired
    private RoleService roleService;


    public List<User> getAll(User user) {
        if(user.getPage() != null && user.getRows() != null) {
            PageHelper.startPage(user.getPage(), user.getRows(), "id");
        }
        return userMapper.selectAll();
    }

    public User getUserById(Long id) {
        return userMapper.selectByPrimaryKey(id);
    }

    public void saveOrUpdate(User user) {
        if(user.getId() != null && user.getId() > 0L) {
            userMapper.updateByPrimaryKey(user);
        } else {
            userMapper.insert(user);
        }
    }

    public Optional<User> getUserByMail(User user) {
        Example example = new Example(User.class);
        example.createCriteria().andEqualTo("mail", user.getEmail());
        List<User> users = userMapper.selectByExample(example);
        return users.stream().findFirst();
    }

    public User getUserByLogin(String loginname) {
        Example ex = new Example(User.class);
        ex.createCriteria().andEqualTo("loginname", loginname);
        List<User> users = userMapper.selectByExample(ex);
        if(users == null || users.size() == 0) {
            return null;
        } else return users.get(0);
    }
}
