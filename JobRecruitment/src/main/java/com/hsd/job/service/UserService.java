package com.hsd.job.service;

import java.util.List;
import java.util.Map;

import com.hsd.job.pojo.Usercolljob;
import com.hsd.job.pojo.Userinfo;

/**
 * @ClassName: UserService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年1月20日 下午8:52:06
 * @author lpjz@foxmail.com
 * 
 */
public interface UserService {

	public int addUser(Userinfo userinfo);

	public List<Userinfo> findUserByName(String userName);

	public Userinfo findUserById(int id);

	public List<Userinfo> findUserByEmail(String userEmail);

	public List<Userinfo> findUserByNameAndPass(String userName, String userPass);

	public int updateUserInfo(Userinfo user);

	public int cancelUserInfo(Userinfo user);

	public int collect_del(Usercolljob usercolljob);

	public int collect_add(Usercolljob usercolljob);
}
