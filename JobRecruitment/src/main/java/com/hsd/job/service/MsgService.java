package com.hsd.job.service;

import java.util.List;

import com.hsd.job.pojo.Message;

/**  
* @ClassName: MsgService  
* @Description: TODO(������һ�仰��������������)
* @date 2019��2��27�� ����10:44:16    
* @author lpjz@foxmail.com
*    
*/
public interface MsgService {

	int msg_add(Message message);

	List<Message> queryAllMsgByUserid(Integer userid);

	int updateMsgStateByMsgid(Message msg);
}
