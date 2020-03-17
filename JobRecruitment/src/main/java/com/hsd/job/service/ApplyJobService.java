package com.hsd.job.service;

import java.util.List;

import com.hsd.job.pojo.Userappjob;

/**
 * @ClassName: ApplyJobService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年2月27日 下午10:48:31
 * @author lpjz@foxmail.com
 * 
 */
public interface ApplyJobService {

	int apply_add(Userappjob userappjob);

	List<Userappjob> queryAppJobIfApplyed(Userappjob userappjob);

	int deleteApplyJob(int userid, int jobid);

	int deleteCollJob(Integer userid, int jobid);
	
	int updateStateApplyJob(Integer userid, int jobid);

	List<Userappjob> queryIfPassApply(int userid, int jobid);

	int deleteApplyInfoByJobid(int jobid);

	int deleteCollInfoByJobid(int jobid);
}
