package com.hsd.job.service;

import java.util.List;

import com.hsd.job.pojo.Jobtype;

/**  
* @ClassName: JobService  
* @Description: TODO(������һ�仰��������������)
* @date 2019��1��15�� ����4:30:53    
* @author lpjz@foxmail.com
*    
*/
public interface JobTypeService {

	//��ѯ�����еĹ�������
	public List<Jobtype> queryAllJobType();
}
