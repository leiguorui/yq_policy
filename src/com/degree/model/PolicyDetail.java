package com.degree.model;

import java.util.Date;

public class PolicyDetail {
    private Integer id;

    private String formid;

    private Integer yearnumer;

    private String commercenumber;

    private Double discount;

    private Double charge;

    private Double pending1;

    private Double pending2;

    private String formtype;

    private Date commercebegin;

    private Date commerceend;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFormid() {
        return formid;
    }

    public void setFormid(String formid) {
        this.formid = formid == null ? null : formid.trim();
    }

    public Integer getYearnumer() {
        return yearnumer;
    }

    public void setYearnumer(Integer yearnumer) {
        this.yearnumer = yearnumer;
    }

    public String getCommercenumber() {
        return commercenumber;
    }

    public void setCommercenumber(String commercenumber) {
        this.commercenumber = commercenumber == null ? null : commercenumber.trim();
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public Double getCharge() {
        return charge;
    }

    public void setCharge(Double charge) {
        this.charge = charge;
    }

    public Double getPending1() {
        return pending1;
    }

    public void setPending1(Double pending1) {
        this.pending1 = pending1;
    }

    public Double getPending2() {
        return pending2;
    }

    public void setPending2(Double pending2) {
        this.pending2 = pending2;
    }

    public String getFormtype() {
        return formtype;
    }

    public void setFormtype(String formtype) {
        this.formtype = formtype == null ? null : formtype.trim();
    }

    public Date getCommercebegin() {
        return commercebegin;
    }

    public void setCommercebegin(Date commercebegin) {
        this.commercebegin = commercebegin;
    }

    public Date getCommerceend() {
        return commerceend;
    }

    public void setCommerceend(Date commerceend) {
        this.commerceend = commerceend;
    }
}