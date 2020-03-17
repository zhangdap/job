package com.hsd.job.service;

import java.util.List;

import com.hsd.job.pojo.Resumeinfo;

/**
 * @ClassName: ResumeInfo
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年2月24日 下午8:35:44
 * @author lpjz@foxmail.com
 * 
 */
public interface ResumeService {

	public int addResume(Resumeinfo resume);

	public int updateResumeUrl(Resumeinfo resumeinfo);

	public List<Resumeinfo> queryResumeByUserid(Integer userid);

	public int updateResumeNetName(Resumeinfo resumeinfo);

	public int updateResumeUserInfo(Resumeinfo resumeinfo);

	int updateResumeUserEduation(Resumeinfo resumeinfo);

	int updateResumeUserWork(Resumeinfo resumeinfo);

	int updateResumeUserSkill(Resumeinfo resumeinfo);

	int updateResumeUserSpecial(Resumeinfo resumeinfo);

	public List<Resumeinfo> queryByUserid(Integer userid);
}
