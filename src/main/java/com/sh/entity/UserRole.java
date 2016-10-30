package com.sh.entity;

import java.util.Date;

/**
 * Created by zhaopin on 16/6/10.
 */
public class UserRole extends BaseEntity {
    public Long getUser() {
        return user;
    }

    public void setUser(Long user) {
        this.user = user;
    }

    public Long getRole() {
        return role;
    }

    public void setRole(Long role) {
        this.role = role;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    private Long user;

    private Long role;

    private Date created;


}
