package com.sh.entity;

import java.util.Date;

/**
 * Created by zhaopin on 16/6/10.
 */

public class Role extends BaseEntity {

    private String name;

    private Date created;

    private Long pid;


    public String getName() {
        return name;
    }

    public Long getPid() {
        return pid;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }
}
