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
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��2��16�� ����8:53:16
 * @author lpjz@foxmail.com
 * 
 */
@Service
public class AddressServiceImpl implements AddressService {
	@Autowired
	private ProvinceCityCountyMapper provinceCityCountyMapper;

	// �����е�ʡһ��ֱϽ�м��س���
	@Override
	public List<ProvinceCityCounty> queryAllProvinces() {
		ProvinceCityCountyExample example = new ProvinceCityCountyExample();
		Criteria criteria = example.createCriteria();
		criteria.andPidEqualTo(0);
		return provinceCityCountyMapper.selectByExample(example);
	}

	// ���ݴ����ʡ��id��ѯ��������
	@Override
	public List<ProvinceCityCounty> queryAllCitys(int pid) {
		ProvinceCityCountyExample example = new ProvinceCityCountyExample();
		Criteria criteria = example.createCriteria();
		criteria.andPidEqualTo(pid);
		return provinceCityCountyMapper.selectByExample(example);
	}

}
