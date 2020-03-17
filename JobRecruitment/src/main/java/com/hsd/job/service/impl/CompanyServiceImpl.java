package com.hsd.job.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsd.job.mapper.CompanyMapper;
import com.hsd.job.mapper.MyJobMapper;
import com.hsd.job.pojo.Company;
import com.hsd.job.service.CompanyService;

/**  
* @ClassName: CompanyServiceImpl  
* @Description: TODO(������һ�仰��������������)
* @date 2019��2��17�� ����8:47:53    
* @author lpjz@foxmail.com
*    
*/
@Service
public class CompanyServiceImpl implements CompanyService {
	@Autowired
	private CompanyMapper companyMapper;
	
	@Autowired
	private MyJobMapper myJobMapper;

	@Override
	public int insertCompany(Company company) {
		return companyMapper.insert(company);
	}

	@Override
	public int updateCompanyInfo(Company company) {
		return myJobMapper.updateCompanyById(company);
	}

	@Override
	public Company queryById(int cid) {
		return myJobMapper.queryCompanyById(cid);
	}

}
