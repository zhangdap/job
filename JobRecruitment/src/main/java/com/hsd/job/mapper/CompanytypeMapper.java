package com.hsd.job.mapper;

import com.hsd.job.pojo.Companytype;
import com.hsd.job.pojo.CompanytypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CompanytypeMapper {
    int countByExample(CompanytypeExample example);

    int deleteByExample(CompanytypeExample example);

    int deleteByPrimaryKey(Integer companytypeid);

    int insert(Companytype record);

    int insertSelective(Companytype record);

    List<Companytype> selectByExample(CompanytypeExample example);

    Companytype selectByPrimaryKey(Integer companytypeid);

    int updateByExampleSelective(@Param("record") Companytype record, @Param("example") CompanytypeExample example);

    int updateByExample(@Param("record") Companytype record, @Param("example") CompanytypeExample example);

    int updateByPrimaryKeySelective(Companytype record);

    int updateByPrimaryKey(Companytype record);
}