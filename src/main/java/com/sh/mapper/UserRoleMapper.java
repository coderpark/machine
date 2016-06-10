package com.sh.mapper;

import com.sh.common.MyMapper;
import com.sh.entity.User;
import com.sh.entity.UserRole;

import java.util.List;

/**
 * Created by zhaopin on 16/6/10.
 */
public interface UserRoleMapper extends MyMapper<UserRole> {

    List<User> gerUsersByRole(Long roleId);
}
