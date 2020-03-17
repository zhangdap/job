package com.hsd.job.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class JobExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public JobExample() {
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

        public Criteria andJobidIsNull() {
            addCriterion("JobId is null");
            return (Criteria) this;
        }

        public Criteria andJobidIsNotNull() {
            addCriterion("JobId is not null");
            return (Criteria) this;
        }

        public Criteria andJobidEqualTo(Integer value) {
            addCriterion("JobId =", value, "jobid");
            return (Criteria) this;
        }

        public Criteria andJobidNotEqualTo(Integer value) {
            addCriterion("JobId <>", value, "jobid");
            return (Criteria) this;
        }

        public Criteria andJobidGreaterThan(Integer value) {
            addCriterion("JobId >", value, "jobid");
            return (Criteria) this;
        }

        public Criteria andJobidGreaterThanOrEqualTo(Integer value) {
            addCriterion("JobId >=", value, "jobid");
            return (Criteria) this;
        }

        public Criteria andJobidLessThan(Integer value) {
            addCriterion("JobId <", value, "jobid");
            return (Criteria) this;
        }

        public Criteria andJobidLessThanOrEqualTo(Integer value) {
            addCriterion("JobId <=", value, "jobid");
            return (Criteria) this;
        }

        public Criteria andJobidIn(List<Integer> values) {
            addCriterion("JobId in", values, "jobid");
            return (Criteria) this;
        }

        public Criteria andJobidNotIn(List<Integer> values) {
            addCriterion("JobId not in", values, "jobid");
            return (Criteria) this;
        }

        public Criteria andJobidBetween(Integer value1, Integer value2) {
            addCriterion("JobId between", value1, value2, "jobid");
            return (Criteria) this;
        }

        public Criteria andJobidNotBetween(Integer value1, Integer value2) {
            addCriterion("JobId not between", value1, value2, "jobid");
            return (Criteria) this;
        }

        public Criteria andJobnameIsNull() {
            addCriterion("JobName is null");
            return (Criteria) this;
        }

        public Criteria andJobnameIsNotNull() {
            addCriterion("JobName is not null");
            return (Criteria) this;
        }

        public Criteria andJobnameEqualTo(String value) {
            addCriterion("JobName =", value, "jobname");
            return (Criteria) this;
        }

        public Criteria andJobnameNotEqualTo(String value) {
            addCriterion("JobName <>", value, "jobname");
            return (Criteria) this;
        }

        public Criteria andJobnameGreaterThan(String value) {
            addCriterion("JobName >", value, "jobname");
            return (Criteria) this;
        }

        public Criteria andJobnameGreaterThanOrEqualTo(String value) {
            addCriterion("JobName >=", value, "jobname");
            return (Criteria) this;
        }

        public Criteria andJobnameLessThan(String value) {
            addCriterion("JobName <", value, "jobname");
            return (Criteria) this;
        }

        public Criteria andJobnameLessThanOrEqualTo(String value) {
            addCriterion("JobName <=", value, "jobname");
            return (Criteria) this;
        }

        public Criteria andJobnameLike(String value) {
            addCriterion("JobName like", value, "jobname");
            return (Criteria) this;
        }

        public Criteria andJobnameNotLike(String value) {
            addCriterion("JobName not like", value, "jobname");
            return (Criteria) this;
        }

        public Criteria andJobnameIn(List<String> values) {
            addCriterion("JobName in", values, "jobname");
            return (Criteria) this;
        }

        public Criteria andJobnameNotIn(List<String> values) {
            addCriterion("JobName not in", values, "jobname");
            return (Criteria) this;
        }

        public Criteria andJobnameBetween(String value1, String value2) {
            addCriterion("JobName between", value1, value2, "jobname");
            return (Criteria) this;
        }

        public Criteria andJobnameNotBetween(String value1, String value2) {
            addCriterion("JobName not between", value1, value2, "jobname");
            return (Criteria) this;
        }

        public Criteria andJobaddrIsNull() {
            addCriterion("JobAddr is null");
            return (Criteria) this;
        }

        public Criteria andJobaddrIsNotNull() {
            addCriterion("JobAddr is not null");
            return (Criteria) this;
        }

        public Criteria andJobaddrEqualTo(String value) {
            addCriterion("JobAddr =", value, "jobaddr");
            return (Criteria) this;
        }

        public Criteria andJobaddrNotEqualTo(String value) {
            addCriterion("JobAddr <>", value, "jobaddr");
            return (Criteria) this;
        }

        public Criteria andJobaddrGreaterThan(String value) {
            addCriterion("JobAddr >", value, "jobaddr");
            return (Criteria) this;
        }

        public Criteria andJobaddrGreaterThanOrEqualTo(String value) {
            addCriterion("JobAddr >=", value, "jobaddr");
            return (Criteria) this;
        }

        public Criteria andJobaddrLessThan(String value) {
            addCriterion("JobAddr <", value, "jobaddr");
            return (Criteria) this;
        }

        public Criteria andJobaddrLessThanOrEqualTo(String value) {
            addCriterion("JobAddr <=", value, "jobaddr");
            return (Criteria) this;
        }

        public Criteria andJobaddrLike(String value) {
            addCriterion("JobAddr like", value, "jobaddr");
            return (Criteria) this;
        }

        public Criteria andJobaddrNotLike(String value) {
            addCriterion("JobAddr not like", value, "jobaddr");
            return (Criteria) this;
        }

        public Criteria andJobaddrIn(List<String> values) {
            addCriterion("JobAddr in", values, "jobaddr");
            return (Criteria) this;
        }

        public Criteria andJobaddrNotIn(List<String> values) {
            addCriterion("JobAddr not in", values, "jobaddr");
            return (Criteria) this;
        }

        public Criteria andJobaddrBetween(String value1, String value2) {
            addCriterion("JobAddr between", value1, value2, "jobaddr");
            return (Criteria) this;
        }

        public Criteria andJobaddrNotBetween(String value1, String value2) {
            addCriterion("JobAddr not between", value1, value2, "jobaddr");
            return (Criteria) this;
        }

        public Criteria andJobpublishtimeIsNull() {
            addCriterion("JobPublishTime is null");
            return (Criteria) this;
        }

        public Criteria andJobpublishtimeIsNotNull() {
            addCriterion("JobPublishTime is not null");
            return (Criteria) this;
        }

        public Criteria andJobpublishtimeEqualTo(Date value) {
            addCriterion("JobPublishTime =", value, "jobpublishtime");
            return (Criteria) this;
        }

        public Criteria andJobpublishtimeNotEqualTo(Date value) {
            addCriterion("JobPublishTime <>", value, "jobpublishtime");
            return (Criteria) this;
        }

        public Criteria andJobpublishtimeGreaterThan(Date value) {
            addCriterion("JobPublishTime >", value, "jobpublishtime");
            return (Criteria) this;
        }

        public Criteria andJobpublishtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("JobPublishTime >=", value, "jobpublishtime");
            return (Criteria) this;
        }

        public Criteria andJobpublishtimeLessThan(Date value) {
            addCriterion("JobPublishTime <", value, "jobpublishtime");
            return (Criteria) this;
        }

        public Criteria andJobpublishtimeLessThanOrEqualTo(Date value) {
            addCriterion("JobPublishTime <=", value, "jobpublishtime");
            return (Criteria) this;
        }

        public Criteria andJobpublishtimeIn(List<Date> values) {
            addCriterion("JobPublishTime in", values, "jobpublishtime");
            return (Criteria) this;
        }

        public Criteria andJobpublishtimeNotIn(List<Date> values) {
            addCriterion("JobPublishTime not in", values, "jobpublishtime");
            return (Criteria) this;
        }

        public Criteria andJobpublishtimeBetween(Date value1, Date value2) {
            addCriterion("JobPublishTime between", value1, value2, "jobpublishtime");
            return (Criteria) this;
        }

        public Criteria andJobpublishtimeNotBetween(Date value1, Date value2) {
            addCriterion("JobPublishTime not between", value1, value2, "jobpublishtime");
            return (Criteria) this;
        }

        public Criteria andJobsararyIsNull() {
            addCriterion("JobSarary is null");
            return (Criteria) this;
        }

        public Criteria andJobsararyIsNotNull() {
            addCriterion("JobSarary is not null");
            return (Criteria) this;
        }

        public Criteria andJobsararyEqualTo(String value) {
            addCriterion("JobSarary =", value, "jobsarary");
            return (Criteria) this;
        }

        public Criteria andJobsararyNotEqualTo(String value) {
            addCriterion("JobSarary <>", value, "jobsarary");
            return (Criteria) this;
        }

        public Criteria andJobsararyGreaterThan(String value) {
            addCriterion("JobSarary >", value, "jobsarary");
            return (Criteria) this;
        }

        public Criteria andJobsararyGreaterThanOrEqualTo(String value) {
            addCriterion("JobSarary >=", value, "jobsarary");
            return (Criteria) this;
        }

        public Criteria andJobsararyLessThan(String value) {
            addCriterion("JobSarary <", value, "jobsarary");
            return (Criteria) this;
        }

        public Criteria andJobsararyLessThanOrEqualTo(String value) {
            addCriterion("JobSarary <=", value, "jobsarary");
            return (Criteria) this;
        }

        public Criteria andJobsararyLike(String value) {
            addCriterion("JobSarary like", value, "jobsarary");
            return (Criteria) this;
        }

        public Criteria andJobsararyNotLike(String value) {
            addCriterion("JobSarary not like", value, "jobsarary");
            return (Criteria) this;
        }

        public Criteria andJobsararyIn(List<String> values) {
            addCriterion("JobSarary in", values, "jobsarary");
            return (Criteria) this;
        }

        public Criteria andJobsararyNotIn(List<String> values) {
            addCriterion("JobSarary not in", values, "jobsarary");
            return (Criteria) this;
        }

        public Criteria andJobsararyBetween(String value1, String value2) {
            addCriterion("JobSarary between", value1, value2, "jobsarary");
            return (Criteria) this;
        }

        public Criteria andJobsararyNotBetween(String value1, String value2) {
            addCriterion("JobSarary not between", value1, value2, "jobsarary");
            return (Criteria) this;
        }

        public Criteria andJobdescIsNull() {
            addCriterion("JobDesc is null");
            return (Criteria) this;
        }

        public Criteria andJobdescIsNotNull() {
            addCriterion("JobDesc is not null");
            return (Criteria) this;
        }

        public Criteria andJobdescEqualTo(String value) {
            addCriterion("JobDesc =", value, "jobdesc");
            return (Criteria) this;
        }

        public Criteria andJobdescNotEqualTo(String value) {
            addCriterion("JobDesc <>", value, "jobdesc");
            return (Criteria) this;
        }

        public Criteria andJobdescGreaterThan(String value) {
            addCriterion("JobDesc >", value, "jobdesc");
            return (Criteria) this;
        }

        public Criteria andJobdescGreaterThanOrEqualTo(String value) {
            addCriterion("JobDesc >=", value, "jobdesc");
            return (Criteria) this;
        }

        public Criteria andJobdescLessThan(String value) {
            addCriterion("JobDesc <", value, "jobdesc");
            return (Criteria) this;
        }

        public Criteria andJobdescLessThanOrEqualTo(String value) {
            addCriterion("JobDesc <=", value, "jobdesc");
            return (Criteria) this;
        }

        public Criteria andJobdescLike(String value) {
            addCriterion("JobDesc like", value, "jobdesc");
            return (Criteria) this;
        }

        public Criteria andJobdescNotLike(String value) {
            addCriterion("JobDesc not like", value, "jobdesc");
            return (Criteria) this;
        }

        public Criteria andJobdescIn(List<String> values) {
            addCriterion("JobDesc in", values, "jobdesc");
            return (Criteria) this;
        }

        public Criteria andJobdescNotIn(List<String> values) {
            addCriterion("JobDesc not in", values, "jobdesc");
            return (Criteria) this;
        }

        public Criteria andJobdescBetween(String value1, String value2) {
            addCriterion("JobDesc between", value1, value2, "jobdesc");
            return (Criteria) this;
        }

        public Criteria andJobdescNotBetween(String value1, String value2) {
            addCriterion("JobDesc not between", value1, value2, "jobdesc");
            return (Criteria) this;
        }

        public Criteria andJobrequirementIsNull() {
            addCriterion("JobRequirement is null");
            return (Criteria) this;
        }

        public Criteria andJobrequirementIsNotNull() {
            addCriterion("JobRequirement is not null");
            return (Criteria) this;
        }

        public Criteria andJobrequirementEqualTo(String value) {
            addCriterion("JobRequirement =", value, "jobrequirement");
            return (Criteria) this;
        }

        public Criteria andJobrequirementNotEqualTo(String value) {
            addCriterion("JobRequirement <>", value, "jobrequirement");
            return (Criteria) this;
        }

        public Criteria andJobrequirementGreaterThan(String value) {
            addCriterion("JobRequirement >", value, "jobrequirement");
            return (Criteria) this;
        }

        public Criteria andJobrequirementGreaterThanOrEqualTo(String value) {
            addCriterion("JobRequirement >=", value, "jobrequirement");
            return (Criteria) this;
        }

        public Criteria andJobrequirementLessThan(String value) {
            addCriterion("JobRequirement <", value, "jobrequirement");
            return (Criteria) this;
        }

        public Criteria andJobrequirementLessThanOrEqualTo(String value) {
            addCriterion("JobRequirement <=", value, "jobrequirement");
            return (Criteria) this;
        }

        public Criteria andJobrequirementLike(String value) {
            addCriterion("JobRequirement like", value, "jobrequirement");
            return (Criteria) this;
        }

        public Criteria andJobrequirementNotLike(String value) {
            addCriterion("JobRequirement not like", value, "jobrequirement");
            return (Criteria) this;
        }

        public Criteria andJobrequirementIn(List<String> values) {
            addCriterion("JobRequirement in", values, "jobrequirement");
            return (Criteria) this;
        }

        public Criteria andJobrequirementNotIn(List<String> values) {
            addCriterion("JobRequirement not in", values, "jobrequirement");
            return (Criteria) this;
        }

        public Criteria andJobrequirementBetween(String value1, String value2) {
            addCriterion("JobRequirement between", value1, value2, "jobrequirement");
            return (Criteria) this;
        }

        public Criteria andJobrequirementNotBetween(String value1, String value2) {
            addCriterion("JobRequirement not between", value1, value2, "jobrequirement");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperIsNull() {
            addCriterion("JobEducationAndExper is null");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperIsNotNull() {
            addCriterion("JobEducationAndExper is not null");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperEqualTo(String value) {
            addCriterion("JobEducationAndExper =", value, "jobeducationandexper");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperNotEqualTo(String value) {
            addCriterion("JobEducationAndExper <>", value, "jobeducationandexper");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperGreaterThan(String value) {
            addCriterion("JobEducationAndExper >", value, "jobeducationandexper");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperGreaterThanOrEqualTo(String value) {
            addCriterion("JobEducationAndExper >=", value, "jobeducationandexper");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperLessThan(String value) {
            addCriterion("JobEducationAndExper <", value, "jobeducationandexper");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperLessThanOrEqualTo(String value) {
            addCriterion("JobEducationAndExper <=", value, "jobeducationandexper");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperLike(String value) {
            addCriterion("JobEducationAndExper like", value, "jobeducationandexper");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperNotLike(String value) {
            addCriterion("JobEducationAndExper not like", value, "jobeducationandexper");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperIn(List<String> values) {
            addCriterion("JobEducationAndExper in", values, "jobeducationandexper");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperNotIn(List<String> values) {
            addCriterion("JobEducationAndExper not in", values, "jobeducationandexper");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperBetween(String value1, String value2) {
            addCriterion("JobEducationAndExper between", value1, value2, "jobeducationandexper");
            return (Criteria) this;
        }

        public Criteria andJobeducationandexperNotBetween(String value1, String value2) {
            addCriterion("JobEducationAndExper not between", value1, value2, "jobeducationandexper");
            return (Criteria) this;
        }

        public Criteria andJobprofitIsNull() {
            addCriterion("JobProfit is null");
            return (Criteria) this;
        }

        public Criteria andJobprofitIsNotNull() {
            addCriterion("JobProfit is not null");
            return (Criteria) this;
        }

        public Criteria andJobprofitEqualTo(String value) {
            addCriterion("JobProfit =", value, "jobprofit");
            return (Criteria) this;
        }

        public Criteria andJobprofitNotEqualTo(String value) {
            addCriterion("JobProfit <>", value, "jobprofit");
            return (Criteria) this;
        }

        public Criteria andJobprofitGreaterThan(String value) {
            addCriterion("JobProfit >", value, "jobprofit");
            return (Criteria) this;
        }

        public Criteria andJobprofitGreaterThanOrEqualTo(String value) {
            addCriterion("JobProfit >=", value, "jobprofit");
            return (Criteria) this;
        }

        public Criteria andJobprofitLessThan(String value) {
            addCriterion("JobProfit <", value, "jobprofit");
            return (Criteria) this;
        }

        public Criteria andJobprofitLessThanOrEqualTo(String value) {
            addCriterion("JobProfit <=", value, "jobprofit");
            return (Criteria) this;
        }

        public Criteria andJobprofitLike(String value) {
            addCriterion("JobProfit like", value, "jobprofit");
            return (Criteria) this;
        }

        public Criteria andJobprofitNotLike(String value) {
            addCriterion("JobProfit not like", value, "jobprofit");
            return (Criteria) this;
        }

        public Criteria andJobprofitIn(List<String> values) {
            addCriterion("JobProfit in", values, "jobprofit");
            return (Criteria) this;
        }

        public Criteria andJobprofitNotIn(List<String> values) {
            addCriterion("JobProfit not in", values, "jobprofit");
            return (Criteria) this;
        }

        public Criteria andJobprofitBetween(String value1, String value2) {
            addCriterion("JobProfit between", value1, value2, "jobprofit");
            return (Criteria) this;
        }

        public Criteria andJobprofitNotBetween(String value1, String value2) {
            addCriterion("JobProfit not between", value1, value2, "jobprofit");
            return (Criteria) this;
        }

        public Criteria andJobcostIsNull() {
            addCriterion("JobCost is null");
            return (Criteria) this;
        }

        public Criteria andJobcostIsNotNull() {
            addCriterion("JobCost is not null");
            return (Criteria) this;
        }

        public Criteria andJobcostEqualTo(Integer value) {
            addCriterion("JobCost =", value, "jobcost");
            return (Criteria) this;
        }

        public Criteria andJobcostNotEqualTo(Integer value) {
            addCriterion("JobCost <>", value, "jobcost");
            return (Criteria) this;
        }

        public Criteria andJobcostGreaterThan(Integer value) {
            addCriterion("JobCost >", value, "jobcost");
            return (Criteria) this;
        }

        public Criteria andJobcostGreaterThanOrEqualTo(Integer value) {
            addCriterion("JobCost >=", value, "jobcost");
            return (Criteria) this;
        }

        public Criteria andJobcostLessThan(Integer value) {
            addCriterion("JobCost <", value, "jobcost");
            return (Criteria) this;
        }

        public Criteria andJobcostLessThanOrEqualTo(Integer value) {
            addCriterion("JobCost <=", value, "jobcost");
            return (Criteria) this;
        }

        public Criteria andJobcostIn(List<Integer> values) {
            addCriterion("JobCost in", values, "jobcost");
            return (Criteria) this;
        }

        public Criteria andJobcostNotIn(List<Integer> values) {
            addCriterion("JobCost not in", values, "jobcost");
            return (Criteria) this;
        }

        public Criteria andJobcostBetween(Integer value1, Integer value2) {
            addCriterion("JobCost between", value1, value2, "jobcost");
            return (Criteria) this;
        }

        public Criteria andJobcostNotBetween(Integer value1, Integer value2) {
            addCriterion("JobCost not between", value1, value2, "jobcost");
            return (Criteria) this;
        }

        public Criteria andJobstateIsNull() {
            addCriterion("JobState is null");
            return (Criteria) this;
        }

        public Criteria andJobstateIsNotNull() {
            addCriterion("JobState is not null");
            return (Criteria) this;
        }

        public Criteria andJobstateEqualTo(Integer value) {
            addCriterion("JobState =", value, "jobstate");
            return (Criteria) this;
        }

        public Criteria andJobstateNotEqualTo(Integer value) {
            addCriterion("JobState <>", value, "jobstate");
            return (Criteria) this;
        }

        public Criteria andJobstateGreaterThan(Integer value) {
            addCriterion("JobState >", value, "jobstate");
            return (Criteria) this;
        }

        public Criteria andJobstateGreaterThanOrEqualTo(Integer value) {
            addCriterion("JobState >=", value, "jobstate");
            return (Criteria) this;
        }

        public Criteria andJobstateLessThan(Integer value) {
            addCriterion("JobState <", value, "jobstate");
            return (Criteria) this;
        }

        public Criteria andJobstateLessThanOrEqualTo(Integer value) {
            addCriterion("JobState <=", value, "jobstate");
            return (Criteria) this;
        }

        public Criteria andJobstateIn(List<Integer> values) {
            addCriterion("JobState in", values, "jobstate");
            return (Criteria) this;
        }

        public Criteria andJobstateNotIn(List<Integer> values) {
            addCriterion("JobState not in", values, "jobstate");
            return (Criteria) this;
        }

        public Criteria andJobstateBetween(Integer value1, Integer value2) {
            addCriterion("JobState between", value1, value2, "jobstate");
            return (Criteria) this;
        }

        public Criteria andJobstateNotBetween(Integer value1, Integer value2) {
            addCriterion("JobState not between", value1, value2, "jobstate");
            return (Criteria) this;
        }

        public Criteria andJobtypeIsNull() {
            addCriterion("Jobtype is null");
            return (Criteria) this;
        }

        public Criteria andJobtypeIsNotNull() {
            addCriterion("Jobtype is not null");
            return (Criteria) this;
        }

        public Criteria andJobtypeEqualTo(Integer value) {
            addCriterion("Jobtype =", value, "jobtype");
            return (Criteria) this;
        }

        public Criteria andJobtypeNotEqualTo(Integer value) {
            addCriterion("Jobtype <>", value, "jobtype");
            return (Criteria) this;
        }

        public Criteria andJobtypeGreaterThan(Integer value) {
            addCriterion("Jobtype >", value, "jobtype");
            return (Criteria) this;
        }

        public Criteria andJobtypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("Jobtype >=", value, "jobtype");
            return (Criteria) this;
        }

        public Criteria andJobtypeLessThan(Integer value) {
            addCriterion("Jobtype <", value, "jobtype");
            return (Criteria) this;
        }

        public Criteria andJobtypeLessThanOrEqualTo(Integer value) {
            addCriterion("Jobtype <=", value, "jobtype");
            return (Criteria) this;
        }

        public Criteria andJobtypeIn(List<Integer> values) {
            addCriterion("Jobtype in", values, "jobtype");
            return (Criteria) this;
        }

        public Criteria andJobtypeNotIn(List<Integer> values) {
            addCriterion("Jobtype not in", values, "jobtype");
            return (Criteria) this;
        }

        public Criteria andJobtypeBetween(Integer value1, Integer value2) {
            addCriterion("Jobtype between", value1, value2, "jobtype");
            return (Criteria) this;
        }

        public Criteria andJobtypeNotBetween(Integer value1, Integer value2) {
            addCriterion("Jobtype not between", value1, value2, "jobtype");
            return (Criteria) this;
        }

        public Criteria andJobpublishuseridIsNull() {
            addCriterion("JobPublishUserId is null");
            return (Criteria) this;
        }

        public Criteria andJobpublishuseridIsNotNull() {
            addCriterion("JobPublishUserId is not null");
            return (Criteria) this;
        }

        public Criteria andJobpublishuseridEqualTo(Integer value) {
            addCriterion("JobPublishUserId =", value, "jobpublishuserid");
            return (Criteria) this;
        }

        public Criteria andJobpublishuseridNotEqualTo(Integer value) {
            addCriterion("JobPublishUserId <>", value, "jobpublishuserid");
            return (Criteria) this;
        }

        public Criteria andJobpublishuseridGreaterThan(Integer value) {
            addCriterion("JobPublishUserId >", value, "jobpublishuserid");
            return (Criteria) this;
        }

        public Criteria andJobpublishuseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("JobPublishUserId >=", value, "jobpublishuserid");
            return (Criteria) this;
        }

        public Criteria andJobpublishuseridLessThan(Integer value) {
            addCriterion("JobPublishUserId <", value, "jobpublishuserid");
            return (Criteria) this;
        }

        public Criteria andJobpublishuseridLessThanOrEqualTo(Integer value) {
            addCriterion("JobPublishUserId <=", value, "jobpublishuserid");
            return (Criteria) this;
        }

        public Criteria andJobpublishuseridIn(List<Integer> values) {
            addCriterion("JobPublishUserId in", values, "jobpublishuserid");
            return (Criteria) this;
        }

        public Criteria andJobpublishuseridNotIn(List<Integer> values) {
            addCriterion("JobPublishUserId not in", values, "jobpublishuserid");
            return (Criteria) this;
        }

        public Criteria andJobpublishuseridBetween(Integer value1, Integer value2) {
            addCriterion("JobPublishUserId between", value1, value2, "jobpublishuserid");
            return (Criteria) this;
        }

        public Criteria andJobpublishuseridNotBetween(Integer value1, Integer value2) {
            addCriterion("JobPublishUserId not between", value1, value2, "jobpublishuserid");
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