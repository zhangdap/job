package com.hsd.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsd.job.mapper.MyJobMapper;
import com.hsd.job.mapper.UserappjobMapper;
import com.hsd.job.mapper.UsercolljobMapper;
import com.hsd.job.pojo.Userappjob;
import com.hsd.job.pojo.UserappjobExample;
import com.hsd.job.pojo.UsercolljobExample;
import com.hsd.job.pojo.UsercolljobExample.Criteria;
import com.hsd.job.service.ApplyJobService;

/**
 * @ClassName: AppJobServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年2月27日 下午10:50:46
 * @author lpjz@foxmail.com
 * 
 */
@Service
public class ApplyJobServiceImpl implements ApplyJobService {
	@Autowired
	private UserappjobMapper userappjobMapper;

	@Autowired
	private UsercolljobMapper usercolljobMapper;

	@Autowired
	private MyJobMapper myJobMapper;

	@Override
	public int apply_add(Userappjob userappjob) {
		return userappjobMapper.insert(userappjob);
	}

	@Override
	public List<Userappjob> queryAppJobIfApplyed(Userappjob userappjob) {
		UserappjobExample example = new UserappjobExample();
		com.hsd.job.pojo.UserappjobExample.Criteria criteria = example.createCriteria();
		criteria.andJobidEqualTo(userappjob.getJobid());
		criteria.andUseridEqualTo(userappjob.getUserid());
		return userappjobMapper.selectByExample(example);
	}

	@Override
	public int deleteApplyJob(int userid, int jobid) {
		UserappjobExample example = new UserappjobExample();
		com.hsd.job.pojo.UserappjobExample.Criteria criteria = example.createCriteria();
		criteria.andJobidEqualTo(jobid);
		criteria.andUseridEqualTo(userid);
		return userappjobMapper.deleteByExample(example);
	}

	@Override
	public int deleteCollJob(Integer userid, int jobid) {
		UsercolljobExample example = new UsercolljobExample();
		Criteria criteria = example.createCriteria();
		criteria.andJobidEqualTo(jobid);
		criteria.andUseridEqualTo(userid);
		return usercolljobMapper.deleteByExample(example);
	}

	@Override
	public int updateStateApplyJob(Integer userid, int jobid) {
		return myJobMapper.updateStateApplyJob(jobid, userid);
	}

	@Override
	public List<Userappjob> queryIfPassApply(int userid, int jobid) {
		UserappjobExample example = new UserappjobExample();
		com.hsd.job.pojo.UserappjobExample.Criteria criteria = example.createCriteria();
		criteria.andUseridEqualTo(userid);
		criteria.andJobidEqualTo(jobid);
		return userappjobMapper.selectByExample(example);
	}

	@Override
	public int deleteApplyInfoByJobid(int jobid) {
		UserappjobExample example = new UserappjobExample();
		com.hsd.job.pojo.UserappjobExample.Criteria criteria = example.createCriteria();
		criteria.andJobidEqualTo(jobid);
		return userappjobMapper.deleteByExample(example);
	}

	@Override
	public int deleteCollInfoByJobid(int jobid) {
		UsercolljobExample example = new UsercolljobExample();
		Criteria criteria = example.createCriteria();
		criteria.andJobidEqualTo(jobid);
		return usercolljobMapper.deleteByExample(example);
	}

}
