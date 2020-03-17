package com.hsd.job.pojo;

public class Companytype {
    private Integer companytypeid;

    private String companytypename;

    public Integer getCompanytypeid() {
        return companytypeid;
    }

    public void setCompanytypeid(Integer companytypeid) {
        this.companytypeid = companytypeid;
    }

    public String getCompanytypename() {
        return companytypename;
    }

    public void setCompanytypename(String companytypename) {
        this.companytypename = companytypename == null ? null : companytypename.trim();
    }
}