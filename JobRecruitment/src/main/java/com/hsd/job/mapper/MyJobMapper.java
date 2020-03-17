package com.hsd.job.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hsd.job.pojo.Company;
import com.hsd.job.pojo.CompanyVo;
import com.hsd.job.pojo.Job;
import com.hsd.job.pojo.JobVo;
import com.hsd.job.pojo.Userinfo;
import com.hsd.job.pojo.UserinfoVo;

public interface MyJobMapper {

	// 类型和地址的模糊查询，专供首页的数据
	List<Job> conditionQueryJobs(Job job);

	// 根据id查询出公司
	Company queryCompanyById(int id);

	// 更新公司的信息
	int updateCompanyById(Company company);

	// 带有分页的条件查询
	List<Job> queryByConditionWhthPage(Job job, @Param("start") int start, @Param("end") int end);

	// 不存在分页的条件查询
	List<Job> queryJobsBytypeid(int typeid);

	List<Job> queryJobsAllByUserId(int userid);

	List<JobVo> queryPostJobsByUserid(int userid);

	List<UserinfoVo> queryWhoAppJob(int jobid);

	List<Job> queryJobsByCompanyid(@Param("companyid") int companyid);

	List<Job> indexJobsListTime();

	List<Job> indexJobsListSpecial();

	List<CompanyVo> companyJobsCount();

	int queryAJobApplyNum(int jobid);

	List<JobVo> queryAuserApplyJobs(int userid);

	List<JobVo> queryAuserCollJobs(int userid);

	List<UserinfoVo> queryAuserWhoJobs(int userid);

	int updateStateApplyJob(@Param("jobid") int jobid, @Param("userid") int userid);
	
	//这个是用来查询发消息的人的
	List<Userinfo> queryPostMsgUser(int userid);
}