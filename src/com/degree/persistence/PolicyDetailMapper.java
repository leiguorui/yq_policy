package com.degree.persistence;

import java.util.List;

import com.degree.model.PolicyDetail;

public interface PolicyDetailMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PolicyDetail record);

    int insertSelective(PolicyDetail record);

    PolicyDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PolicyDetail record);

    int updateByPrimaryKey(PolicyDetail record);
    
    List<PolicyDetail> selectPolicyDetailsByFormId(String formId);
}