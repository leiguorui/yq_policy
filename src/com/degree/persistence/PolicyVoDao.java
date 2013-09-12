package com.degree.persistence;

import java.util.List;

import com.degree.domain.Policy;
import com.degree.domain.PolicyVo;

public interface PolicyVoDao {
	
	/**
	 * 
	 * @param beginFrom
	 * @param beginTo
	 * @param endFrom
	 * @param endTo
	 * @param jiaoNo
	 * @param Shang
	 * @param number 车牌
	 * @param cName 客户名
	 * @param sName 销售名
	 * @param storeName 门店名
	 * @return
	 */
	public List<PolicyVo> getAllPolicyVo(String beginFrom, String beginTo,String endFrom, 
			String endTo, String jiaoNo,String ShangNo, String cNumber, 
			String cName,String sName,String storeName);
}
