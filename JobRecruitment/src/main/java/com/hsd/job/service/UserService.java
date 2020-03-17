package com.hsd.job.service;

import java.util.List;
import java.util.Map;

import com.hsd.job.pojo.Usercolljob;
import com.hsd.job.pojo.Userinfo;

/**
 * @ClassName: UserService
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��1��20�� ����8:52:06
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
