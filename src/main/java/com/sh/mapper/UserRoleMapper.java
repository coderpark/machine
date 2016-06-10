package com.sh.mapper;

import com.sh.common.MyMapper;
import com.sh.entity.User;

import java.util.List;

/**
 * Created by zhaopin on 16/6/10.
 */
public interface UserRoleMapper extends MyMapper<UserRoleMapper> {

    List<User> gerUsersByRole(Long roleId);
}
