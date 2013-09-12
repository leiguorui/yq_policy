package com.degree.persistence;

import java.util.List;

import com.degree.domain.Aoto;
import com.degree.domain.LoginLog;
import com.degree.domain.User;

public interface LoginLogDao {
	
	public int save(LoginLog loginLog);
	public void update(LoginLog loginLog);
	public void delete(String id);
	public List<LoginLog> getAllByUserId(String id);
}
