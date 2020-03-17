package com.hsd.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsd.job.mapper.ResumeinfoMapper;
import com.hsd.job.pojo.Resumeinfo;
import com.hsd.job.pojo.ResumeinfoExample;
import com.hsd.job.pojo.ResumeinfoExample.Criteria;
import com.hsd.job.service.ResumeService;

/**  
* @ClassName: ResumeServiceImpl  
* @Description: TODO(������һ�仰��������������)
* @date 2019��2��24�� ����8:37:24    
* @author lpjz@foxmail.com
*    
*/
@Service
public class ResumeServiceImpl implements ResumeService {
	@Autowired
	private ResumeinfoMapper resumeinfoMapper;

	@Override
	public int addResume(Resumeinfo resume) {
		return resumeinfoMapper.insert(resume);
	}
	@Override
	public List<Resumeinfo> queryResumeByUserid(Integer userid) {
		ResumeinfoExample example=new ResumeinfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andUseridEqualTo(userid);
		return resumeinfoMapper.selectByExample(example);
	}
	//�����ϴ�������url
	@Override
	public int updateResumeUrl(Resumeinfo resumeinfo) {
		ResumeinfoExample example=new ResumeinfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andResumeidEqualTo(resumeinfo.getResumeid());
		return resumeinfoMapper.updateByExampleSelective(resumeinfo, example);
	}
	//���¼�����ϵ��ʽ
	@Override
	public int updateResumeNetName(Resumeinfo resumeinfo) {
		ResumeinfoExample example=new ResumeinfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andUseridEqualTo(resumeinfo.getUserid());
		return resumeinfoMapper.updateByExampleSelective(resumeinfo, example);
	}
	@Override
	public int updateResumeUserInfo(Resumeinfo resumeinfo) {
		ResumeinfoExample example=new ResumeinfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andUseridEqualTo(resumeinfo.getUserid());
		return resumeinfoMapper.updateByExampleSelective(resumeinfo,example);
	}
	
	@Override
	public int updateResumeUserEduation(Resumeinfo resumeinfo) {
		ResumeinfoExample example=new ResumeinfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andUseridEqualTo(resumeinfo.getUserid());
		return resumeinfoMapper.updateByExampleSelective(resumeinfo,example);
	}
	
	@Override
	public int updateResumeUserWork(Resumeinfo resumeinfo) {
		ResumeinfoExample example=new ResumeinfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andUseridEqualTo(resumeinfo.getUserid());
		return resumeinfoMapper.updateByExampleSelective(resumeinfo,example);
	}
	
	@Override
	public int updateResumeUserSkill(Resumeinfo resumeinfo) {
		ResumeinfoExample example=new ResumeinfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andUseridEqualTo(resumeinfo.getUserid());
		return resumeinfoMapper.updateByExampleSelective(resumeinfo,example);
	}
	
	@Override
	public int updateResumeUserSpecial(Resumeinfo resumeinfo) {
		ResumeinfoExample example=new ResumeinfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andUseridEqualTo(resumeinfo.getUserid());
		return resumeinfoMapper.updateByExampleSelective(resumeinfo,example);
	}
	@Override
	public List<Resumeinfo> queryByUserid(Integer userid) {
		ResumeinfoExample example=new ResumeinfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andUseridEqualTo(userid);
		return resumeinfoMapper.selectByExample(example);
	}
}
