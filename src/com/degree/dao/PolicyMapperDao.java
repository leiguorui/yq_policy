package com.degree.dao;

import com.degree.model.Policy;

public interface PolicyMapperDao {
    int deleteByPrimaryKey(String rId);

    int insert(Policy record);

    int insertSelective(Policy record);

    Policy selectByPrimaryKey(String rId);

    int updateByPrimaryKeySelective(Policy record);

    int updateByPrimaryKey(Policy record);
}