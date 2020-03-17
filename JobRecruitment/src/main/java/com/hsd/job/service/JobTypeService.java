package com.hsd.job.service;

import java.util.List;

import com.hsd.job.pojo.Jobtype;

/**  
* @ClassName: JobService  
* @Description: TODO(这里用一句话描述这个类的作用)
* @date 2019年1月15日 下午4:30:53    
* @author lpjz@foxmail.com
*    
*/
public interface JobTypeService {

	//查询出所有的工作类型
	public List<Jobtype> queryAllJobType();
}
