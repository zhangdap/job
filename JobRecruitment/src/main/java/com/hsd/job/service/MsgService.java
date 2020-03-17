package com.hsd.job.service;

import java.util.List;

import com.hsd.job.pojo.Message;

/**  
* @ClassName: MsgService  
* @Description: TODO(这里用一句话描述这个类的作用)
* @date 2019年2月27日 下午10:44:16    
* @author lpjz@foxmail.com
*    
*/
public interface MsgService {

	int msg_add(Message message);

	List<Message> queryAllMsgByUserid(Integer userid);

	int updateMsgStateByMsgid(Message msg);
}
