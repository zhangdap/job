package com.hsd.job.mapper;

import com.hsd.job.pojo.Resumeinfo;
import com.hsd.job.pojo.ResumeinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ResumeinfoMapper {
    int countByExample(ResumeinfoExample example);

    int deleteByExample(ResumeinfoExample example);

    int deleteByPrimaryKey(Integer resumeid);

    int insert(Resumeinfo record);

    int insertSelective(Resumeinfo record);

    List<Resumeinfo> selectByExample(ResumeinfoExample example);

    Resumeinfo selectByPrimaryKey(Integer resumeid);

    int updateByExampleSelective(@Param("record") Resumeinfo record, @Param("example") ResumeinfoExample example);

    int updateByExample(@Param("record") Resumeinfo record, @Param("example") ResumeinfoExample example);

    int updateByPrimaryKeySelective(Resumeinfo record);

    int updateByPrimaryKey(Resumeinfo record);
}