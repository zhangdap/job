package com.hsd.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsd.job.mapper.MessageMapper;
import com.hsd.job.pojo.Message;
import com.hsd.job.pojo.MessageExample;
import com.hsd.job.pojo.MessageExample.Criteria;
import com.hsd.job.service.MsgService;

/**
 * @ClassName: MsgServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年2月27日 下午10:44:44
 * @author lpjz@foxmail.com
 * 
 */

@Service
public class MsgServiceImpl implements MsgService {
	@Autowired
	private MessageMapper messageMapper;

	@Override
	public int msg_add(Message message) {
		return messageMapper.insert(message);
	}
	@Override
	public List<Message> queryAllMsgByUserid(Integer userid) {
		MessageExample example = new MessageExample();
		Criteria criteria = example.createCriteria();
		criteria.andGetuseridEqualTo(userid);
		criteria.andStateEqualTo(0);
		return messageMapper.selectByExample(example);
	}

	@Override
	public int updateMsgStateByMsgid(Message msg) {
		MessageExample example = new MessageExample();
		Criteria criteria = example.createCriteria();
		return messageMapper.updateByPrimaryKeySelective(msg);
	}

}
