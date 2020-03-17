package com.hsd.job.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ResumeinfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ResumeinfoExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andResumeidIsNull() {
            addCriterion("ResumeId is null");
            return (Criteria) this;
        }

        public Criteria andResumeidIsNotNull() {
            addCriterion("ResumeId is not null");
            return (Criteria) this;
        }

        public Criteria andResumeidEqualTo(Integer value) {
            addCriterion("ResumeId =", value, "resumeid");
            return (Criteria) this;
        }

        public Criteria andResumeidNotEqualTo(Integer value) {
            addCriterion("ResumeId <>", value, "resumeid");
            return (Criteria) this;
        }

        public Criteria andResumeidGreaterThan(Integer value) {
            addCriterion("ResumeId >", value, "resumeid");
            return (Criteria) this;
        }

        public Criteria andResumeidGreaterThanOrEqualTo(Integer value) {
            addCriterion("ResumeId >=", value, "resumeid");
            return (Criteria) this;
        }

        public Criteria andResumeidLessThan(Integer value) {
            addCriterion("ResumeId <", value, "resumeid");
            return (Criteria) this;
        }

        public Criteria andResumeidLessThanOrEqualTo(Integer value) {
            addCriterion("ResumeId <=", value, "resumeid");
            return (Criteria) this;
        }

        public Criteria andResumeidIn(List<Integer> values) {
            addCriterion("ResumeId in", values, "resumeid");
            return (Criteria) this;
        }

        public Criteria andResumeidNotIn(List<Integer> values) {
            addCriterion("ResumeId not in", values, "resumeid");
            return (Criteria) this;
        }

        public Criteria andResumeidBetween(Integer value1, Integer value2) {
            addCriterion("ResumeId between", value1, value2, "resumeid");
            return (Criteria) this;
        }

        public Criteria andResumeidNotBetween(Integer value1, Integer value2) {
            addCriterion("ResumeId not between", value1, value2, "resumeid");
            return (Criteria) this;
        }

        public Criteria andResumefilenameIsNull() {
            addCriterion("ResumeFileName is null");
            return (Criteria) this;
        }

        public Criteria andResumefilenameIsNotNull() {
            addCriterion("ResumeFileName is not null");
            return (Criteria) this;
        }

        public Criteria andResumefilenameEqualTo(String value) {
            addCriterion("ResumeFileName =", value, "resumefilename");
            return (Criteria) this;
        }

        public Criteria andResumefilenameNotEqualTo(String value) {
            addCriterion("ResumeFileName <>", value, "resumefilename");
            return (Criteria) this;
        }

        public Criteria andResumefilenameGreaterThan(String value) {
            addCriterion("ResumeFileName >", value, "resumefilename");
            return (Criteria) this;
        }

        public Criteria andResumefilenameGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeFileName >=", value, "resumefilename");
            return (Criteria) this;
        }

        public Criteria andResumefilenameLessThan(String value) {
            addCriterion("ResumeFileName <", value, "resumefilename");
            return (Criteria) this;
        }

        public Criteria andResumefilenameLessThanOrEqualTo(String value) {
            addCriterion("ResumeFileName <=", value, "resumefilename");
            return (Criteria) this;
        }

        public Criteria andResumefilenameLike(String value) {
            addCriterion("ResumeFileName like", value, "resumefilename");
            return (Criteria) this;
        }

        public Criteria andResumefilenameNotLike(String value) {
            addCriterion("ResumeFileName not like", value, "resumefilename");
            return (Criteria) this;
        }

        public Criteria andResumefilenameIn(List<String> values) {
            addCriterion("ResumeFileName in", values, "resumefilename");
            return (Criteria) this;
        }

        public Criteria andResumefilenameNotIn(List<String> values) {
            addCriterion("ResumeFileName not in", values, "resumefilename");
            return (Criteria) this;
        }

        public Criteria andResumefilenameBetween(String value1, String value2) {
            addCriterion("ResumeFileName between", value1, value2, "resumefilename");
            return (Criteria) this;
        }

        public Criteria andResumefilenameNotBetween(String value1, String value2) {
            addCriterion("ResumeFileName not between", value1, value2, "resumefilename");
            return (Criteria) this;
        }

        public Criteria andResumetypeIsNull() {
            addCriterion("ResumeType is null");
            return (Criteria) this;
        }

        public Criteria andResumetypeIsNotNull() {
            addCriterion("ResumeType is not null");
            return (Criteria) this;
        }

        public Criteria andResumetypeEqualTo(Integer value) {
            addCriterion("ResumeType =", value, "resumetype");
            return (Criteria) this;
        }

        public Criteria andResumetypeNotEqualTo(Integer value) {
            addCriterion("ResumeType <>", value, "resumetype");
            return (Criteria) this;
        }

        public Criteria andResumetypeGreaterThan(Integer value) {
            addCriterion("ResumeType >", value, "resumetype");
            return (Criteria) this;
        }

        public Criteria andResumetypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("ResumeType >=", value, "resumetype");
            return (Criteria) this;
        }

        public Criteria andResumetypeLessThan(Integer value) {
            addCriterion("ResumeType <", value, "resumetype");
            return (Criteria) this;
        }

        public Criteria andResumetypeLessThanOrEqualTo(Integer value) {
            addCriterion("ResumeType <=", value, "resumetype");
            return (Criteria) this;
        }

        public Criteria andResumetypeIn(List<Integer> values) {
            addCriterion("ResumeType in", values, "resumetype");
            return (Criteria) this;
        }

        public Criteria andResumetypeNotIn(List<Integer> values) {
            addCriterion("ResumeType not in", values, "resumetype");
            return (Criteria) this;
        }

        public Criteria andResumetypeBetween(Integer value1, Integer value2) {
            addCriterion("ResumeType between", value1, value2, "resumetype");
            return (Criteria) this;
        }

        public Criteria andResumetypeNotBetween(Integer value1, Integer value2) {
            addCriterion("ResumeType not between", value1, value2, "resumetype");
            return (Criteria) this;
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

        public Criteria andResumeurlIsNull() {
            addCriterion("ResumeUrl is null");
            return (Criteria) this;
        }

        public Criteria andResumeurlIsNotNull() {
            addCriterion("ResumeUrl is not null");
            return (Criteria) this;
        }

        public Criteria andResumeurlEqualTo(String value) {
            addCriterion("ResumeUrl =", value, "resumeurl");
            return (Criteria) this;
        }

        public Criteria andResumeurlNotEqualTo(String value) {
            addCriterion("ResumeUrl <>", value, "resumeurl");
            return (Criteria) this;
        }

        public Criteria andResumeurlGreaterThan(String value) {
            addCriterion("ResumeUrl >", value, "resumeurl");
            return (Criteria) this;
        }

        public Criteria andResumeurlGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeUrl >=", value, "resumeurl");
            return (Criteria) this;
        }

        public Criteria andResumeurlLessThan(String value) {
            addCriterion("ResumeUrl <", value, "resumeurl");
            return (Criteria) this;
        }

        public Criteria andResumeurlLessThanOrEqualTo(String value) {
            addCriterion("ResumeUrl <=", value, "resumeurl");
            return (Criteria) this;
        }

        public Criteria andResumeurlLike(String value) {
            addCriterion("ResumeUrl like", value, "resumeurl");
            return (Criteria) this;
        }

        public Criteria andResumeurlNotLike(String value) {
            addCriterion("ResumeUrl not like", value, "resumeurl");
            return (Criteria) this;
        }

        public Criteria andResumeurlIn(List<String> values) {
            addCriterion("ResumeUrl in", values, "resumeurl");
            return (Criteria) this;
        }

        public Criteria andResumeurlNotIn(List<String> values) {
            addCriterion("ResumeUrl not in", values, "resumeurl");
            return (Criteria) this;
        }

        public Criteria andResumeurlBetween(String value1, String value2) {
            addCriterion("ResumeUrl between", value1, value2, "resumeurl");
            return (Criteria) this;
        }

        public Criteria andResumeurlNotBetween(String value1, String value2) {
            addCriterion("ResumeUrl not between", value1, value2, "resumeurl");
            return (Criteria) this;
        }

        public Criteria andResumeusernameIsNull() {
            addCriterion("ResumeUserName is null");
            return (Criteria) this;
        }

        public Criteria andResumeusernameIsNotNull() {
            addCriterion("ResumeUserName is not null");
            return (Criteria) this;
        }

        public Criteria andResumeusernameEqualTo(String value) {
            addCriterion("ResumeUserName =", value, "resumeusername");
            return (Criteria) this;
        }

        public Criteria andResumeusernameNotEqualTo(String value) {
            addCriterion("ResumeUserName <>", value, "resumeusername");
            return (Criteria) this;
        }

        public Criteria andResumeusernameGreaterThan(String value) {
            addCriterion("ResumeUserName >", value, "resumeusername");
            return (Criteria) this;
        }

        public Criteria andResumeusernameGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeUserName >=", value, "resumeusername");
            return (Criteria) this;
        }

        public Criteria andResumeusernameLessThan(String value) {
            addCriterion("ResumeUserName <", value, "resumeusername");
            return (Criteria) this;
        }

        public Criteria andResumeusernameLessThanOrEqualTo(String value) {
            addCriterion("ResumeUserName <=", value, "resumeusername");
            return (Criteria) this;
        }

        public Criteria andResumeusernameLike(String value) {
            addCriterion("ResumeUserName like", value, "resumeusername");
            return (Criteria) this;
        }

        public Criteria andResumeusernameNotLike(String value) {
            addCriterion("ResumeUserName not like", value, "resumeusername");
            return (Criteria) this;
        }

        public Criteria andResumeusernameIn(List<String> values) {
            addCriterion("ResumeUserName in", values, "resumeusername");
            return (Criteria) this;
        }

        public Criteria andResumeusernameNotIn(List<String> values) {
            addCriterion("ResumeUserName not in", values, "resumeusername");
            return (Criteria) this;
        }

        public Criteria andResumeusernameBetween(String value1, String value2) {
            addCriterion("ResumeUserName between", value1, value2, "resumeusername");
            return (Criteria) this;
        }

        public Criteria andResumeusernameNotBetween(String value1, String value2) {
            addCriterion("ResumeUserName not between", value1, value2, "resumeusername");
            return (Criteria) this;
        }

        public Criteria andResumeuserbirthdayIsNull() {
            addCriterion("ResumeUserBirthday is null");
            return (Criteria) this;
        }

        public Criteria andResumeuserbirthdayIsNotNull() {
            addCriterion("ResumeUserBirthday is not null");
            return (Criteria) this;
        }

        public Criteria andResumeuserbirthdayEqualTo(Date value) {
            addCriterionForJDBCDate("ResumeUserBirthday =", value, "resumeuserbirthday");
            return (Criteria) this;
        }

        public Criteria andResumeuserbirthdayNotEqualTo(Date value) {
            addCriterionForJDBCDate("ResumeUserBirthday <>", value, "resumeuserbirthday");
            return (Criteria) this;
        }

        public Criteria andResumeuserbirthdayGreaterThan(Date value) {
            addCriterionForJDBCDate("ResumeUserBirthday >", value, "resumeuserbirthday");
            return (Criteria) this;
        }

        public Criteria andResumeuserbirthdayGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("ResumeUserBirthday >=", value, "resumeuserbirthday");
            return (Criteria) this;
        }

        public Criteria andResumeuserbirthdayLessThan(Date value) {
            addCriterionForJDBCDate("ResumeUserBirthday <", value, "resumeuserbirthday");
            return (Criteria) this;
        }

        public Criteria andResumeuserbirthdayLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("ResumeUserBirthday <=", value, "resumeuserbirthday");
            return (Criteria) this;
        }

        public Criteria andResumeuserbirthdayIn(List<Date> values) {
            addCriterionForJDBCDate("ResumeUserBirthday in", values, "resumeuserbirthday");
            return (Criteria) this;
        }

        public Criteria andResumeuserbirthdayNotIn(List<Date> values) {
            addCriterionForJDBCDate("ResumeUserBirthday not in", values, "resumeuserbirthday");
            return (Criteria) this;
        }

        public Criteria andResumeuserbirthdayBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("ResumeUserBirthday between", value1, value2, "resumeuserbirthday");
            return (Criteria) this;
        }

        public Criteria andResumeuserbirthdayNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("ResumeUserBirthday not between", value1, value2, "resumeuserbirthday");
            return (Criteria) this;
        }

        public Criteria andResumeusestateIsNull() {
            addCriterion("ResumeUseState is null");
            return (Criteria) this;
        }

        public Criteria andResumeusestateIsNotNull() {
            addCriterion("ResumeUseState is not null");
            return (Criteria) this;
        }

        public Criteria andResumeusestateEqualTo(String value) {
            addCriterion("ResumeUseState =", value, "resumeusestate");
            return (Criteria) this;
        }

        public Criteria andResumeusestateNotEqualTo(String value) {
            addCriterion("ResumeUseState <>", value, "resumeusestate");
            return (Criteria) this;
        }

        public Criteria andResumeusestateGreaterThan(String value) {
            addCriterion("ResumeUseState >", value, "resumeusestate");
            return (Criteria) this;
        }

        public Criteria andResumeusestateGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeUseState >=", value, "resumeusestate");
            return (Criteria) this;
        }

        public Criteria andResumeusestateLessThan(String value) {
            addCriterion("ResumeUseState <", value, "resumeusestate");
            return (Criteria) this;
        }

        public Criteria andResumeusestateLessThanOrEqualTo(String value) {
            addCriterion("ResumeUseState <=", value, "resumeusestate");
            return (Criteria) this;
        }

        public Criteria andResumeusestateLike(String value) {
            addCriterion("ResumeUseState like", value, "resumeusestate");
            return (Criteria) this;
        }

        public Criteria andResumeusestateNotLike(String value) {
            addCriterion("ResumeUseState not like", value, "resumeusestate");
            return (Criteria) this;
        }

        public Criteria andResumeusestateIn(List<String> values) {
            addCriterion("ResumeUseState in", values, "resumeusestate");
            return (Criteria) this;
        }

        public Criteria andResumeusestateNotIn(List<String> values) {
            addCriterion("ResumeUseState not in", values, "resumeusestate");
            return (Criteria) this;
        }

        public Criteria andResumeusestateBetween(String value1, String value2) {
            addCriterion("ResumeUseState between", value1, value2, "resumeusestate");
            return (Criteria) this;
        }

        public Criteria andResumeusestateNotBetween(String value1, String value2) {
            addCriterion("ResumeUseState not between", value1, value2, "resumeusestate");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceIsNull() {
            addCriterion("ResumeUserExperience is null");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceIsNotNull() {
            addCriterion("ResumeUserExperience is not null");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceEqualTo(String value) {
            addCriterion("ResumeUserExperience =", value, "resumeuserexperience");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceNotEqualTo(String value) {
            addCriterion("ResumeUserExperience <>", value, "resumeuserexperience");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceGreaterThan(String value) {
            addCriterion("ResumeUserExperience >", value, "resumeuserexperience");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeUserExperience >=", value, "resumeuserexperience");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceLessThan(String value) {
            addCriterion("ResumeUserExperience <", value, "resumeuserexperience");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceLessThanOrEqualTo(String value) {
            addCriterion("ResumeUserExperience <=", value, "resumeuserexperience");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceLike(String value) {
            addCriterion("ResumeUserExperience like", value, "resumeuserexperience");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceNotLike(String value) {
            addCriterion("ResumeUserExperience not like", value, "resumeuserexperience");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceIn(List<String> values) {
            addCriterion("ResumeUserExperience in", values, "resumeuserexperience");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceNotIn(List<String> values) {
            addCriterion("ResumeUserExperience not in", values, "resumeuserexperience");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceBetween(String value1, String value2) {
            addCriterion("ResumeUserExperience between", value1, value2, "resumeuserexperience");
            return (Criteria) this;
        }

        public Criteria andResumeuserexperienceNotBetween(String value1, String value2) {
            addCriterion("ResumeUserExperience not between", value1, value2, "resumeuserexperience");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryIsNull() {
            addCriterion("ResumeUserSalary is null");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryIsNotNull() {
            addCriterion("ResumeUserSalary is not null");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryEqualTo(String value) {
            addCriterion("ResumeUserSalary =", value, "resumeusersalary");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryNotEqualTo(String value) {
            addCriterion("ResumeUserSalary <>", value, "resumeusersalary");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryGreaterThan(String value) {
            addCriterion("ResumeUserSalary >", value, "resumeusersalary");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeUserSalary >=", value, "resumeusersalary");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryLessThan(String value) {
            addCriterion("ResumeUserSalary <", value, "resumeusersalary");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryLessThanOrEqualTo(String value) {
            addCriterion("ResumeUserSalary <=", value, "resumeusersalary");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryLike(String value) {
            addCriterion("ResumeUserSalary like", value, "resumeusersalary");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryNotLike(String value) {
            addCriterion("ResumeUserSalary not like", value, "resumeusersalary");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryIn(List<String> values) {
            addCriterion("ResumeUserSalary in", values, "resumeusersalary");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryNotIn(List<String> values) {
            addCriterion("ResumeUserSalary not in", values, "resumeusersalary");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryBetween(String value1, String value2) {
            addCriterion("ResumeUserSalary between", value1, value2, "resumeusersalary");
            return (Criteria) this;
        }

        public Criteria andResumeusersalaryNotBetween(String value1, String value2) {
            addCriterion("ResumeUserSalary not between", value1, value2, "resumeusersalary");
            return (Criteria) this;
        }

        public Criteria andResumeusergenderIsNull() {
            addCriterion("ResumeUserGender is null");
            return (Criteria) this;
        }

        public Criteria andResumeusergenderIsNotNull() {
            addCriterion("ResumeUserGender is not null");
            return (Criteria) this;
        }

        public Criteria andResumeusergenderEqualTo(Integer value) {
            addCriterion("ResumeUserGender =", value, "resumeusergender");
            return (Criteria) this;
        }

        public Criteria andResumeusergenderNotEqualTo(Integer value) {
            addCriterion("ResumeUserGender <>", value, "resumeusergender");
            return (Criteria) this;
        }

        public Criteria andResumeusergenderGreaterThan(Integer value) {
            addCriterion("ResumeUserGender >", value, "resumeusergender");
            return (Criteria) this;
        }

        public Criteria andResumeusergenderGreaterThanOrEqualTo(Integer value) {
            addCriterion("ResumeUserGender >=", value, "resumeusergender");
            return (Criteria) this;
        }

        public Criteria andResumeusergenderLessThan(Integer value) {
            addCriterion("ResumeUserGender <", value, "resumeusergender");
            return (Criteria) this;
        }

        public Criteria andResumeusergenderLessThanOrEqualTo(Integer value) {
            addCriterion("ResumeUserGender <=", value, "resumeusergender");
            return (Criteria) this;
        }

        public Criteria andResumeusergenderIn(List<Integer> values) {
            addCriterion("ResumeUserGender in", values, "resumeusergender");
            return (Criteria) this;
        }

        public Criteria andResumeusergenderNotIn(List<Integer> values) {
            addCriterion("ResumeUserGender not in", values, "resumeusergender");
            return (Criteria) this;
        }

        public Criteria andResumeusergenderBetween(Integer value1, Integer value2) {
            addCriterion("ResumeUserGender between", value1, value2, "resumeusergender");
            return (Criteria) this;
        }

        public Criteria andResumeusergenderNotBetween(Integer value1, Integer value2) {
            addCriterion("ResumeUserGender not between", value1, value2, "resumeusergender");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationIsNull() {
            addCriterion("ResumeUserQualification is null");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationIsNotNull() {
            addCriterion("ResumeUserQualification is not null");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationEqualTo(String value) {
            addCriterion("ResumeUserQualification =", value, "resumeuserqualification");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationNotEqualTo(String value) {
            addCriterion("ResumeUserQualification <>", value, "resumeuserqualification");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationGreaterThan(String value) {
            addCriterion("ResumeUserQualification >", value, "resumeuserqualification");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeUserQualification >=", value, "resumeuserqualification");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationLessThan(String value) {
            addCriterion("ResumeUserQualification <", value, "resumeuserqualification");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationLessThanOrEqualTo(String value) {
            addCriterion("ResumeUserQualification <=", value, "resumeuserqualification");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationLike(String value) {
            addCriterion("ResumeUserQualification like", value, "resumeuserqualification");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationNotLike(String value) {
            addCriterion("ResumeUserQualification not like", value, "resumeuserqualification");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationIn(List<String> values) {
            addCriterion("ResumeUserQualification in", values, "resumeuserqualification");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationNotIn(List<String> values) {
            addCriterion("ResumeUserQualification not in", values, "resumeuserqualification");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationBetween(String value1, String value2) {
            addCriterion("ResumeUserQualification between", value1, value2, "resumeuserqualification");
            return (Criteria) this;
        }

        public Criteria andResumeuserqualificationNotBetween(String value1, String value2) {
            addCriterion("ResumeUserQualification not between", value1, value2, "resumeuserqualification");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationIsNull() {
            addCriterion("ResumeUserEducation is null");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationIsNotNull() {
            addCriterion("ResumeUserEducation is not null");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationEqualTo(String value) {
            addCriterion("ResumeUserEducation =", value, "resumeusereducation");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationNotEqualTo(String value) {
            addCriterion("ResumeUserEducation <>", value, "resumeusereducation");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationGreaterThan(String value) {
            addCriterion("ResumeUserEducation >", value, "resumeusereducation");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeUserEducation >=", value, "resumeusereducation");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationLessThan(String value) {
            addCriterion("ResumeUserEducation <", value, "resumeusereducation");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationLessThanOrEqualTo(String value) {
            addCriterion("ResumeUserEducation <=", value, "resumeusereducation");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationLike(String value) {
            addCriterion("ResumeUserEducation like", value, "resumeusereducation");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationNotLike(String value) {
            addCriterion("ResumeUserEducation not like", value, "resumeusereducation");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationIn(List<String> values) {
            addCriterion("ResumeUserEducation in", values, "resumeusereducation");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationNotIn(List<String> values) {
            addCriterion("ResumeUserEducation not in", values, "resumeusereducation");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationBetween(String value1, String value2) {
            addCriterion("ResumeUserEducation between", value1, value2, "resumeusereducation");
            return (Criteria) this;
        }

        public Criteria andResumeusereducationNotBetween(String value1, String value2) {
            addCriterion("ResumeUserEducation not between", value1, value2, "resumeusereducation");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkIsNull() {
            addCriterion("ResumeUserWork is null");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkIsNotNull() {
            addCriterion("ResumeUserWork is not null");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkEqualTo(String value) {
            addCriterion("ResumeUserWork =", value, "resumeuserwork");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkNotEqualTo(String value) {
            addCriterion("ResumeUserWork <>", value, "resumeuserwork");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkGreaterThan(String value) {
            addCriterion("ResumeUserWork >", value, "resumeuserwork");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeUserWork >=", value, "resumeuserwork");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkLessThan(String value) {
            addCriterion("ResumeUserWork <", value, "resumeuserwork");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkLessThanOrEqualTo(String value) {
            addCriterion("ResumeUserWork <=", value, "resumeuserwork");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkLike(String value) {
            addCriterion("ResumeUserWork like", value, "resumeuserwork");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkNotLike(String value) {
            addCriterion("ResumeUserWork not like", value, "resumeuserwork");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkIn(List<String> values) {
            addCriterion("ResumeUserWork in", values, "resumeuserwork");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkNotIn(List<String> values) {
            addCriterion("ResumeUserWork not in", values, "resumeuserwork");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkBetween(String value1, String value2) {
            addCriterion("ResumeUserWork between", value1, value2, "resumeuserwork");
            return (Criteria) this;
        }

        public Criteria andResumeuserworkNotBetween(String value1, String value2) {
            addCriterion("ResumeUserWork not between", value1, value2, "resumeuserwork");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillIsNull() {
            addCriterion("ResumeUserSkill is null");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillIsNotNull() {
            addCriterion("ResumeUserSkill is not null");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillEqualTo(String value) {
            addCriterion("ResumeUserSkill =", value, "resumeuserskill");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillNotEqualTo(String value) {
            addCriterion("ResumeUserSkill <>", value, "resumeuserskill");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillGreaterThan(String value) {
            addCriterion("ResumeUserSkill >", value, "resumeuserskill");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeUserSkill >=", value, "resumeuserskill");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillLessThan(String value) {
            addCriterion("ResumeUserSkill <", value, "resumeuserskill");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillLessThanOrEqualTo(String value) {
            addCriterion("ResumeUserSkill <=", value, "resumeuserskill");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillLike(String value) {
            addCriterion("ResumeUserSkill like", value, "resumeuserskill");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillNotLike(String value) {
            addCriterion("ResumeUserSkill not like", value, "resumeuserskill");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillIn(List<String> values) {
            addCriterion("ResumeUserSkill in", values, "resumeuserskill");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillNotIn(List<String> values) {
            addCriterion("ResumeUserSkill not in", values, "resumeuserskill");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillBetween(String value1, String value2) {
            addCriterion("ResumeUserSkill between", value1, value2, "resumeuserskill");
            return (Criteria) this;
        }

        public Criteria andResumeuserskillNotBetween(String value1, String value2) {
            addCriterion("ResumeUserSkill not between", value1, value2, "resumeuserskill");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialIsNull() {
            addCriterion("ResumeUserSpecial is null");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialIsNotNull() {
            addCriterion("ResumeUserSpecial is not null");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialEqualTo(String value) {
            addCriterion("ResumeUserSpecial =", value, "resumeuserspecial");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialNotEqualTo(String value) {
            addCriterion("ResumeUserSpecial <>", value, "resumeuserspecial");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialGreaterThan(String value) {
            addCriterion("ResumeUserSpecial >", value, "resumeuserspecial");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeUserSpecial >=", value, "resumeuserspecial");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialLessThan(String value) {
            addCriterion("ResumeUserSpecial <", value, "resumeuserspecial");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialLessThanOrEqualTo(String value) {
            addCriterion("ResumeUserSpecial <=", value, "resumeuserspecial");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialLike(String value) {
            addCriterion("ResumeUserSpecial like", value, "resumeuserspecial");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialNotLike(String value) {
            addCriterion("ResumeUserSpecial not like", value, "resumeuserspecial");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialIn(List<String> values) {
            addCriterion("ResumeUserSpecial in", values, "resumeuserspecial");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialNotIn(List<String> values) {
            addCriterion("ResumeUserSpecial not in", values, "resumeuserspecial");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialBetween(String value1, String value2) {
            addCriterion("ResumeUserSpecial between", value1, value2, "resumeuserspecial");
            return (Criteria) this;
        }

        public Criteria andResumeuserspecialNotBetween(String value1, String value2) {
            addCriterion("ResumeUserSpecial not between", value1, value2, "resumeuserspecial");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectIsNull() {
            addCriterion("ResumeUserConnect is null");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectIsNotNull() {
            addCriterion("ResumeUserConnect is not null");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectEqualTo(String value) {
            addCriterion("ResumeUserConnect =", value, "resumeuserconnect");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectNotEqualTo(String value) {
            addCriterion("ResumeUserConnect <>", value, "resumeuserconnect");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectGreaterThan(String value) {
            addCriterion("ResumeUserConnect >", value, "resumeuserconnect");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeUserConnect >=", value, "resumeuserconnect");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectLessThan(String value) {
            addCriterion("ResumeUserConnect <", value, "resumeuserconnect");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectLessThanOrEqualTo(String value) {
            addCriterion("ResumeUserConnect <=", value, "resumeuserconnect");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectLike(String value) {
            addCriterion("ResumeUserConnect like", value, "resumeuserconnect");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectNotLike(String value) {
            addCriterion("ResumeUserConnect not like", value, "resumeuserconnect");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectIn(List<String> values) {
            addCriterion("ResumeUserConnect in", values, "resumeuserconnect");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectNotIn(List<String> values) {
            addCriterion("ResumeUserConnect not in", values, "resumeuserconnect");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectBetween(String value1, String value2) {
            addCriterion("ResumeUserConnect between", value1, value2, "resumeuserconnect");
            return (Criteria) this;
        }

        public Criteria andResumeuserconnectNotBetween(String value1, String value2) {
            addCriterion("ResumeUserConnect not between", value1, value2, "resumeuserconnect");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescIsNull() {
            addCriterion("ResumeUserDesc is null");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescIsNotNull() {
            addCriterion("ResumeUserDesc is not null");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescEqualTo(String value) {
            addCriterion("ResumeUserDesc =", value, "resumeuserdesc");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescNotEqualTo(String value) {
            addCriterion("ResumeUserDesc <>", value, "resumeuserdesc");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescGreaterThan(String value) {
            addCriterion("ResumeUserDesc >", value, "resumeuserdesc");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescGreaterThanOrEqualTo(String value) {
            addCriterion("ResumeUserDesc >=", value, "resumeuserdesc");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescLessThan(String value) {
            addCriterion("ResumeUserDesc <", value, "resumeuserdesc");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescLessThanOrEqualTo(String value) {
            addCriterion("ResumeUserDesc <=", value, "resumeuserdesc");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescLike(String value) {
            addCriterion("ResumeUserDesc like", value, "resumeuserdesc");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescNotLike(String value) {
            addCriterion("ResumeUserDesc not like", value, "resumeuserdesc");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescIn(List<String> values) {
            addCriterion("ResumeUserDesc in", values, "resumeuserdesc");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescNotIn(List<String> values) {
            addCriterion("ResumeUserDesc not in", values, "resumeuserdesc");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescBetween(String value1, String value2) {
            addCriterion("ResumeUserDesc between", value1, value2, "resumeuserdesc");
            return (Criteria) this;
        }

        public Criteria andResumeuserdescNotBetween(String value1, String value2) {
            addCriterion("ResumeUserDesc not between", value1, value2, "resumeuserdesc");
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