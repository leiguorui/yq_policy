package com.degree.persistence;

import java.util.List;

import com.degree.domain.Aoto;
import com.degree.domain.LoginLog;
import com.degree.domain.Store;
import com.degree.domain.User;

public interface StoreDao {
	
	public int save(Store store);
	public void update(Store store);
	public void delete(String id);
	public List<Store> getAll();
	public Store getLast();
}
