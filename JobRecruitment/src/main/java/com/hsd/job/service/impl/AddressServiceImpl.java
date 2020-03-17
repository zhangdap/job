package com.hsd.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsd.job.mapper.ProvinceCityCountyMapper;
import com.hsd.job.pojo.ProvinceCityCounty;
import com.hsd.job.pojo.ProvinceCityCountyExample;
import com.hsd.job.pojo.ProvinceCityCountyExample.Criteria;
import com.hsd.job.service.AddressService;

/**
 * @ClassName: AddressServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年2月16日 下午8:53:16
 * @author lpjz@foxmail.com
 * 
 */
@Service
public class AddressServiceImpl implements AddressService {
	@Autowired
	private ProvinceCityCountyMapper provinceCityCountyMapper;

	// 将所有的省一级直辖市加载出来
	@Override
	public List<ProvinceCityCounty> queryAllProvinces() {
		ProvinceCityCountyExample example = new ProvinceCityCountyExample();
		Criteria criteria = example.createCriteria();
		criteria.andPidEqualTo(0);
		return provinceCityCountyMapper.selectByExample(example);
	}

	// 根据传入的省的id查询所属的市
	@Override
	public List<ProvinceCityCounty> queryAllCitys(int pid) {
		ProvinceCityCountyExample example = new ProvinceCityCountyExample();
		Criteria criteria = example.createCriteria();
		criteria.andPidEqualTo(pid);
		return provinceCityCountyMapper.selectByExample(example);
	}

}
