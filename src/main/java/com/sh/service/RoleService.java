package com.sh.service;

import com.sh.entity.Role;
import com.sh.entity.User;
import com.sh.mapper.RoleMapper;
import com.sh.mapper.UserRoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhaopin on 16/6/10.
 */
@Service
public class RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private UserRoleMapper userRoleMapper;

    public List<Role> getAllRoles() {
        return roleMapper.selectAll();
    }

    public List<User> getUsersByRole(Long roleId) {
        return userRoleMapper.gerUsersByRole(roleId);
    }
}
