package com.degree.domain;

import java.io.Serializable;
import java.util.Date;

public class LoginLog implements Serializable{
	private static final long serialVersionUID = 3647233284813657927L;
	private String id;
	private String userId;
	private String dateTime;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getDateTime() {
		return dateTime;
	}
	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}
	
}
