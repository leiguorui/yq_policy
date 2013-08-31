package com.degree.domain;

import java.io.Serializable;
import java.util.Date;

public class Aoto implements Serializable{
	private static final long serialVersionUID = 3647233284813657927L;
	private String id;
	private String number;
	private String vin;
	private String engine_no;
	private String model;
	private String limit;
	private int isdeleted;
	private String time;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getVin() {
		return vin;
	}
	public void setVin(String vin) {
		this.vin = vin;
	}
	public String getEngine_no() {
		return engine_no;
	}
	public void setEngine_no(String engine_no) {
		this.engine_no = engine_no;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getLimit() {
		return limit;
	}
	public void setLimit(String limit) {
		this.limit = limit;
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
}
