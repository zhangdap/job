package com.hsd.job.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MessageExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MessageExample() {
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

        public Criteria andMsgidIsNull() {
            addCriterion("msgid is null");
            return (Criteria) this;
        }

        public Criteria andMsgidIsNotNull() {
            addCriterion("msgid is not null");
            return (Criteria) this;
        }

        public Criteria andMsgidEqualTo(Integer value) {
            addCriterion("msgid =", value, "msgid");
            return (Criteria) this;
        }

        public Criteria andMsgidNotEqualTo(Integer value) {
            addCriterion("msgid <>", value, "msgid");
            return (Criteria) this;
        }

        public Criteria andMsgidGreaterThan(Integer value) {
            addCriterion("msgid >", value, "msgid");
            return (Criteria) this;
        }

        public Criteria andMsgidGreaterThanOrEqualTo(Integer value) {
            addCriterion("msgid >=", value, "msgid");
            return (Criteria) this;
        }

        public Criteria andMsgidLessThan(Integer value) {
            addCriterion("msgid <", value, "msgid");
            return (Criteria) this;
        }

        public Criteria andMsgidLessThanOrEqualTo(Integer value) {
            addCriterion("msgid <=", value, "msgid");
            return (Criteria) this;
        }

        public Criteria andMsgidIn(List<Integer> values) {
            addCriterion("msgid in", values, "msgid");
            return (Criteria) this;
        }

        public Criteria andMsgidNotIn(List<Integer> values) {
            addCriterion("msgid not in", values, "msgid");
            return (Criteria) this;
        }

        public Criteria andMsgidBetween(Integer value1, Integer value2) {
            addCriterion("msgid between", value1, value2, "msgid");
            return (Criteria) this;
        }

        public Criteria andMsgidNotBetween(Integer value1, Integer value2) {
            addCriterion("msgid not between", value1, value2, "msgid");
            return (Criteria) this;
        }

        public Criteria andMsgcontentIsNull() {
            addCriterion("msgcontent is null");
            return (Criteria) this;
        }

        public Criteria andMsgcontentIsNotNull() {
            addCriterion("msgcontent is not null");
            return (Criteria) this;
        }

        public Criteria andMsgcontentEqualTo(String value) {
            addCriterion("msgcontent =", value, "msgcontent");
            return (Criteria) this;
        }

        public Criteria andMsgcontentNotEqualTo(String value) {
            addCriterion("msgcontent <>", value, "msgcontent");
            return (Criteria) this;
        }

        public Criteria andMsgcontentGreaterThan(String value) {
            addCriterion("msgcontent >", value, "msgcontent");
            return (Criteria) this;
        }

        public Criteria andMsgcontentGreaterThanOrEqualTo(String value) {
            addCriterion("msgcontent >=", value, "msgcontent");
            return (Criteria) this;
        }

        public Criteria andMsgcontentLessThan(String value) {
            addCriterion("msgcontent <", value, "msgcontent");
            return (Criteria) this;
        }

        public Criteria andMsgcontentLessThanOrEqualTo(String value) {
            addCriterion("msgcontent <=", value, "msgcontent");
            return (Criteria) this;
        }

        public Criteria andMsgcontentLike(String value) {
            addCriterion("msgcontent like", value, "msgcontent");
            return (Criteria) this;
        }

        public Criteria andMsgcontentNotLike(String value) {
            addCriterion("msgcontent not like", value, "msgcontent");
            return (Criteria) this;
        }

        public Criteria andMsgcontentIn(List<String> values) {
            addCriterion("msgcontent in", values, "msgcontent");
            return (Criteria) this;
        }

        public Criteria andMsgcontentNotIn(List<String> values) {
            addCriterion("msgcontent not in", values, "msgcontent");
            return (Criteria) this;
        }

        public Criteria andMsgcontentBetween(String value1, String value2) {
            addCriterion("msgcontent between", value1, value2, "msgcontent");
            return (Criteria) this;
        }

        public Criteria andMsgcontentNotBetween(String value1, String value2) {
            addCriterion("msgcontent not between", value1, value2, "msgcontent");
            return (Criteria) this;
        }

        public Criteria andPostuseridIsNull() {
            addCriterion("postuserid is null");
            return (Criteria) this;
        }

        public Criteria andPostuseridIsNotNull() {
            addCriterion("postuserid is not null");
            return (Criteria) this;
        }

        public Criteria andPostuseridEqualTo(Integer value) {
            addCriterion("postuserid =", value, "postuserid");
            return (Criteria) this;
        }

        public Criteria andPostuseridNotEqualTo(Integer value) {
            addCriterion("postuserid <>", value, "postuserid");
            return (Criteria) this;
        }

        public Criteria andPostuseridGreaterThan(Integer value) {
            addCriterion("postuserid >", value, "postuserid");
            return (Criteria) this;
        }

        public Criteria andPostuseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("postuserid >=", value, "postuserid");
            return (Criteria) this;
        }

        public Criteria andPostuseridLessThan(Integer value) {
            addCriterion("postuserid <", value, "postuserid");
            return (Criteria) this;
        }

        public Criteria andPostuseridLessThanOrEqualTo(Integer value) {
            addCriterion("postuserid <=", value, "postuserid");
            return (Criteria) this;
        }

        public Criteria andPostuseridIn(List<Integer> values) {
            addCriterion("postuserid in", values, "postuserid");
            return (Criteria) this;
        }

        public Criteria andPostuseridNotIn(List<Integer> values) {
            addCriterion("postuserid not in", values, "postuserid");
            return (Criteria) this;
        }

        public Criteria andPostuseridBetween(Integer value1, Integer value2) {
            addCriterion("postuserid between", value1, value2, "postuserid");
            return (Criteria) this;
        }

        public Criteria andPostuseridNotBetween(Integer value1, Integer value2) {
            addCriterion("postuserid not between", value1, value2, "postuserid");
            return (Criteria) this;
        }

        public Criteria andGetuseridIsNull() {
            addCriterion("getuserid is null");
            return (Criteria) this;
        }

        public Criteria andGetuseridIsNotNull() {
            addCriterion("getuserid is not null");
            return (Criteria) this;
        }

        public Criteria andGetuseridEqualTo(Integer value) {
            addCriterion("getuserid =", value, "getuserid");
            return (Criteria) this;
        }

        public Criteria andGetuseridNotEqualTo(Integer value) {
            addCriterion("getuserid <>", value, "getuserid");
            return (Criteria) this;
        }

        public Criteria andGetuseridGreaterThan(Integer value) {
            addCriterion("getuserid >", value, "getuserid");
            return (Criteria) this;
        }

        public Criteria andGetuseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("getuserid >=", value, "getuserid");
            return (Criteria) this;
        }

        public Criteria andGetuseridLessThan(Integer value) {
            addCriterion("getuserid <", value, "getuserid");
            return (Criteria) this;
        }

        public Criteria andGetuseridLessThanOrEqualTo(Integer value) {
            addCriterion("getuserid <=", value, "getuserid");
            return (Criteria) this;
        }

        public Criteria andGetuseridIn(List<Integer> values) {
            addCriterion("getuserid in", values, "getuserid");
            return (Criteria) this;
        }

        public Criteria andGetuseridNotIn(List<Integer> values) {
            addCriterion("getuserid not in", values, "getuserid");
            return (Criteria) this;
        }

        public Criteria andGetuseridBetween(Integer value1, Integer value2) {
            addCriterion("getuserid between", value1, value2, "getuserid");
            return (Criteria) this;
        }

        public Criteria andGetuseridNotBetween(Integer value1, Integer value2) {
            addCriterion("getuserid not between", value1, value2, "getuserid");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNull() {
            addCriterion("createTime is null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNotNull() {
            addCriterion("createTime is not null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeEqualTo(Date value) {
            addCriterion("createTime =", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotEqualTo(Date value) {
            addCriterion("createTime <>", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThan(Date value) {
            addCriterion("createTime >", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("createTime >=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThan(Date value) {
            addCriterion("createTime <", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThanOrEqualTo(Date value) {
            addCriterion("createTime <=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIn(List<Date> values) {
            addCriterion("createTime in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotIn(List<Date> values) {
            addCriterion("createTime not in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeBetween(Date value1, Date value2) {
            addCriterion("createTime between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotBetween(Date value1, Date value2) {
            addCriterion("createTime not between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andStateIsNull() {
            addCriterion("state is null");
            return (Criteria) this;
        }

        public Criteria andStateIsNotNull() {
            addCriterion("state is not null");
            return (Criteria) this;
        }

        public Criteria andStateEqualTo(Integer value) {
            addCriterion("state =", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotEqualTo(Integer value) {
            addCriterion("state <>", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThan(Integer value) {
            addCriterion("state >", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThanOrEqualTo(Integer value) {
            addCriterion("state >=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThan(Integer value) {
            addCriterion("state <", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThanOrEqualTo(Integer value) {
            addCriterion("state <=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateIn(List<Integer> values) {
            addCriterion("state in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotIn(List<Integer> values) {
            addCriterion("state not in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateBetween(Integer value1, Integer value2) {
            addCriterion("state between", value1, value2, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotBetween(Integer value1, Integer value2) {
            addCriterion("state not between", value1, value2, "state");
            return (Criteria) this;
        }

        public Criteria andTypeIsNull() {
            addCriterion("type is null");
            return (Criteria) this;
        }

        public Criteria andTypeIsNotNull() {
            addCriterion("type is not null");
            return (Criteria) this;
        }

        public Criteria andTypeEqualTo(Integer value) {
            addCriterion("type =", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotEqualTo(Integer value) {
            addCriterion("type <>", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThan(Integer value) {
            addCriterion("type >", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("type >=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThan(Integer value) {
            addCriterion("type <", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThanOrEqualTo(Integer value) {
            addCriterion("type <=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeIn(List<Integer> values) {
            addCriterion("type in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotIn(List<Integer> values) {
            addCriterion("type not in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeBetween(Integer value1, Integer value2) {
            addCriterion("type between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("type not between", value1, value2, "type");
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