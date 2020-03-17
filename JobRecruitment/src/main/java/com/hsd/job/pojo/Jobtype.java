package com.hsd.job.pojo;

public class Jobtype {
    private Integer jobtypeid;

    private String jobtypename;

    private String jobtypeimg;

    public Integer getJobtypeid() {
        return jobtypeid;
    }

    public void setJobtypeid(Integer jobtypeid) {
        this.jobtypeid = jobtypeid;
    }

    public String getJobtypename() {
        return jobtypename;
    }

    public void setJobtypename(String jobtypename) {
        this.jobtypename = jobtypename == null ? null : jobtypename.trim();
    }

    public String getJobtypeimg() {
        return jobtypeimg;
    }

    public void setJobtypeimg(String jobtypeimg) {
        this.jobtypeimg = jobtypeimg == null ? null : jobtypeimg.trim();
    }
}