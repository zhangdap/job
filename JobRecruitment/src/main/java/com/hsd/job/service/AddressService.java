package com.hsd.job.service;

import java.util.List;

import com.hsd.job.pojo.ProvinceCityCounty;

/**
 * @ClassName: AddressService
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��2��16�� ����8:50:04
 * @author lpjz@foxmail.com
 * 
 */
public interface AddressService {

	// ��ѯ���е�ʡ
	public List<ProvinceCityCounty> queryAllProvinces();
	// ����ʡ��id��ѯ���������е���
	public List<ProvinceCityCounty> queryAllCitys(int pid);
	
}
