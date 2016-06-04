package com.sh.model;

import org.joda.time.DateTime;

/**
 * Created by zhaopin on 16/6/4.
 */
public class Machine extends BaseEntity {

    private String name;

    private String serial;

    private String assetCode;

    private String unit;

    private String factoryTyp;

    private DateTime buyDate;

    private DateTime fixDate;

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

    public DateTime getBuyDate() {
        return buyDate;
    }

    public void setBuyDate(DateTime buyDate) {
        this.buyDate = buyDate;
    }

    public DateTime getFixDate() {
        return fixDate;
    }

    public void setFixDate(DateTime fixDate) {
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
