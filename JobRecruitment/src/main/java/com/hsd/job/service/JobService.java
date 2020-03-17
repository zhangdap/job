package com.hsd.job.service;

import java.util.List;

import com.hsd.job.pojo.CompanyVo;
import com.hsd.job.pojo.Job;
import com.hsd.job.pojo.JobVo;
import com.hsd.job.pojo.Userinfo;
import com.hsd.job.pojo.UserinfoVo;

/**
 * @ClassName: JobService
 * @Description: �������
 * @date 2019��2��16�� ����6:40:08
 * @author lpjz@foxmail.com
 * 
 */
public interface JobService {
	// ����һ������
	public int postJob(Job job);

	// ����������ѯ����
	public List<Job> queryByConditionWithPage(Job job, int start, int end);

	public List<Job> queryByCondition(Job job, int p);

	public List<Job> queryJobsBytypeid(int typeid, int page);

	public Job queryById(int jobid);

	public List<Job> indexJobsList();

	public List<Job> indexJobsSpecial();

	public List<Job> queryJobsByCompanyid(int pageNum, int companyid);

	public List<CompanyVo> indexCompanyJobsCount();

	public List<Job> queryJobsByUserid(int userid);

	public List<JobVo> queryPostJobsByUserid(int page, int userid);

	public int queryAJobApplyNum(int jobid);

	public List<UserinfoVo> queryWhoAppJob(int jobid);

	public List<JobVo> queryAuserApplyJobs(int page,int userid);

	public List<JobVo> queryAuserCollJobs(int p, Integer userid);
	
	public List<UserinfoVo> queryAuserWhoJobs(int p, Integer userid);

	public List<UserinfoVo> queryJobApplyUsers(int p, Integer userid);

}
