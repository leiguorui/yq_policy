package com.degree.persistence;

import java.util.List;

import com.degree.domain.Aoto;
import com.degree.domain.Customer;
import com.degree.domain.User;

public interface CustomerDao {
	
	public int save(Customer customer);
	public void update(Customer customer);
	public void delete(String id);
	public List<Customer> getAll();
	public Customer getLastCustomer();
	public Customer getCustomerById(String id);
}
