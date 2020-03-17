package com.hsd.job.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hsd.job.mapper.JobMapper;
import com.hsd.job.mapper.MyJobMapper;
import com.hsd.job.mapper.UsercolljobMapper;
import com.hsd.job.pojo.CompanyVo;
import com.hsd.job.pojo.Job;
import com.hsd.job.pojo.JobExample;
import com.hsd.job.pojo.JobVo;
import com.hsd.job.pojo.Usercolljob;
import com.hsd.job.pojo.UsercolljobExample;
import com.hsd.job.pojo.UsercolljobExample.Criteria;
import com.hsd.job.pojo.Userinfo;
import com.hsd.job.pojo.UserinfoVo;
import com.hsd.job.service.JobService;

/**
 * @ClassName: JobServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年2月16日 下午6:41:45
 * @author lpjz@foxmail.com
 * 
 */
@Service
public class JobServiceImpl implements JobService {
	@Autowired
	private JobMapper jobMapper;
	@Autowired
	private MyJobMapper myjobMapper;
	
	@Autowired
	private  UsercolljobMapper usercolljobMapper;

	@Override
	public int postJob(Job job) {
		// 将获得数据保存进数据库
		return jobMapper.insert(job);
	}

	@Override
	public List<Job> queryByCondition(Job job,int p) {
		PageHelper.startPage(p, 8);
		return myjobMapper.conditionQueryJobs(job);
	}
	@Override
	public Job queryById(int jobid) {
		return jobMapper.selectByPrimaryKey(jobid);
	}

	@Override
	public List<Job> queryByConditionWithPage(Job job,int start ,int end) {
		return myjobMapper.queryByConditionWhthPage(job,start,end);
	}
	@Override
	public List<Job> queryJobsBytypeid(int typeid,int page) {
		PageHelper.startPage(page, 8);
		return myjobMapper.queryJobsBytypeid(typeid);
	}

	@Override
	public List<Job> queryJobsByUserid(int userid) {
		return myjobMapper.queryJobsAllByUserId(userid);
	}

	@Override
	public List<Job> indexJobsList() {
		return myjobMapper.indexJobsListTime();
	}
	@Override
	public List<Job> indexJobsSpecial() {
		return myjobMapper.indexJobsListSpecial();
		
	}

	@Override
	public List<CompanyVo> indexCompanyJobsCount() {
		return myjobMapper.companyJobsCount();
	}

	@Override
	public List<Job> queryJobsByCompanyid(int pageNum,int companyid) {
		PageHelper.startPage(pageNum, 6);
		return myjobMapper.queryJobsByCompanyid(companyid);
	}

	@Override
	public List<JobVo> queryPostJobsByUserid(int page,int userid) {
		//分页插件
		PageHelper.startPage(page, 6);
		PageHelper.orderBy("jobpublishtime DESC");
		return myjobMapper.queryPostJobsByUserid(userid);
	}

	@Override
	public int queryAJobApplyNum(int jobid) {
		return myjobMapper.queryAJobApplyNum(jobid);
	}

	@Override
	public List<UserinfoVo> queryWhoAppJob(int jobid) {
		return myjobMapper.queryWhoAppJob(jobid);
	}

	@Override
	public List<JobVo> queryAuserApplyJobs(int page, int userid) {
		//分页插件
		PageHelper.startPage(page, 3);
		PageHelper.orderBy("jobpublishtime DESC");
		return myjobMapper.queryAuserApplyJobs(userid);
	}

	@Override
	public List<JobVo> queryAuserCollJobs(int page, Integer userid) {
		//分页插件
		PageHelper.startPage(page, 3);
		PageHelper.orderBy("jobpublishtime DESC");
		return myjobMapper.queryAuserCollJobs(userid);
	}

	@Override
	public List<UserinfoVo> queryAuserWhoJobs(int p, Integer userid) {
		PageHelper.startPage(p, 4);
		return myjobMapper.queryAuserWhoJobs(userid);
	}

	@Override
	public List<UserinfoVo> queryJobApplyUsers(int p, Integer jobid) {
		PageHelper.startPage(p, 3);
		return myjobMapper.queryWhoAppJob(jobid);
	}


}
