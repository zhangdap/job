package com.hsd.job.pojo;

import java.util.Date;

public class Job {
    private Integer jobid;

    private String jobname;

    private String jobaddr;

    private Date jobpublishtime;

    private String jobsarary;

    private String jobdesc;

    private String jobrequirement;

    private String jobeducationandexper;

    private String jobprofit;

    private Integer jobcost;

    private Integer jobstate;

    private Integer jobtype;

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
        this.jobname = jobname == null ? null : jobname.trim();
    }

    public String getJobaddr() {
        return jobaddr;
    }

    public void setJobaddr(String jobaddr) {
        this.jobaddr = jobaddr == null ? null : jobaddr.trim();
    }

    public Date getJobpublishtime() {
        return jobpublishtime;
    }

    public void setJobpublishtime(Date jobpublishtime) {
        this.jobpublishtime = jobpublishtime;
    }

    public String getJobsarary() {
        return jobsarary;
    }

    public void setJobsarary(String jobsarary) {
        this.jobsarary = jobsarary == null ? null : jobsarary.trim();
    }

    public String getJobdesc() {
        return jobdesc;
    }

    public void setJobdesc(String jobdesc) {
        this.jobdesc = jobdesc == null ? null : jobdesc.trim();
    }

    public String getJobrequirement() {
        return jobrequirement;
    }

    public void setJobrequirement(String jobrequirement) {
        this.jobrequirement = jobrequirement == null ? null : jobrequirement.trim();
    }

    public String getJobeducationandexper() {
        return jobeducationandexper;
    }

    public void setJobeducationandexper(String jobeducationandexper) {
        this.jobeducationandexper = jobeducationandexper == null ? null : jobeducationandexper.trim();
    }

    public String getJobprofit() {
        return jobprofit;
    }

    public void setJobprofit(String jobprofit) {
        this.jobprofit = jobprofit == null ? null : jobprofit.trim();
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

    public Integer getJobpublishuserid() {
        return jobpublishuserid;
    }

    public void setJobpublishuserid(Integer jobpublishuserid) {
        this.jobpublishuserid = jobpublishuserid;
    }
}