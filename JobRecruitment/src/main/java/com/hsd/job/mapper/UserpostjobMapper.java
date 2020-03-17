package com.hsd.job.mapper;

import com.hsd.job.pojo.Userpostjob;
import com.hsd.job.pojo.UserpostjobExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserpostjobMapper {
    int countByExample(UserpostjobExample example);

    int deleteByExample(UserpostjobExample example);

    int deleteByPrimaryKey(Integer upid);

    int insert(Userpostjob record);

    int insertSelective(Userpostjob record);

    List<Userpostjob> selectByExample(UserpostjobExample example);

    Userpostjob selectByPrimaryKey(Integer upid);

    int updateByExampleSelective(@Param("record") Userpostjob record, @Param("example") UserpostjobExample example);

    int updateByExample(@Param("record") Userpostjob record, @Param("example") UserpostjobExample example);

    int updateByPrimaryKeySelective(Userpostjob record);

    int updateByPrimaryKey(Userpostjob record);
}