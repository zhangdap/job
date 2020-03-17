package com.hsd.job.pojo;

import java.util.ArrayList;
import java.util.List;

public class JobtypeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public JobtypeExample() {
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

        public Criteria andJobtypeidIsNull() {
            addCriterion("JobTypeId is null");
            return (Criteria) this;
        }

        public Criteria andJobtypeidIsNotNull() {
            addCriterion("JobTypeId is not null");
            return (Criteria) this;
        }

        public Criteria andJobtypeidEqualTo(Integer value) {
            addCriterion("JobTypeId =", value, "jobtypeid");
            return (Criteria) this;
        }

        public Criteria andJobtypeidNotEqualTo(Integer value) {
            addCriterion("JobTypeId <>", value, "jobtypeid");
            return (Criteria) this;
        }

        public Criteria andJobtypeidGreaterThan(Integer value) {
            addCriterion("JobTypeId >", value, "jobtypeid");
            return (Criteria) this;
        }

        public Criteria andJobtypeidGreaterThanOrEqualTo(Integer value) {
            addCriterion("JobTypeId >=", value, "jobtypeid");
            return (Criteria) this;
        }

        public Criteria andJobtypeidLessThan(Integer value) {
            addCriterion("JobTypeId <", value, "jobtypeid");
            return (Criteria) this;
        }

        public Criteria andJobtypeidLessThanOrEqualTo(Integer value) {
            addCriterion("JobTypeId <=", value, "jobtypeid");
            return (Criteria) this;
        }

        public Criteria andJobtypeidIn(List<Integer> values) {
            addCriterion("JobTypeId in", values, "jobtypeid");
            return (Criteria) this;
        }

        public Criteria andJobtypeidNotIn(List<Integer> values) {
            addCriterion("JobTypeId not in", values, "jobtypeid");
            return (Criteria) this;
        }

        public Criteria andJobtypeidBetween(Integer value1, Integer value2) {
            addCriterion("JobTypeId between", value1, value2, "jobtypeid");
            return (Criteria) this;
        }

        public Criteria andJobtypeidNotBetween(Integer value1, Integer value2) {
            addCriterion("JobTypeId not between", value1, value2, "jobtypeid");
            return (Criteria) this;
        }

        public Criteria andJobtypenameIsNull() {
            addCriterion("JobTypeName is null");
            return (Criteria) this;
        }

        public Criteria andJobtypenameIsNotNull() {
            addCriterion("JobTypeName is not null");
            return (Criteria) this;
        }

        public Criteria andJobtypenameEqualTo(String value) {
            addCriterion("JobTypeName =", value, "jobtypename");
            return (Criteria) this;
        }

        public Criteria andJobtypenameNotEqualTo(String value) {
            addCriterion("JobTypeName <>", value, "jobtypename");
            return (Criteria) this;
        }

        public Criteria andJobtypenameGreaterThan(String value) {
            addCriterion("JobTypeName >", value, "jobtypename");
            return (Criteria) this;
        }

        public Criteria andJobtypenameGreaterThanOrEqualTo(String value) {
            addCriterion("JobTypeName >=", value, "jobtypename");
            return (Criteria) this;
        }

        public Criteria andJobtypenameLessThan(String value) {
            addCriterion("JobTypeName <", value, "jobtypename");
            return (Criteria) this;
        }

        public Criteria andJobtypenameLessThanOrEqualTo(String value) {
            addCriterion("JobTypeName <=", value, "jobtypename");
            return (Criteria) this;
        }

        public Criteria andJobtypenameLike(String value) {
            addCriterion("JobTypeName like", value, "jobtypename");
            return (Criteria) this;
        }

        public Criteria andJobtypenameNotLike(String value) {
            addCriterion("JobTypeName not like", value, "jobtypename");
            return (Criteria) this;
        }

        public Criteria andJobtypenameIn(List<String> values) {
            addCriterion("JobTypeName in", values, "jobtypename");
            return (Criteria) this;
        }

        public Criteria andJobtypenameNotIn(List<String> values) {
            addCriterion("JobTypeName not in", values, "jobtypename");
            return (Criteria) this;
        }

        public Criteria andJobtypenameBetween(String value1, String value2) {
            addCriterion("JobTypeName between", value1, value2, "jobtypename");
            return (Criteria) this;
        }

        public Criteria andJobtypenameNotBetween(String value1, String value2) {
            addCriterion("JobTypeName not between", value1, value2, "jobtypename");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgIsNull() {
            addCriterion("JobTypeImg is null");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgIsNotNull() {
            addCriterion("JobTypeImg is not null");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgEqualTo(String value) {
            addCriterion("JobTypeImg =", value, "jobtypeimg");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgNotEqualTo(String value) {
            addCriterion("JobTypeImg <>", value, "jobtypeimg");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgGreaterThan(String value) {
            addCriterion("JobTypeImg >", value, "jobtypeimg");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgGreaterThanOrEqualTo(String value) {
            addCriterion("JobTypeImg >=", value, "jobtypeimg");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgLessThan(String value) {
            addCriterion("JobTypeImg <", value, "jobtypeimg");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgLessThanOrEqualTo(String value) {
            addCriterion("JobTypeImg <=", value, "jobtypeimg");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgLike(String value) {
            addCriterion("JobTypeImg like", value, "jobtypeimg");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgNotLike(String value) {
            addCriterion("JobTypeImg not like", value, "jobtypeimg");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgIn(List<String> values) {
            addCriterion("JobTypeImg in", values, "jobtypeimg");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgNotIn(List<String> values) {
            addCriterion("JobTypeImg not in", values, "jobtypeimg");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgBetween(String value1, String value2) {
            addCriterion("JobTypeImg between", value1, value2, "jobtypeimg");
            return (Criteria) this;
        }

        public Criteria andJobtypeimgNotBetween(String value1, String value2) {
            addCriterion("JobTypeImg not between", value1, value2, "jobtypeimg");
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