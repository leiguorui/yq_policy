package com.degree.persistence;

import java.util.List;
import java.util.Map;

import com.degree.domain.Aoto;
import com.degree.domain.Customer;
import com.degree.domain.Policy;
import com.degree.domain.Saler;

public interface PolicyDao {
	
	public void savePolicy(Policy policy);
	public void updatePolicy(Policy policy);
	public void deletePolicy(String id);
	public List<Policy> getAllPolicy();
	public Policy getPolicyById(String id);
	public Policy getLastPolicy();
	public void updateAotoid(Policy policy);
	public void updateCustomerId(Policy policy);
	public void updateSalerid(Policy policy);
	public void updateShang(Policy policy);
	public List<Policy> getPolicy(Map<String, Object> params);
}
