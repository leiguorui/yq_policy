package com.degree.domain;

import java.io.Serializable;
import java.util.Date;

public class PolicyVo implements Serializable{
	private static final long serialVersionUID = 3647233284813657927L;
	
	private String id;
	private String jiaoqiangxian_no;
	private String shangyexian_no;
	private String car_number;
	private String customer_name; //客户id
	private String saler_name;    //销售人id
	private String saler_store;    //销售人id
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getJiaoqiangxian_no() {
		return jiaoqiangxian_no;
	}
	public void setJiaoqiangxian_no(String jiaoqiangxian_no) {
		this.jiaoqiangxian_no = jiaoqiangxian_no;
	}
	public String getShangyexian_no() {
		return shangyexian_no;
	}
	public void setShangyexian_no(String shangyexian_no) {
		this.shangyexian_no = shangyexian_no;
	}
	public String getCar_number() {
		return car_number;
	}
	public void setCar_number(String car_number) {
		this.car_number = car_number;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getSaler_name() {
		return saler_name;
	}
	public void setSaler_name(String saler_name) {
		this.saler_name = saler_name;
	}
	public String getSaler_store() {
		return saler_store;
	}
	public void setSaler_store(String saler_store) {
		this.saler_store = saler_store;
	}
}
