package com.sh.entity;

import java.util.Date;

/**
 * Created by zhaopin on 16/6/10.
 */
public class MachineMove extends BaseEntity {

    private Long machine;

    private Long curUser;

    private Date backTime;

    private Boolean isBack;

    private Date created;

    public Long getMachine() {
        return machine;
    }

    public void setMachine(Long machine) {
        this.machine = machine;
    }

    public Long getCurUser() {
        return curUser;
    }

    public void setCurUser(Long curUser) {
        this.curUser = curUser;
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
}
