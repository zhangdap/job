package com.hsd.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsd.job.mapper.JobtypeMapper;
import com.hsd.job.pojo.Jobtype;
import com.hsd.job.service.JobTypeService;

/**  
* @ClassName: JobTypeService  
* @Description: TODO(������һ�仰��������������)
* @date 2019��1��15�� ����4:32:17    
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
