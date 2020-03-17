package com.hsd.job.mapper;

import com.hsd.job.pojo.Userappjob;
import com.hsd.job.pojo.UserappjobExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserappjobMapper {
    int countByExample(UserappjobExample example);

    int deleteByExample(UserappjobExample example);

    int deleteByPrimaryKey(Integer apid);

    int insert(Userappjob record);

    int insertSelective(Userappjob record);

    List<Userappjob> selectByExample(UserappjobExample example);

    Userappjob selectByPrimaryKey(Integer apid);

    int updateByExampleSelective(@Param("record") Userappjob record, @Param("example") UserappjobExample example);

    int updateByExample(@Param("record") Userappjob record, @Param("example") UserappjobExample example);

    int updateByPrimaryKeySelective(Userappjob record);

    int updateByPrimaryKey(Userappjob record);
}