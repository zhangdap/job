package com.hsd.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsd.job.mapper.JobtypeMapper;
import com.hsd.job.pojo.Jobtype;
import com.hsd.job.service.JobTypeService;

/**  
* @ClassName: JobTypeService  
* @Description: TODO(这里用一句话描述这个类的作用)
* @date 2019年1月15日 下午4:32:17    
* @author lpjz@foxmail.com
*    
*/

@Service
public class JobTypeServiceImpl implements JobTypeService {

	@Autowired
	private JobtypeMapper jobtypemapper;
	@Override
	public List<Jobtype> queryAllJobType() {
		
	return jobtypemapper.selectByExample(null);
	}

}
