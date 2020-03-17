package com.hsd.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsd.job.mapper.UsercolljobMapper;
import com.hsd.job.mapper.UserinfoMapper;
import com.hsd.job.pojo.Usercolljob;
import com.hsd.job.pojo.UsercolljobExample;
import com.hsd.job.pojo.Userinfo;
import com.hsd.job.pojo.UsercolljobExample;
import com.hsd.job.pojo.UserinfoExample;
import com.hsd.job.pojo.UserinfoExample.Criteria;
import com.hsd.job.service.UserService;

/**
 * @ClassName: UserServiveImpl
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��1��20�� ����8:53:29
 * @author lpjz@foxmail.com
 * 
 */
@Service
public class UserServiveImpl implements UserService {

	// ����һ��˽�е�usermapper����
	@Autowired
	private UserinfoMapper userMapper;
	
	@Autowired
	private UsercolljobMapper usercolljobMapper;

	@Override
	public int addUser(Userinfo userinfo) {
		return userMapper.insert(userinfo);
	}

	@Override
	public List<Userinfo> findUserByName(String userName) {
		UserinfoExample example = new UserinfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andUsernameEqualTo(userName);
		return userMapper.selectByExample(example);
	}

	@Override
	public List<Userinfo> findUserByEmail(String userEmail) {
		UserinfoExample example = new UserinfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andUseremailEqualTo(userEmail);
		return userMapper.selectByExample(example);
	}

	@Override
	public List<Userinfo> findUserByNameAndPass(String userName, String userPass) {
		UserinfoExample example = new UserinfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andUsernameEqualTo(userName);
		criteria.andUserpassEqualTo(userPass);
		// ��Ϊ"1"��ʾ������װ״̬���û����ഫ��һ������
		criteria.andUserstateEqualTo(1);
		return userMapper.selectByExample(example);
	}

	@Override
	public int updateUserInfo(Userinfo user) {
		return userMapper.updateByPrimaryKey(user);
	}

	@Override
	public Userinfo findUserById(int id) {
		return userMapper.selectByPrimaryKey(id);
	}

	@Override
	public int cancelUserInfo(Userinfo user) {
		return userMapper.updateByPrimaryKey(user);
	}

	@Override
	public int collect_add(Usercolljob usercolljob) {
		return usercolljobMapper.insert(usercolljob);
	}

	@Override
	public int collect_del(Usercolljob usercolljob) {
		UsercolljobExample example=new UsercolljobExample();
		com.hsd.job.pojo.UsercolljobExample.Criteria criteria = example.createCriteria();
		criteria.andJobidEqualTo(usercolljob.getJobid());
		criteria.andUseridEqualTo(usercolljob.getUserid());
		return usercolljobMapper.deleteByExample(example);
	}
}
