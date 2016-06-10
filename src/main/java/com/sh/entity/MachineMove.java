package com.sh.entity;

import java.util.Date;

/**
 * Created by zhaopin on 16/6/10.
 */
public class MachineMove extends BaseEntity {

    private Long machine;

    private Long user;

    private Date backTime;

    private Boolean isBack;

    private String describ;

    private Date created;

    public Long getMachine() {
        return machine;
    }

    public void setMachine(Long machine) {
        this.machine = machine;
    }

    public Long getUser() {
        return user;
    }

    public void setUser(Long user) {
        this.user = user;
    }

    public Date getBackTime() {
        return backTime;
    }

    public void setBackTime(Date backTime) {
        this.backTime = backTime;
    }

    public Boolean getIsBack() {
        return isBack;
    }

    public void setIsBack(Boolean isBack) {
        this.isBack = isBack;
    }

    public Date getCreated() {
        return created;
    }
    public void setCreated(Date created) {

        this.created = created;
    }

    public String getDescrib() {
        return describ;
    }

    public void setDescrib(String describ) {
        this.describ = describ;
    }
}
