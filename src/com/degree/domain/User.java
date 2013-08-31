package com.degree.domain;

import java.io.Serializable;


public class User implements Serializable{
	
	private static final long serialVersionUID = 3647233284813657927L;
	private String id;
	private String name;
	private String account;   //门店
	private String password;
	private String isdeleted;
	private String time;
	
	
	
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



	public String getAccount() {
		return account;
	}



	public void setAccount(String account) {
		this.account = account;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getIsdeleted() {
		return isdeleted;
	}



	public void setIsdeleted(String isdeleted) {
		this.isdeleted = isdeleted;
	}



	public String getTime() {
		return time;
	}



	public void setTime(String time) {
		this.time = time;
	}



	@Override
	public String toString() {
		return "User [name=" + name +"]";
	}
}
