package com.hsd.job.pojo;

import java.util.ArrayList;
import java.util.List;

public class CompanyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CompanyExample() {
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

        public Criteria andCompanyidIsNull() {
            addCriterion("CompanyId is null");
            return (Criteria) this;
        }

        public Criteria andCompanyidIsNotNull() {
            addCriterion("CompanyId is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyidEqualTo(Integer value) {
            addCriterion("CompanyId =", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidNotEqualTo(Integer value) {
            addCriterion("CompanyId <>", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidGreaterThan(Integer value) {
            addCriterion("CompanyId >", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidGreaterThanOrEqualTo(Integer value) {
            addCriterion("CompanyId >=", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidLessThan(Integer value) {
            addCriterion("CompanyId <", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidLessThanOrEqualTo(Integer value) {
            addCriterion("CompanyId <=", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidIn(List<Integer> values) {
            addCriterion("CompanyId in", values, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidNotIn(List<Integer> values) {
            addCriterion("CompanyId not in", values, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidBetween(Integer value1, Integer value2) {
            addCriterion("CompanyId between", value1, value2, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidNotBetween(Integer value1, Integer value2) {
            addCriterion("CompanyId not between", value1, value2, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanynameIsNull() {
            addCriterion("CompanyName is null");
            return (Criteria) this;
        }

        public Criteria andCompanynameIsNotNull() {
            addCriterion("CompanyName is not null");
            return (Criteria) this;
        }

        public Criteria andCompanynameEqualTo(String value) {
            addCriterion("CompanyName =", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameNotEqualTo(String value) {
            addCriterion("CompanyName <>", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameGreaterThan(String value) {
            addCriterion("CompanyName >", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameGreaterThanOrEqualTo(String value) {
            addCriterion("CompanyName >=", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameLessThan(String value) {
            addCriterion("CompanyName <", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameLessThanOrEqualTo(String value) {
            addCriterion("CompanyName <=", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameLike(String value) {
            addCriterion("CompanyName like", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameNotLike(String value) {
            addCriterion("CompanyName not like", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameIn(List<String> values) {
            addCriterion("CompanyName in", values, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameNotIn(List<String> values) {
            addCriterion("CompanyName not in", values, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameBetween(String value1, String value2) {
            addCriterion("CompanyName between", value1, value2, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameNotBetween(String value1, String value2) {
            addCriterion("CompanyName not between", value1, value2, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrIsNull() {
            addCriterion("CompanyAddr is null");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrIsNotNull() {
            addCriterion("CompanyAddr is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrEqualTo(String value) {
            addCriterion("CompanyAddr =", value, "companyaddr");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrNotEqualTo(String value) {
            addCriterion("CompanyAddr <>", value, "companyaddr");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrGreaterThan(String value) {
            addCriterion("CompanyAddr >", value, "companyaddr");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrGreaterThanOrEqualTo(String value) {
            addCriterion("CompanyAddr >=", value, "companyaddr");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrLessThan(String value) {
            addCriterion("CompanyAddr <", value, "companyaddr");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrLessThanOrEqualTo(String value) {
            addCriterion("CompanyAddr <=", value, "companyaddr");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrLike(String value) {
            addCriterion("CompanyAddr like", value, "companyaddr");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrNotLike(String value) {
            addCriterion("CompanyAddr not like", value, "companyaddr");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrIn(List<String> values) {
            addCriterion("CompanyAddr in", values, "companyaddr");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrNotIn(List<String> values) {
            addCriterion("CompanyAddr not in", values, "companyaddr");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrBetween(String value1, String value2) {
            addCriterion("CompanyAddr between", value1, value2, "companyaddr");
            return (Criteria) this;
        }

        public Criteria andCompanyaddrNotBetween(String value1, String value2) {
            addCriterion("CompanyAddr not between", value1, value2, "companyaddr");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneIsNull() {
            addCriterion("CompanyPhone is null");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneIsNotNull() {
            addCriterion("CompanyPhone is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneEqualTo(String value) {
            addCriterion("CompanyPhone =", value, "companyphone");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneNotEqualTo(String value) {
            addCriterion("CompanyPhone <>", value, "companyphone");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneGreaterThan(String value) {
            addCriterion("CompanyPhone >", value, "companyphone");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneGreaterThanOrEqualTo(String value) {
            addCriterion("CompanyPhone >=", value, "companyphone");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneLessThan(String value) {
            addCriterion("CompanyPhone <", value, "companyphone");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneLessThanOrEqualTo(String value) {
            addCriterion("CompanyPhone <=", value, "companyphone");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneLike(String value) {
            addCriterion("CompanyPhone like", value, "companyphone");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneNotLike(String value) {
            addCriterion("CompanyPhone not like", value, "companyphone");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneIn(List<String> values) {
            addCriterion("CompanyPhone in", values, "companyphone");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneNotIn(List<String> values) {
            addCriterion("CompanyPhone not in", values, "companyphone");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneBetween(String value1, String value2) {
            addCriterion("CompanyPhone between", value1, value2, "companyphone");
            return (Criteria) this;
        }

        public Criteria andCompanyphoneNotBetween(String value1, String value2) {
            addCriterion("CompanyPhone not between", value1, value2, "companyphone");
            return (Criteria) this;
        }

        public Criteria andCompanyemailIsNull() {
            addCriterion("CompanyEmail is null");
            return (Criteria) this;
        }

        public Criteria andCompanyemailIsNotNull() {
            addCriterion("CompanyEmail is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyemailEqualTo(String value) {
            addCriterion("CompanyEmail =", value, "companyemail");
            return (Criteria) this;
        }

        public Criteria andCompanyemailNotEqualTo(String value) {
            addCriterion("CompanyEmail <>", value, "companyemail");
            return (Criteria) this;
        }

        public Criteria andCompanyemailGreaterThan(String value) {
            addCriterion("CompanyEmail >", value, "companyemail");
            return (Criteria) this;
        }

        public Criteria andCompanyemailGreaterThanOrEqualTo(String value) {
            addCriterion("CompanyEmail >=", value, "companyemail");
            return (Criteria) this;
        }

        public Criteria andCompanyemailLessThan(String value) {
            addCriterion("CompanyEmail <", value, "companyemail");
            return (Criteria) this;
        }

        public Criteria andCompanyemailLessThanOrEqualTo(String value) {
            addCriterion("CompanyEmail <=", value, "companyemail");
            return (Criteria) this;
        }

        public Criteria andCompanyemailLike(String value) {
            addCriterion("CompanyEmail like", value, "companyemail");
            return (Criteria) this;
        }

        public Criteria andCompanyemailNotLike(String value) {
            addCriterion("CompanyEmail not like", value, "companyemail");
            return (Criteria) this;
        }

        public Criteria andCompanyemailIn(List<String> values) {
            addCriterion("CompanyEmail in", values, "companyemail");
            return (Criteria) this;
        }

        public Criteria andCompanyemailNotIn(List<String> values) {
            addCriterion("CompanyEmail not in", values, "companyemail");
            return (Criteria) this;
        }

        public Criteria andCompanyemailBetween(String value1, String value2) {
            addCriterion("CompanyEmail between", value1, value2, "companyemail");
            return (Criteria) this;
        }

        public Criteria andCompanyemailNotBetween(String value1, String value2) {
            addCriterion("CompanyEmail not between", value1, value2, "companyemail");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleIsNull() {
            addCriterion("CompanyScale is null");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleIsNotNull() {
            addCriterion("CompanyScale is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleEqualTo(String value) {
            addCriterion("CompanyScale =", value, "companyscale");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleNotEqualTo(String value) {
            addCriterion("CompanyScale <>", value, "companyscale");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleGreaterThan(String value) {
            addCriterion("CompanyScale >", value, "companyscale");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleGreaterThanOrEqualTo(String value) {
            addCriterion("CompanyScale >=", value, "companyscale");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleLessThan(String value) {
            addCriterion("CompanyScale <", value, "companyscale");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleLessThanOrEqualTo(String value) {
            addCriterion("CompanyScale <=", value, "companyscale");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleLike(String value) {
            addCriterion("CompanyScale like", value, "companyscale");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleNotLike(String value) {
            addCriterion("CompanyScale not like", value, "companyscale");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleIn(List<String> values) {
            addCriterion("CompanyScale in", values, "companyscale");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleNotIn(List<String> values) {
            addCriterion("CompanyScale not in", values, "companyscale");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleBetween(String value1, String value2) {
            addCriterion("CompanyScale between", value1, value2, "companyscale");
            return (Criteria) this;
        }

        public Criteria andCompanyscaleNotBetween(String value1, String value2) {
            addCriterion("CompanyScale not between", value1, value2, "companyscale");
            return (Criteria) this;
        }

        public Criteria andCompanynetIsNull() {
            addCriterion("CompanyNet is null");
            return (Criteria) this;
        }

        public Criteria andCompanynetIsNotNull() {
            addCriterion("CompanyNet is not null");
            return (Criteria) this;
        }

        public Criteria andCompanynetEqualTo(String value) {
            addCriterion("CompanyNet =", value, "companynet");
            return (Criteria) this;
        }

        public Criteria andCompanynetNotEqualTo(String value) {
            addCriterion("CompanyNet <>", value, "companynet");
            return (Criteria) this;
        }

        public Criteria andCompanynetGreaterThan(String value) {
            addCriterion("CompanyNet >", value, "companynet");
            return (Criteria) this;
        }

        public Criteria andCompanynetGreaterThanOrEqualTo(String value) {
            addCriterion("CompanyNet >=", value, "companynet");
            return (Criteria) this;
        }

        public Criteria andCompanynetLessThan(String value) {
            addCriterion("CompanyNet <", value, "companynet");
            return (Criteria) this;
        }

        public Criteria andCompanynetLessThanOrEqualTo(String value) {
            addCriterion("CompanyNet <=", value, "companynet");
            return (Criteria) this;
        }

        public Criteria andCompanynetLike(String value) {
            addCriterion("CompanyNet like", value, "companynet");
            return (Criteria) this;
        }

        public Criteria andCompanynetNotLike(String value) {
            addCriterion("CompanyNet not like", value, "companynet");
            return (Criteria) this;
        }

        public Criteria andCompanynetIn(List<String> values) {
            addCriterion("CompanyNet in", values, "companynet");
            return (Criteria) this;
        }

        public Criteria andCompanynetNotIn(List<String> values) {
            addCriterion("CompanyNet not in", values, "companynet");
            return (Criteria) this;
        }

        public Criteria andCompanynetBetween(String value1, String value2) {
            addCriterion("CompanyNet between", value1, value2, "companynet");
            return (Criteria) this;
        }

        public Criteria andCompanynetNotBetween(String value1, String value2) {
            addCriterion("CompanyNet not between", value1, value2, "companynet");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesIsNull() {
            addCriterion("CompanyImages is null");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesIsNotNull() {
            addCriterion("CompanyImages is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesEqualTo(String value) {
            addCriterion("CompanyImages =", value, "companyimages");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesNotEqualTo(String value) {
            addCriterion("CompanyImages <>", value, "companyimages");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesGreaterThan(String value) {
            addCriterion("CompanyImages >", value, "companyimages");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesGreaterThanOrEqualTo(String value) {
            addCriterion("CompanyImages >=", value, "companyimages");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesLessThan(String value) {
            addCriterion("CompanyImages <", value, "companyimages");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesLessThanOrEqualTo(String value) {
            addCriterion("CompanyImages <=", value, "companyimages");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesLike(String value) {
            addCriterion("CompanyImages like", value, "companyimages");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesNotLike(String value) {
            addCriterion("CompanyImages not like", value, "companyimages");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesIn(List<String> values) {
            addCriterion("CompanyImages in", values, "companyimages");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesNotIn(List<String> values) {
            addCriterion("CompanyImages not in", values, "companyimages");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesBetween(String value1, String value2) {
            addCriterion("CompanyImages between", value1, value2, "companyimages");
            return (Criteria) this;
        }

        public Criteria andCompanyimagesNotBetween(String value1, String value2) {
            addCriterion("CompanyImages not between", value1, value2, "companyimages");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoIsNull() {
            addCriterion("CompanyVideo is null");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoIsNotNull() {
            addCriterion("CompanyVideo is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoEqualTo(String value) {
            addCriterion("CompanyVideo =", value, "companyvideo");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoNotEqualTo(String value) {
            addCriterion("CompanyVideo <>", value, "companyvideo");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoGreaterThan(String value) {
            addCriterion("CompanyVideo >", value, "companyvideo");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoGreaterThanOrEqualTo(String value) {
            addCriterion("CompanyVideo >=", value, "companyvideo");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoLessThan(String value) {
            addCriterion("CompanyVideo <", value, "companyvideo");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoLessThanOrEqualTo(String value) {
            addCriterion("CompanyVideo <=", value, "companyvideo");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoLike(String value) {
            addCriterion("CompanyVideo like", value, "companyvideo");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoNotLike(String value) {
            addCriterion("CompanyVideo not like", value, "companyvideo");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoIn(List<String> values) {
            addCriterion("CompanyVideo in", values, "companyvideo");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoNotIn(List<String> values) {
            addCriterion("CompanyVideo not in", values, "companyvideo");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoBetween(String value1, String value2) {
            addCriterion("CompanyVideo between", value1, value2, "companyvideo");
            return (Criteria) this;
        }

        public Criteria andCompanyvideoNotBetween(String value1, String value2) {
            addCriterion("CompanyVideo not between", value1, value2, "companyvideo");
            return (Criteria) this;
        }

        public Criteria andCompanydescIsNull() {
            addCriterion("CompanyDesc is null");
            return (Criteria) this;
        }

        public Criteria andCompanydescIsNotNull() {
            addCriterion("CompanyDesc is not null");
            return (Criteria) this;
        }

        public Criteria andCompanydescEqualTo(String value) {
            addCriterion("CompanyDesc =", value, "companydesc");
            return (Criteria) this;
        }

        public Criteria andCompanydescNotEqualTo(String value) {
            addCriterion("CompanyDesc <>", value, "companydesc");
            return (Criteria) this;
        }

        public Criteria andCompanydescGreaterThan(String value) {
            addCriterion("CompanyDesc >", value, "companydesc");
            return (Criteria) this;
        }

        public Criteria andCompanydescGreaterThanOrEqualTo(String value) {
            addCriterion("CompanyDesc >=", value, "companydesc");
            return (Criteria) this;
        }

        public Criteria andCompanydescLessThan(String value) {
            addCriterion("CompanyDesc <", value, "companydesc");
            return (Criteria) this;
        }

        public Criteria andCompanydescLessThanOrEqualTo(String value) {
            addCriterion("CompanyDesc <=", value, "companydesc");
            return (Criteria) this;
        }

        public Criteria andCompanydescLike(String value) {
            addCriterion("CompanyDesc like", value, "companydesc");
            return (Criteria) this;
        }

        public Criteria andCompanydescNotLike(String value) {
            addCriterion("CompanyDesc not like", value, "companydesc");
            return (Criteria) this;
        }

        public Criteria andCompanydescIn(List<String> values) {
            addCriterion("CompanyDesc in", values, "companydesc");
            return (Criteria) this;
        }

        public Criteria andCompanydescNotIn(List<String> values) {
            addCriterion("CompanyDesc not in", values, "companydesc");
            return (Criteria) this;
        }

        public Criteria andCompanydescBetween(String value1, String value2) {
            addCriterion("CompanyDesc between", value1, value2, "companydesc");
            return (Criteria) this;
        }

        public Criteria andCompanydescNotBetween(String value1, String value2) {
            addCriterion("CompanyDesc not between", value1, value2, "companydesc");
            return (Criteria) this;
        }

        public Criteria andCompanystateIsNull() {
            addCriterion("CompanyState is null");
            return (Criteria) this;
        }

        public Criteria andCompanystateIsNotNull() {
            addCriterion("CompanyState is not null");
            return (Criteria) this;
        }

        public Criteria andCompanystateEqualTo(Integer value) {
            addCriterion("CompanyState =", value, "companystate");
            return (Criteria) this;
        }

        public Criteria andCompanystateNotEqualTo(Integer value) {
            addCriterion("CompanyState <>", value, "companystate");
            return (Criteria) this;
        }

        public Criteria andCompanystateGreaterThan(Integer value) {
            addCriterion("CompanyState >", value, "companystate");
            return (Criteria) this;
        }

        public Criteria andCompanystateGreaterThanOrEqualTo(Integer value) {
            addCriterion("CompanyState >=", value, "companystate");
            return (Criteria) this;
        }

        public Criteria andCompanystateLessThan(Integer value) {
            addCriterion("CompanyState <", value, "companystate");
            return (Criteria) this;
        }

        public Criteria andCompanystateLessThanOrEqualTo(Integer value) {
            addCriterion("CompanyState <=", value, "companystate");
            return (Criteria) this;
        }

        public Criteria andCompanystateIn(List<Integer> values) {
            addCriterion("CompanyState in", values, "companystate");
            return (Criteria) this;
        }

        public Criteria andCompanystateNotIn(List<Integer> values) {
            addCriterion("CompanyState not in", values, "companystate");
            return (Criteria) this;
        }

        public Criteria andCompanystateBetween(Integer value1, Integer value2) {
            addCriterion("CompanyState between", value1, value2, "companystate");
            return (Criteria) this;
        }

        public Criteria andCompanystateNotBetween(Integer value1, Integer value2) {
            addCriterion("CompanyState not between", value1, value2, "companystate");
            return (Criteria) this;
        }

        public Criteria andCompanytypeIsNull() {
            addCriterion("CompanyType is null");
            return (Criteria) this;
        }

        public Criteria andCompanytypeIsNotNull() {
            addCriterion("CompanyType is not null");
            return (Criteria) this;
        }

        public Criteria andCompanytypeEqualTo(String value) {
            addCriterion("CompanyType =", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeNotEqualTo(String value) {
            addCriterion("CompanyType <>", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeGreaterThan(String value) {
            addCriterion("CompanyType >", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeGreaterThanOrEqualTo(String value) {
            addCriterion("CompanyType >=", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeLessThan(String value) {
            addCriterion("CompanyType <", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeLessThanOrEqualTo(String value) {
            addCriterion("CompanyType <=", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeLike(String value) {
            addCriterion("CompanyType like", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeNotLike(String value) {
            addCriterion("CompanyType not like", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeIn(List<String> values) {
            addCriterion("CompanyType in", values, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeNotIn(List<String> values) {
            addCriterion("CompanyType not in", values, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeBetween(String value1, String value2) {
            addCriterion("CompanyType between", value1, value2, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeNotBetween(String value1, String value2) {
            addCriterion("CompanyType not between", value1, value2, "companytype");
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