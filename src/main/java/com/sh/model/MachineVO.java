package com.sh.model;

import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * Created by zhaopin on 16/6/4.
 */
public class MachineVO {

    @NotNull(message = "请填写设备名")
    private String name;

    private String serial;

    private String assetCode;

    @NotNull(message = "请填写设备单位")
    private String unit;

    private String factoryTyp;

    @NotNull(message = "请填写设备购买日期")
    private Date buyDate;

    private Date fixDate;

    @NotNull(message = "请填写设备数量")
    @Range(min = 1, message = "至少为1")
    private Integer amount;

    private Long price;

    private String note;

    private String deploy;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public String getAssetCode() {
        return assetCode;
    }

    public void setAssetCode(String assetCode) {
        this.assetCode = assetCode;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getFactoryTyp() {
        return factoryTyp;
    }

    public void setFactoryTyp(String factoryTyp) {
        this.factoryTyp = factoryTyp;
    }

    public Date getBuyDate() {
        return buyDate;
    }

    public void setBuyDate(Date buyDate) {
        this.buyDate = buyDate;
    }

    public Date getFixDate() {
        return fixDate;
    }

    public void setFixDate(Date fixDate) {
        this.fixDate = fixDate;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getDeploy() {
        return deploy;
    }

    public void setDeploy(String deploy) {
        this.deploy = deploy;
    }
}
