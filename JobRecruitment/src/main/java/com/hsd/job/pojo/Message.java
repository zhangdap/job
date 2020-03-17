package com.hsd.job.pojo;

import java.util.Date;

public class Message {
    private Integer msgid;

    private String msgcontent;

    private Integer postuserid;

    private Integer getuserid;

    private Date createtime;

    private Integer state;

    private Integer type;

    public Integer getMsgid() {
        return msgid;
    }

    public void setMsgid(Integer msgid) {
        this.msgid = msgid;
    }

    public String getMsgcontent() {
        return msgcontent;
    }

    public void setMsgcontent(String msgcontent) {
        this.msgcontent = msgcontent == null ? null : msgcontent.trim();
    }

    public Integer getPostuserid() {
        return postuserid;
    }

    public void setPostuserid(Integer postuserid) {
        this.postuserid = postuserid;
    }

    public Integer getGetuserid() {
        return getuserid;
    }

    public void setGetuserid(Integer getuserid) {
        this.getuserid = getuserid;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}