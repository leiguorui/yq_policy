package com.degree.persistence;

import java.util.List;

import com.degree.domain.User;

public interface UserDao {
	
	public void saveUser(User user);
	public void updateUser(User user);
	public void deleteUser(String id);
	public List<User> getAllUser();
	public User getUserById(String uerId);
	public User getUserByUsername(String userName);
}
