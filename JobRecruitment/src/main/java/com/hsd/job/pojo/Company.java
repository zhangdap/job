package com.hsd.job.pojo;

public class Company {
    private Integer companyid;

    private String companyname;

    private String companyaddr;

    private String companyphone;

    private String companyemail;

    private String companyscale;

    private String companynet;

    private String companyimages;

    private String companyvideo;

    private String companydesc;

    private Integer companystate;

    private String companytype;

    public Integer getCompanyid() {
        return companyid;
    }

    public void setCompanyid(Integer companyid) {
        this.companyid = companyid;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname == null ? null : companyname.trim();
    }

    public String getCompanyaddr() {
        return companyaddr;
    }

    public void setCompanyaddr(String companyaddr) {
        this.companyaddr = companyaddr == null ? null : companyaddr.trim();
    }

    public String getCompanyphone() {
        return companyphone;
    }

    public void setCompanyphone(String companyphone) {
        this.companyphone = companyphone == null ? null : companyphone.trim();
    }

    public String getCompanyemail() {
        return companyemail;
    }

    public void setCompanyemail(String companyemail) {
        this.companyemail = companyemail == null ? null : companyemail.trim();
    }

    public String getCompanyscale() {
        return companyscale;
    }

    public void setCompanyscale(String companyscale) {
        this.companyscale = companyscale == null ? null : companyscale.trim();
    }

    public String getCompanynet() {
        return companynet;
    }

    public void setCompanynet(String companynet) {
        this.companynet = companynet == null ? null : companynet.trim();
    }

    public String getCompanyimages() {
        return companyimages;
    }

    public void setCompanyimages(String companyimages) {
        this.companyimages = companyimages == null ? null : companyimages.trim();
    }

    public String getCompanyvideo() {
        return companyvideo;
    }

    public void setCompanyvideo(String companyvideo) {
        this.companyvideo = companyvideo == null ? null : companyvideo.trim();
    }

    public String getCompanydesc() {
        return companydesc;
    }

    public void setCompanydesc(String companydesc) {
        this.companydesc = companydesc == null ? null : companydesc.trim();
    }

    public Integer getCompanystate() {
        return companystate;
    }

    public void setCompanystate(Integer companystate) {
        this.companystate = companystate;
    }

    public String getCompanytype() {
        return companytype;
    }

    public void setCompanytype(String companytype) {
        this.companytype = companytype == null ? null : companytype.trim();
    }
}