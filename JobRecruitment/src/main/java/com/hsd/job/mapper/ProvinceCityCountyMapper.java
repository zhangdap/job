package com.hsd.job.mapper;

import com.hsd.job.pojo.ProvinceCityCounty;
import com.hsd.job.pojo.ProvinceCityCountyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ProvinceCityCountyMapper {
    int countByExample(ProvinceCityCountyExample example);

    int deleteByExample(ProvinceCityCountyExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ProvinceCityCounty record);

    int insertSelective(ProvinceCityCounty record);

    List<ProvinceCityCounty> selectByExample(ProvinceCityCountyExample example);

    ProvinceCityCounty selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ProvinceCityCounty record, @Param("example") ProvinceCityCountyExample example);

    int updateByExample(@Param("record") ProvinceCityCounty record, @Param("example") ProvinceCityCountyExample example);

    int updateByPrimaryKeySelective(ProvinceCityCounty record);

    int updateByPrimaryKey(ProvinceCityCounty record);
}