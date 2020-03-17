package com.hsd.job.service;

import java.util.List;

import com.hsd.job.pojo.ProvinceCityCounty;

/**
 * @ClassName: AddressService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年2月16日 下午8:50:04
 * @author lpjz@foxmail.com
 * 
 */
public interface AddressService {

	// 查询所有的省
	public List<ProvinceCityCounty> queryAllProvinces();
	// 根据省的id查询所属的所有的市
	public List<ProvinceCityCounty> queryAllCitys(int pid);
	
}
