package com.sh.model;

import com.sh.entity.Machine;
import com.sh.entity.Role;

import java.util.List;

/**
 * Created by zhaopin on 16/6/10.
 */
public class MoveVO {

    private List<Role> roles;

    private Machine machine;

    public MoveVO(List<Role> roles, Machine machine) {
        this.roles = roles;
        this.machine = machine;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    public Machine getMachine() {
        return machine;
    }

    public void setMachine(Machine machine) {
        this.machine = machine;
    }
}
