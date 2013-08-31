package com.degree.domain;

import java.io.Serializable;

public class Saler implements Serializable{
	private static final long serialVersionUID = 3647233284813657927L;
	private String id;
	private String name;
	private String account;
	private String store; //password改为store
	private int isdeleted;
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
	public String getStore() {
		return store;
	}
	public void setStore(String store) {
		this.store = store;
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
