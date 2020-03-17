package com.hsd.job.pojo;

public class Userinfo {
    private Integer userid;

    private String username;

    private String userpass;

    private String userhead;

    private String uservideo;

    private Integer userresumeid;

    private String useraddr;

    private String userphone;

    private String useremail;

    private Integer usertype;

    private String userdesc;

    private Integer userintegral;

    private String userskill;

    private Integer userstate;

    private Integer usercompanyid;

    private String usereduation;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass == null ? null : userpass.trim();
    }

    public String getUserhead() {
        return userhead;
    }

    public void setUserhead(String userhead) {
        this.userhead = userhead == null ? null : userhead.trim();
    }

    public String getUservideo() {
        return uservideo;
    }

    public void setUservideo(String uservideo) {
        this.uservideo = uservideo == null ? null : uservideo.trim();
    }

    public Integer getUserresumeid() {
        return userresumeid;
    }

    public void setUserresumeid(Integer userresumeid) {
        this.userresumeid = userresumeid;
    }

    public String getUseraddr() {
        return useraddr;
    }

    public void setUseraddr(String useraddr) {
        this.useraddr = useraddr == null ? null : useraddr.trim();
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone == null ? null : userphone.trim();
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail == null ? null : useremail.trim();
    }

    public Integer getUsertype() {
        return usertype;
    }

    public void setUsertype(Integer usertype) {
        this.usertype = usertype;
    }

    public String getUserdesc() {
        return userdesc;
    }

    public void setUserdesc(String userdesc) {
        this.userdesc = userdesc == null ? null : userdesc.trim();
    }

    public Integer getUserintegral() {
        return userintegral;
    }

    public void setUserintegral(Integer userintegral) {
        this.userintegral = userintegral;
    }

    public String getUserskill() {
        return userskill;
    }

    public void setUserskill(String userskill) {
        this.userskill = userskill == null ? null : userskill.trim();
    }

    public Integer getUserstate() {
        return userstate;
    }

    public void setUserstate(Integer userstate) {
        this.userstate = userstate;
    }

    public Integer getUsercompanyid() {
        return usercompanyid;
    }

    public void setUsercompanyid(Integer usercompanyid) {
        this.usercompanyid = usercompanyid;
    }

    public String getUsereduation() {
        return usereduation;
    }

    public void setUsereduation(String usereduation) {
        this.usereduation = usereduation == null ? null : usereduation.trim();
    }
}