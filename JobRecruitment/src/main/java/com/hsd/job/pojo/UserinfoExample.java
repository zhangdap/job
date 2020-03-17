package com.hsd.job.pojo;

import java.util.ArrayList;
import java.util.List;

public class UserinfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserinfoExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andUseridIsNull() {
            addCriterion("UserId is null");
            return (Criteria) this;
        }

        public Criteria andUseridIsNotNull() {
            addCriterion("UserId is not null");
            return (Criteria) this;
        }

        public Criteria andUseridEqualTo(Integer value) {
            addCriterion("UserId =", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotEqualTo(Integer value) {
            addCriterion("UserId <>", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThan(Integer value) {
            addCriterion("UserId >", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("UserId >=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThan(Integer value) {
            addCriterion("UserId <", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThanOrEqualTo(Integer value) {
            addCriterion("UserId <=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridIn(List<Integer> values) {
            addCriterion("UserId in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotIn(List<Integer> values) {
            addCriterion("UserId not in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridBetween(Integer value1, Integer value2) {
            addCriterion("UserId between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotBetween(Integer value1, Integer value2) {
            addCriterion("UserId not between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNull() {
            addCriterion("UserName is null");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNotNull() {
            addCriterion("UserName is not null");
            return (Criteria) this;
        }

        public Criteria andUsernameEqualTo(String value) {
            addCriterion("UserName =", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotEqualTo(String value) {
            addCriterion("UserName <>", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThan(String value) {
            addCriterion("UserName >", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("UserName >=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThan(String value) {
            addCriterion("UserName <", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThanOrEqualTo(String value) {
            addCriterion("UserName <=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLike(String value) {
            addCriterion("UserName like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotLike(String value) {
            addCriterion("UserName not like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameIn(List<String> values) {
            addCriterion("UserName in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotIn(List<String> values) {
            addCriterion("UserName not in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameBetween(String value1, String value2) {
            addCriterion("UserName between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotBetween(String value1, String value2) {
            addCriterion("UserName not between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andUserpassIsNull() {
            addCriterion("UserPass is null");
            return (Criteria) this;
        }

        public Criteria andUserpassIsNotNull() {
            addCriterion("UserPass is not null");
            return (Criteria) this;
        }

        public Criteria andUserpassEqualTo(String value) {
            addCriterion("UserPass =", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassNotEqualTo(String value) {
            addCriterion("UserPass <>", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassGreaterThan(String value) {
            addCriterion("UserPass >", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassGreaterThanOrEqualTo(String value) {
            addCriterion("UserPass >=", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassLessThan(String value) {
            addCriterion("UserPass <", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassLessThanOrEqualTo(String value) {
            addCriterion("UserPass <=", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassLike(String value) {
            addCriterion("UserPass like", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassNotLike(String value) {
            addCriterion("UserPass not like", value, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassIn(List<String> values) {
            addCriterion("UserPass in", values, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassNotIn(List<String> values) {
            addCriterion("UserPass not in", values, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassBetween(String value1, String value2) {
            addCriterion("UserPass between", value1, value2, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserpassNotBetween(String value1, String value2) {
            addCriterion("UserPass not between", value1, value2, "userpass");
            return (Criteria) this;
        }

        public Criteria andUserheadIsNull() {
            addCriterion("UserHead is null");
            return (Criteria) this;
        }

        public Criteria andUserheadIsNotNull() {
            addCriterion("UserHead is not null");
            return (Criteria) this;
        }

        public Criteria andUserheadEqualTo(String value) {
            addCriterion("UserHead =", value, "userhead");
            return (Criteria) this;
        }

        public Criteria andUserheadNotEqualTo(String value) {
            addCriterion("UserHead <>", value, "userhead");
            return (Criteria) this;
        }

        public Criteria andUserheadGreaterThan(String value) {
            addCriterion("UserHead >", value, "userhead");
            return (Criteria) this;
        }

        public Criteria andUserheadGreaterThanOrEqualTo(String value) {
            addCriterion("UserHead >=", value, "userhead");
            return (Criteria) this;
        }

        public Criteria andUserheadLessThan(String value) {
            addCriterion("UserHead <", value, "userhead");
            return (Criteria) this;
        }

        public Criteria andUserheadLessThanOrEqualTo(String value) {
            addCriterion("UserHead <=", value, "userhead");
            return (Criteria) this;
        }

        public Criteria andUserheadLike(String value) {
            addCriterion("UserHead like", value, "userhead");
            return (Criteria) this;
        }

        public Criteria andUserheadNotLike(String value) {
            addCriterion("UserHead not like", value, "userhead");
            return (Criteria) this;
        }

        public Criteria andUserheadIn(List<String> values) {
            addCriterion("UserHead in", values, "userhead");
            return (Criteria) this;
        }

        public Criteria andUserheadNotIn(List<String> values) {
            addCriterion("UserHead not in", values, "userhead");
            return (Criteria) this;
        }

        public Criteria andUserheadBetween(String value1, String value2) {
            addCriterion("UserHead between", value1, value2, "userhead");
            return (Criteria) this;
        }

        public Criteria andUserheadNotBetween(String value1, String value2) {
            addCriterion("UserHead not between", value1, value2, "userhead");
            return (Criteria) this;
        }

        public Criteria andUservideoIsNull() {
            addCriterion("UserVideo is null");
            return (Criteria) this;
        }

        public Criteria andUservideoIsNotNull() {
            addCriterion("UserVideo is not null");
            return (Criteria) this;
        }

        public Criteria andUservideoEqualTo(String value) {
            addCriterion("UserVideo =", value, "uservideo");
            return (Criteria) this;
        }

        public Criteria andUservideoNotEqualTo(String value) {
            addCriterion("UserVideo <>", value, "uservideo");
            return (Criteria) this;
        }

        public Criteria andUservideoGreaterThan(String value) {
            addCriterion("UserVideo >", value, "uservideo");
            return (Criteria) this;
        }

        public Criteria andUservideoGreaterThanOrEqualTo(String value) {
            addCriterion("UserVideo >=", value, "uservideo");
            return (Criteria) this;
        }

        public Criteria andUservideoLessThan(String value) {
            addCriterion("UserVideo <", value, "uservideo");
            return (Criteria) this;
        }

        public Criteria andUservideoLessThanOrEqualTo(String value) {
            addCriterion("UserVideo <=", value, "uservideo");
            return (Criteria) this;
        }

        public Criteria andUservideoLike(String value) {
            addCriterion("UserVideo like", value, "uservideo");
            return (Criteria) this;
        }

        public Criteria andUservideoNotLike(String value) {
            addCriterion("UserVideo not like", value, "uservideo");
            return (Criteria) this;
        }

        public Criteria andUservideoIn(List<String> values) {
            addCriterion("UserVideo in", values, "uservideo");
            return (Criteria) this;
        }

        public Criteria andUservideoNotIn(List<String> values) {
            addCriterion("UserVideo not in", values, "uservideo");
            return (Criteria) this;
        }

        public Criteria andUservideoBetween(String value1, String value2) {
            addCriterion("UserVideo between", value1, value2, "uservideo");
            return (Criteria) this;
        }

        public Criteria andUservideoNotBetween(String value1, String value2) {
            addCriterion("UserVideo not between", value1, value2, "uservideo");
            return (Criteria) this;
        }

        public Criteria andUserresumeidIsNull() {
            addCriterion("UserResumeId is null");
            return (Criteria) this;
        }

        public Criteria andUserresumeidIsNotNull() {
            addCriterion("UserResumeId is not null");
            return (Criteria) this;
        }

        public Criteria andUserresumeidEqualTo(Integer value) {
            addCriterion("UserResumeId =", value, "userresumeid");
            return (Criteria) this;
        }

        public Criteria andUserresumeidNotEqualTo(Integer value) {
            addCriterion("UserResumeId <>", value, "userresumeid");
            return (Criteria) this;
        }

        public Criteria andUserresumeidGreaterThan(Integer value) {
            addCriterion("UserResumeId >", value, "userresumeid");
            return (Criteria) this;
        }

        public Criteria andUserresumeidGreaterThanOrEqualTo(Integer value) {
            addCriterion("UserResumeId >=", value, "userresumeid");
            return (Criteria) this;
        }

        public Criteria andUserresumeidLessThan(Integer value) {
            addCriterion("UserResumeId <", value, "userresumeid");
            return (Criteria) this;
        }

        public Criteria andUserresumeidLessThanOrEqualTo(Integer value) {
            addCriterion("UserResumeId <=", value, "userresumeid");
            return (Criteria) this;
        }

        public Criteria andUserresumeidIn(List<Integer> values) {
            addCriterion("UserResumeId in", values, "userresumeid");
            return (Criteria) this;
        }

        public Criteria andUserresumeidNotIn(List<Integer> values) {
            addCriterion("UserResumeId not in", values, "userresumeid");
            return (Criteria) this;
        }

        public Criteria andUserresumeidBetween(Integer value1, Integer value2) {
            addCriterion("UserResumeId between", value1, value2, "userresumeid");
            return (Criteria) this;
        }

        public Criteria andUserresumeidNotBetween(Integer value1, Integer value2) {
            addCriterion("UserResumeId not between", value1, value2, "userresumeid");
            return (Criteria) this;
        }

        public Criteria andUseraddrIsNull() {
            addCriterion("UserAddr is null");
            return (Criteria) this;
        }

        public Criteria andUseraddrIsNotNull() {
            addCriterion("UserAddr is not null");
            return (Criteria) this;
        }

        public Criteria andUseraddrEqualTo(String value) {
            addCriterion("UserAddr =", value, "useraddr");
            return (Criteria) this;
        }

        public Criteria andUseraddrNotEqualTo(String value) {
            addCriterion("UserAddr <>", value, "useraddr");
            return (Criteria) this;
        }

        public Criteria andUseraddrGreaterThan(String value) {
            addCriterion("UserAddr >", value, "useraddr");
            return (Criteria) this;
        }

        public Criteria andUseraddrGreaterThanOrEqualTo(String value) {
            addCriterion("UserAddr >=", value, "useraddr");
            return (Criteria) this;
        }

        public Criteria andUseraddrLessThan(String value) {
            addCriterion("UserAddr <", value, "useraddr");
            return (Criteria) this;
        }

        public Criteria andUseraddrLessThanOrEqualTo(String value) {
            addCriterion("UserAddr <=", value, "useraddr");
            return (Criteria) this;
        }

        public Criteria andUseraddrLike(String value) {
            addCriterion("UserAddr like", value, "useraddr");
            return (Criteria) this;
        }

        public Criteria andUseraddrNotLike(String value) {
            addCriterion("UserAddr not like", value, "useraddr");
            return (Criteria) this;
        }

        public Criteria andUseraddrIn(List<String> values) {
            addCriterion("UserAddr in", values, "useraddr");
            return (Criteria) this;
        }

        public Criteria andUseraddrNotIn(List<String> values) {
            addCriterion("UserAddr not in", values, "useraddr");
            return (Criteria) this;
        }

        public Criteria andUseraddrBetween(String value1, String value2) {
            addCriterion("UserAddr between", value1, value2, "useraddr");
            return (Criteria) this;
        }

        public Criteria andUseraddrNotBetween(String value1, String value2) {
            addCriterion("UserAddr not between", value1, value2, "useraddr");
            return (Criteria) this;
        }

        public Criteria andUserphoneIsNull() {
            addCriterion("UserPhone is null");
            return (Criteria) this;
        }

        public Criteria andUserphoneIsNotNull() {
            addCriterion("UserPhone is not null");
            return (Criteria) this;
        }

        public Criteria andUserphoneEqualTo(String value) {
            addCriterion("UserPhone =", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneNotEqualTo(String value) {
            addCriterion("UserPhone <>", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneGreaterThan(String value) {
            addCriterion("UserPhone >", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneGreaterThanOrEqualTo(String value) {
            addCriterion("UserPhone >=", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneLessThan(String value) {
            addCriterion("UserPhone <", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneLessThanOrEqualTo(String value) {
            addCriterion("UserPhone <=", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneLike(String value) {
            addCriterion("UserPhone like", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneNotLike(String value) {
            addCriterion("UserPhone not like", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneIn(List<String> values) {
            addCriterion("UserPhone in", values, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneNotIn(List<String> values) {
            addCriterion("UserPhone not in", values, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneBetween(String value1, String value2) {
            addCriterion("UserPhone between", value1, value2, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneNotBetween(String value1, String value2) {
            addCriterion("UserPhone not between", value1, value2, "userphone");
            return (Criteria) this;
        }

        public Criteria andUseremailIsNull() {
            addCriterion("UserEmail is null");
            return (Criteria) this;
        }

        public Criteria andUseremailIsNotNull() {
            addCriterion("UserEmail is not null");
            return (Criteria) this;
        }

        public Criteria andUseremailEqualTo(String value) {
            addCriterion("UserEmail =", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailNotEqualTo(String value) {
            addCriterion("UserEmail <>", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailGreaterThan(String value) {
            addCriterion("UserEmail >", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailGreaterThanOrEqualTo(String value) {
            addCriterion("UserEmail >=", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailLessThan(String value) {
            addCriterion("UserEmail <", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailLessThanOrEqualTo(String value) {
            addCriterion("UserEmail <=", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailLike(String value) {
            addCriterion("UserEmail like", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailNotLike(String value) {
            addCriterion("UserEmail not like", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailIn(List<String> values) {
            addCriterion("UserEmail in", values, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailNotIn(List<String> values) {
            addCriterion("UserEmail not in", values, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailBetween(String value1, String value2) {
            addCriterion("UserEmail between", value1, value2, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailNotBetween(String value1, String value2) {
            addCriterion("UserEmail not between", value1, value2, "useremail");
            return (Criteria) this;
        }

        public Criteria andUsertypeIsNull() {
            addCriterion("UserType is null");
            return (Criteria) this;
        }

        public Criteria andUsertypeIsNotNull() {
            addCriterion("UserType is not null");
            return (Criteria) this;
        }

        public Criteria andUsertypeEqualTo(Integer value) {
            addCriterion("UserType =", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeNotEqualTo(Integer value) {
            addCriterion("UserType <>", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeGreaterThan(Integer value) {
            addCriterion("UserType >", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("UserType >=", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeLessThan(Integer value) {
            addCriterion("UserType <", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeLessThanOrEqualTo(Integer value) {
            addCriterion("UserType <=", value, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeIn(List<Integer> values) {
            addCriterion("UserType in", values, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeNotIn(List<Integer> values) {
            addCriterion("UserType not in", values, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeBetween(Integer value1, Integer value2) {
            addCriterion("UserType between", value1, value2, "usertype");
            return (Criteria) this;
        }

        public Criteria andUsertypeNotBetween(Integer value1, Integer value2) {
            addCriterion("UserType not between", value1, value2, "usertype");
            return (Criteria) this;
        }

        public Criteria andUserdescIsNull() {
            addCriterion("UserDesc is null");
            return (Criteria) this;
        }

        public Criteria andUserdescIsNotNull() {
            addCriterion("UserDesc is not null");
            return (Criteria) this;
        }

        public Criteria andUserdescEqualTo(String value) {
            addCriterion("UserDesc =", value, "userdesc");
            return (Criteria) this;
        }

        public Criteria andUserdescNotEqualTo(String value) {
            addCriterion("UserDesc <>", value, "userdesc");
            return (Criteria) this;
        }

        public Criteria andUserdescGreaterThan(String value) {
            addCriterion("UserDesc >", value, "userdesc");
            return (Criteria) this;
        }

        public Criteria andUserdescGreaterThanOrEqualTo(String value) {
            addCriterion("UserDesc >=", value, "userdesc");
            return (Criteria) this;
        }

        public Criteria andUserdescLessThan(String value) {
            addCriterion("UserDesc <", value, "userdesc");
            return (Criteria) this;
        }

        public Criteria andUserdescLessThanOrEqualTo(String value) {
            addCriterion("UserDesc <=", value, "userdesc");
            return (Criteria) this;
        }

        public Criteria andUserdescLike(String value) {
            addCriterion("UserDesc like", value, "userdesc");
            return (Criteria) this;
        }

        public Criteria andUserdescNotLike(String value) {
            addCriterion("UserDesc not like", value, "userdesc");
            return (Criteria) this;
        }

        public Criteria andUserdescIn(List<String> values) {
            addCriterion("UserDesc in", values, "userdesc");
            return (Criteria) this;
        }

        public Criteria andUserdescNotIn(List<String> values) {
            addCriterion("UserDesc not in", values, "userdesc");
            return (Criteria) this;
        }

        public Criteria andUserdescBetween(String value1, String value2) {
            addCriterion("UserDesc between", value1, value2, "userdesc");
            return (Criteria) this;
        }

        public Criteria andUserdescNotBetween(String value1, String value2) {
            addCriterion("UserDesc not between", value1, value2, "userdesc");
            return (Criteria) this;
        }

        public Criteria andUserintegralIsNull() {
            addCriterion("UserIntegral is null");
            return (Criteria) this;
        }

        public Criteria andUserintegralIsNotNull() {
            addCriterion("UserIntegral is not null");
            return (Criteria) this;
        }

        public Criteria andUserintegralEqualTo(Integer value) {
            addCriterion("UserIntegral =", value, "userintegral");
            return (Criteria) this;
        }

        public Criteria andUserintegralNotEqualTo(Integer value) {
            addCriterion("UserIntegral <>", value, "userintegral");
            return (Criteria) this;
        }

        public Criteria andUserintegralGreaterThan(Integer value) {
            addCriterion("UserIntegral >", value, "userintegral");
            return (Criteria) this;
        }

        public Criteria andUserintegralGreaterThanOrEqualTo(Integer value) {
            addCriterion("UserIntegral >=", value, "userintegral");
            return (Criteria) this;
        }

        public Criteria andUserintegralLessThan(Integer value) {
            addCriterion("UserIntegral <", value, "userintegral");
            return (Criteria) this;
        }

        public Criteria andUserintegralLessThanOrEqualTo(Integer value) {
            addCriterion("UserIntegral <=", value, "userintegral");
            return (Criteria) this;
        }

        public Criteria andUserintegralIn(List<Integer> values) {
            addCriterion("UserIntegral in", values, "userintegral");
            return (Criteria) this;
        }

        public Criteria andUserintegralNotIn(List<Integer> values) {
            addCriterion("UserIntegral not in", values, "userintegral");
            return (Criteria) this;
        }

        public Criteria andUserintegralBetween(Integer value1, Integer value2) {
            addCriterion("UserIntegral between", value1, value2, "userintegral");
            return (Criteria) this;
        }

        public Criteria andUserintegralNotBetween(Integer value1, Integer value2) {
            addCriterion("UserIntegral not between", value1, value2, "userintegral");
            return (Criteria) this;
        }

        public Criteria andUserskillIsNull() {
            addCriterion("UserSkill is null");
            return (Criteria) this;
        }

        public Criteria andUserskillIsNotNull() {
            addCriterion("UserSkill is not null");
            return (Criteria) this;
        }

        public Criteria andUserskillEqualTo(String value) {
            addCriterion("UserSkill =", value, "userskill");
            return (Criteria) this;
        }

        public Criteria andUserskillNotEqualTo(String value) {
            addCriterion("UserSkill <>", value, "userskill");
            return (Criteria) this;
        }

        public Criteria andUserskillGreaterThan(String value) {
            addCriterion("UserSkill >", value, "userskill");
            return (Criteria) this;
        }

        public Criteria andUserskillGreaterThanOrEqualTo(String value) {
            addCriterion("UserSkill >=", value, "userskill");
            return (Criteria) this;
        }

        public Criteria andUserskillLessThan(String value) {
            addCriterion("UserSkill <", value, "userskill");
            return (Criteria) this;
        }

        public Criteria andUserskillLessThanOrEqualTo(String value) {
            addCriterion("UserSkill <=", value, "userskill");
            return (Criteria) this;
        }

        public Criteria andUserskillLike(String value) {
            addCriterion("UserSkill like", value, "userskill");
            return (Criteria) this;
        }

        public Criteria andUserskillNotLike(String value) {
            addCriterion("UserSkill not like", value, "userskill");
            return (Criteria) this;
        }

        public Criteria andUserskillIn(List<String> values) {
            addCriterion("UserSkill in", values, "userskill");
            return (Criteria) this;
        }

        public Criteria andUserskillNotIn(List<String> values) {
            addCriterion("UserSkill not in", values, "userskill");
            return (Criteria) this;
        }

        public Criteria andUserskillBetween(String value1, String value2) {
            addCriterion("UserSkill between", value1, value2, "userskill");
            return (Criteria) this;
        }

        public Criteria andUserskillNotBetween(String value1, String value2) {
            addCriterion("UserSkill not between", value1, value2, "userskill");
            return (Criteria) this;
        }

        public Criteria andUserstateIsNull() {
            addCriterion("UserState is null");
            return (Criteria) this;
        }

        public Criteria andUserstateIsNotNull() {
            addCriterion("UserState is not null");
            return (Criteria) this;
        }

        public Criteria andUserstateEqualTo(Integer value) {
            addCriterion("UserState =", value, "userstate");
            return (Criteria) this;
        }

        public Criteria andUserstateNotEqualTo(Integer value) {
            addCriterion("UserState <>", value, "userstate");
            return (Criteria) this;
        }

        public Criteria andUserstateGreaterThan(Integer value) {
            addCriterion("UserState >", value, "userstate");
            return (Criteria) this;
        }

        public Criteria andUserstateGreaterThanOrEqualTo(Integer value) {
            addCriterion("UserState >=", value, "userstate");
            return (Criteria) this;
        }

        public Criteria andUserstateLessThan(Integer value) {
            addCriterion("UserState <", value, "userstate");
            return (Criteria) this;
        }

        public Criteria andUserstateLessThanOrEqualTo(Integer value) {
            addCriterion("UserState <=", value, "userstate");
            return (Criteria) this;
        }

        public Criteria andUserstateIn(List<Integer> values) {
            addCriterion("UserState in", values, "userstate");
            return (Criteria) this;
        }

        public Criteria andUserstateNotIn(List<Integer> values) {
            addCriterion("UserState not in", values, "userstate");
            return (Criteria) this;
        }

        public Criteria andUserstateBetween(Integer value1, Integer value2) {
            addCriterion("UserState between", value1, value2, "userstate");
            return (Criteria) this;
        }

        public Criteria andUserstateNotBetween(Integer value1, Integer value2) {
            addCriterion("UserState not between", value1, value2, "userstate");
            return (Criteria) this;
        }

        public Criteria andUsercompanyidIsNull() {
            addCriterion("UserCompanyId is null");
            return (Criteria) this;
        }

        public Criteria andUsercompanyidIsNotNull() {
            addCriterion("UserCompanyId is not null");
            return (Criteria) this;
        }

        public Criteria andUsercompanyidEqualTo(Integer value) {
            addCriterion("UserCompanyId =", value, "usercompanyid");
            return (Criteria) this;
        }

        public Criteria andUsercompanyidNotEqualTo(Integer value) {
            addCriterion("UserCompanyId <>", value, "usercompanyid");
            return (Criteria) this;
        }

        public Criteria andUsercompanyidGreaterThan(Integer value) {
            addCriterion("UserCompanyId >", value, "usercompanyid");
            return (Criteria) this;
        }

        public Criteria andUsercompanyidGreaterThanOrEqualTo(Integer value) {
            addCriterion("UserCompanyId >=", value, "usercompanyid");
            return (Criteria) this;
        }

        public Criteria andUsercompanyidLessThan(Integer value) {
            addCriterion("UserCompanyId <", value, "usercompanyid");
            return (Criteria) this;
        }

        public Criteria andUsercompanyidLessThanOrEqualTo(Integer value) {
            addCriterion("UserCompanyId <=", value, "usercompanyid");
            return (Criteria) this;
        }

        public Criteria andUsercompanyidIn(List<Integer> values) {
            addCriterion("UserCompanyId in", values, "usercompanyid");
            return (Criteria) this;
        }

        public Criteria andUsercompanyidNotIn(List<Integer> values) {
            addCriterion("UserCompanyId not in", values, "usercompanyid");
            return (Criteria) this;
        }

        public Criteria andUsercompanyidBetween(Integer value1, Integer value2) {
            addCriterion("UserCompanyId between", value1, value2, "usercompanyid");
            return (Criteria) this;
        }

        public Criteria andUsercompanyidNotBetween(Integer value1, Integer value2) {
            addCriterion("UserCompanyId not between", value1, value2, "usercompanyid");
            return (Criteria) this;
        }

        public Criteria andUsereduationIsNull() {
            addCriterion("UserEduation is null");
            return (Criteria) this;
        }

        public Criteria andUsereduationIsNotNull() {
            addCriterion("UserEduation is not null");
            return (Criteria) this;
        }

        public Criteria andUsereduationEqualTo(String value) {
            addCriterion("UserEduation =", value, "usereduation");
            return (Criteria) this;
        }

        public Criteria andUsereduationNotEqualTo(String value) {
            addCriterion("UserEduation <>", value, "usereduation");
            return (Criteria) this;
        }

        public Criteria andUsereduationGreaterThan(String value) {
            addCriterion("UserEduation >", value, "usereduation");
            return (Criteria) this;
        }

        public Criteria andUsereduationGreaterThanOrEqualTo(String value) {
            addCriterion("UserEduation >=", value, "usereduation");
            return (Criteria) this;
        }

        public Criteria andUsereduationLessThan(String value) {
            addCriterion("UserEduation <", value, "usereduation");
            return (Criteria) this;
        }

        public Criteria andUsereduationLessThanOrEqualTo(String value) {
            addCriterion("UserEduation <=", value, "usereduation");
            return (Criteria) this;
        }

        public Criteria andUsereduationLike(String value) {
            addCriterion("UserEduation like", value, "usereduation");
            return (Criteria) this;
        }

        public Criteria andUsereduationNotLike(String value) {
            addCriterion("UserEduation not like", value, "usereduation");
            return (Criteria) this;
        }

        public Criteria andUsereduationIn(List<String> values) {
            addCriterion("UserEduation in", values, "usereduation");
            return (Criteria) this;
        }

        public Criteria andUsereduationNotIn(List<String> values) {
            addCriterion("UserEduation not in", values, "usereduation");
            return (Criteria) this;
        }

        public Criteria andUsereduationBetween(String value1, String value2) {
            addCriterion("UserEduation between", value1, value2, "usereduation");
            return (Criteria) this;
        }

        public Criteria andUsereduationNotBetween(String value1, String value2) {
            addCriterion("UserEduation not between", value1, value2, "usereduation");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}