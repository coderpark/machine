package com.sh.model;

import com.sh.entity.BaseEntity;

import java.util.Date;

/**
 * Created by zhaopin on 16/6/10.
 */
public class MachineMoveVO extends BaseEntity {


    private String userName;

    private String machineName;

    private Date backTime;

    private Boolean isBack;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMachineName() {
        return machineName;
    }

    public void setMachineName(String machineName) {
        this.machineName = machineName;
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
}
