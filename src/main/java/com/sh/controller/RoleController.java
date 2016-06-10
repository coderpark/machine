package com.sh.controller;

import com.sh.common.ReturnT;
import com.sh.entity.Role;
import com.sh.entity.User;
import com.sh.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by zhaopin on 16/6/10.
 */
@RestController
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @RequestMapping(value = "/{roleId}/users", method = RequestMethod.GET)
    @ResponseBody
    public ReturnT<List<User>> getUsersByRole(@PathVariable("roleId") Role role) {
        List<User> users = roleService.getUsersByRole(role.getId());
        return new ReturnT<List<User>>(users);
    }
}
