package com.degree.domain;

import java.io.Serializable;
import java.util.Date;

public class Store implements Serializable{
	private static final long serialVersionUID = 3647233284813657927L;
	private String id;
	private String name;
	private String time;
	private String isdeleted;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getIsdeleted() {
		return isdeleted;
	}
	public void setIsdeleted(String isdeleted) {
		this.isdeleted = isdeleted;
	}
}
