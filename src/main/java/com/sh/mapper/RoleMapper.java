package com.sh.mapper;

import com.sh.common.MyMapper;
import com.sh.entity.Role;

import java.util.List;

/**
 * Created by zhaopin on 16/6/10.
 */
public interface RoleMapper extends MyMapper<Role> {

    List<Role> getRoles(Long id);
}
