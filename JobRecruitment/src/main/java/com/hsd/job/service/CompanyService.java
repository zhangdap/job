package com.hsd.job.service;

import com.hsd.job.pojo.Company;

/**
 * @ClassName: CompanyService
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��2��17�� ����8:46:33
 * @author lpjz@foxmail.com
 * 
 */
public interface CompanyService {

	// ���һ����˾
	public int insertCompany(Company company);
	
	public int updateCompanyInfo(Company company);
	
	public Company queryById(int cid);
}
