package com.hsd.job.mapper;

import com.hsd.job.pojo.Usercolljob;
import com.hsd.job.pojo.UsercolljobExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UsercolljobMapper {
    int countByExample(UsercolljobExample example);

    int deleteByExample(UsercolljobExample example);

    int deleteByPrimaryKey(Integer ucid);

    int insert(Usercolljob record);

    int insertSelective(Usercolljob record);

    List<Usercolljob> selectByExample(UsercolljobExample example);

    Usercolljob selectByPrimaryKey(Integer ucid);

    int updateByExampleSelective(@Param("record") Usercolljob record, @Param("example") UsercolljobExample example);

    int updateByExample(@Param("record") Usercolljob record, @Param("example") UsercolljobExample example);

    int updateByPrimaryKeySelective(Usercolljob record);

    int updateByPrimaryKey(Usercolljob record);
}