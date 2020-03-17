package com.hsd.job.service;

import java.util.List;

import com.hsd.job.pojo.Userappjob;

/**
 * @ClassName: ApplyJobService
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��2��27�� ����10:48:31
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
