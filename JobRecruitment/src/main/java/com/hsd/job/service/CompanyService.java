package com.hsd.job.service;

import com.hsd.job.pojo.Company;

/**
 * @ClassName: CompanyService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年2月17日 下午8:46:33
 * @author lpjz@foxmail.com
 * 
 */
public interface CompanyService {

	// 添加一个公司
	public int insertCompany(Company company);
	
	public int updateCompanyInfo(Company company);
	
	public Company queryById(int cid);
}
