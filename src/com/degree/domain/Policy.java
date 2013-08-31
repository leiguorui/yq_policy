package com.degree.domain;

import java.io.Serializable;
import java.util.Date;

public class Policy implements Serializable{
	private static final long serialVersionUID = 3647233284813657927L;
	
	private String id;
	private String type;
	private int loan_years;  //贷款年限
	private String jiaoqiangxian_no;
	private String shangyexian_no;
	private String insuer_comp;
	private String service; //业务途径
	private String channel; //销售渠道
	private String car_id;
	private String customer_id; //客户id
	private String saler_id;    //销售人id
	private double jiaoqiangxian_sum;
	private double shangyexian_sum;
	private double jiao_discount;
	private double shang_discount;
	private double shangbao_2;
	private double shangbao_3;
	private double shangbao_4;
	private double shangbao_5;
	private double shanglv_2;
	private double shanglv_3;
	private double shanglv_4;
	private double shanglv_5;
	private String from;
	private String to ;
	private int years ;
	private double present_sum;
	private String note; 
	private int isdeleted ;
	private String time;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getLoan_years() {
		return loan_years;
	}
	public void setLoan_years(int loan_years) {
		this.loan_years = loan_years;
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
	public String getInsuer_comp() {
		return insuer_comp;
	}
	public void setInsuer_comp(String insuer_comp) {
		this.insuer_comp = insuer_comp;
	}
	public String getCar_id() {
		return car_id;
	}
	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getSaler_id() {
		return saler_id;
	}
	public void setSaler_id(String saler_id) {
		this.saler_id = saler_id;
	}
	public double getJiaoqiangxian_sum() {
		return jiaoqiangxian_sum;
	}
	public void setJiaoqiangxian_sum(double jiaoqiangxian_sum) {
		this.jiaoqiangxian_sum = jiaoqiangxian_sum;
	}
	public double getShangyexian_sum() {
		return shangyexian_sum;
	}
	public void setShangyexian_sum(double shangyexian_sum) {
		this.shangyexian_sum = shangyexian_sum;
	}
	public double getJiao_discount() {
		return jiao_discount;
	}
	public void setJiao_discount(double jiao_discount) {
		this.jiao_discount = jiao_discount;
	}
	public double getShang_discount() {
		return shang_discount;
	}
	public void setShang_discount(double shang_discount) {
		this.shang_discount = shang_discount;
	}
	public double getShangbao_2() {
		return shangbao_2;
	}
	public void setShangbao_2(double shangbao_2) {
		this.shangbao_2 = shangbao_2;
	}
	public double getShangbao_3() {
		return shangbao_3;
	}
	public void setShangbao_3(double shangbao_3) {
		this.shangbao_3 = shangbao_3;
	}
	public double getShangbao_4() {
		return shangbao_4;
	}
	public void setShangbao_4(double shangbao_4) {
		this.shangbao_4 = shangbao_4;
	}
	public double getShangbao_5() {
		return shangbao_5;
	}
	public void setShangbao_5(double shangbao_5) {
		this.shangbao_5 = shangbao_5;
	}
	public double getShanglv_2() {
		return shanglv_2;
	}
	public void setShanglv_2(double shanglv_2) {
		this.shanglv_2 = shanglv_2;
	}
	public double getShanglv_3() {
		return shanglv_3;
	}
	public void setShanglv_3(double shanglv_3) {
		this.shanglv_3 = shanglv_3;
	}
	public double getShanglv_4() {
		return shanglv_4;
	}
	public void setShanglv_4(double shanglv_4) {
		this.shanglv_4 = shanglv_4;
	}
	public double getShanglv_5() {
		return shanglv_5;
	}
	public void setShanglv_5(double shanglv_5) {
		this.shanglv_5 = shanglv_5;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public int getYears() {
		return years;
	}
	public void setYears(int years) {
		this.years = years;
	}
	public double getPresent_sum() {
		return present_sum;
	}
	public void setPresent_sum(double present_sum) {
		this.present_sum = present_sum;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getIsdeleted() {
		return isdeleted;
	}
	public void setIsdeleted(int isdeleted) {
		this.isdeleted = isdeleted;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getChannel() {
		return channel;
	}
	public void setChannel(String channel) {
		this.channel = channel;
	}
	
}
