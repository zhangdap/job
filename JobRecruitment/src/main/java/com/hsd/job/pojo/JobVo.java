package com.hsd.job.pojo;

import java.util.Date;

/**
 * @ClassName: JobVo
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年2月28日 上午10:40:31
 * @author lpjz@foxmail.com
 * 
 */
public class JobVo {
	// 添加的属性
	private Integer jobid;

	private String jobname;

	private String jobaddr;

	private Date jobpublishtime;

	private Date jobdeadlinetime;

	private String jobsarary;

	private String jobdesc;

	private String jobrequirement;

	private String jobeducationandexper;

	private String jobprofit;

	private Integer jobcost;

	private Integer jobstate;

	private Integer jobtype;
	
	private Integer appusernum;
	
	private Integer jobpublishuserid;

	public Integer getJobid() {
		return jobid;
	}

	public void setJobid(Integer jobid) {
		this.jobid = jobid;
	}

	public String getJobname() {
		return jobname;
	}

	public void setJobname(String jobname) {
		this.jobname = jobname;
	}

	public String getJobaddr() {
		return jobaddr;
	}

	public void setJobaddr(String jobaddr) {
		this.jobaddr = jobaddr;
	}

	public Date getJobpublishtime() {
		return jobpublishtime;
	}

	public void setJobpublishtime(Date jobpublishtime) {
		this.jobpublishtime = jobpublishtime;
	}

	public Date getJobdeadlinetime() {
		return jobdeadlinetime;
	}

	public void setJobdeadlinetime(Date jobdeadlinetime) {
		this.jobdeadlinetime = jobdeadlinetime;
	}

	public String getJobsarary() {
		return jobsarary;
	}

	public void setJobsarary(String jobsarary) {
		this.jobsarary = jobsarary;
	}

	public String getJobdesc() {
		return jobdesc;
	}

	public void setJobdesc(String jobdesc) {
		this.jobdesc = jobdesc;
	}

	public String getJobrequirement() {
		return jobrequirement;
	}

	public void setJobrequirement(String jobrequirement) {
		this.jobrequirement = jobrequirement;
	}

	public String getJobeducationandexper() {
		return jobeducationandexper;
	}

	public void setJobeducationandexper(String jobeducationandexper) {
		this.jobeducationandexper = jobeducationandexper;
	}

	public String getJobprofit() {
		return jobprofit;
	}

	public void setJobprofit(String jobprofit) {
		this.jobprofit = jobprofit;
	}

	public Integer getJobcost() {
		return jobcost;
	}

	public void setJobcost(Integer jobcost) {
		this.jobcost = jobcost;
	}

	public Integer getJobstate() {
		return jobstate;
	}

	public void setJobstate(Integer jobstate) {
		this.jobstate = jobstate;
	}

	public Integer getJobtype() {
		return jobtype;
	}

	public void setJobtype(Integer jobtype) {
		this.jobtype = jobtype;
	}

	public Integer getAppusernum() {
		return appusernum;
	}

	public void setAppusernum(Integer appusernum) {
		this.appusernum = appusernum;
	}

	public Integer getJobpublishuserid() {
		return jobpublishuserid;
	}

	public void setJobpublishuserid(Integer jobpublishuserid) {
		this.jobpublishuserid = jobpublishuserid;
	}
	
	
}
