package com.degree.persistence;

import java.util.List;

import com.degree.model.Policy;

public interface PolicyMapper {
    int deleteByPrimaryKey(String rId);

    int insert(Policy record);

    int insertSelective(Policy record);

    Policy selectByPrimaryKey(String rId);

    int updateByPrimaryKeySelective(Policy record);

    int updateByPrimaryKey(Policy record);
    
	public List<Policy> getAllPolicy(String CommerceBeginFrom, String CommerceBeginEnd, 
			String CommerceNumber, String FirstRegisterNumberFrom, String FirstRegisterNumberEnd, 
			String IssuingDateFrom, String IssuingDateEnd, String DeliveyName, 
			String InsuredName, String Saler, String CarNumber, String Isdeleted,
			String storeName, String SALI);
	
	public Policy getLastPolicy();	
}