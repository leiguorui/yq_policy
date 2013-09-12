package com.degree.dao;

import com.degree.model.PolicyDetail;

public interface PolicyDetailMapperDao {
    int deleteByPrimaryKey(Integer id);

    int insert(PolicyDetail record);

    int insertSelective(PolicyDetail record);

    PolicyDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PolicyDetail record);

    int updateByPrimaryKey(PolicyDetail record);
}