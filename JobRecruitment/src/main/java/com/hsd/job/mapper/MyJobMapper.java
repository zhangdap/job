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

	// ���ͺ͵�ַ��ģ����ѯ��ר����ҳ������
	List<Job> conditionQueryJobs(Job job);

	// ����id��ѯ����˾
	Company queryCompanyById(int id);

	// ���¹�˾����Ϣ
	int updateCompanyById(Company company);

	// ���з�ҳ��������ѯ
	List<Job> queryByConditionWhthPage(Job job, @Param("start") int start, @Param("end") int end);

	// �����ڷ�ҳ��������ѯ
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
	
	//�����������ѯ����Ϣ���˵�
	List<Userinfo> queryPostMsgUser(int userid);
}