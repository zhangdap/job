package com.hsd.job.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hsd.job.pojo.Message;
import com.hsd.job.pojo.Userinfo;
import com.hsd.job.service.MsgService;

/**
 * @ClassName: MsgController
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��2��27�� ����10:43:43
 * @author lpjz@foxmail.com
 * 
 */
@Controller
public class MsgController {

	@Autowired
	private MsgService msgService;

	@RequestMapping("/allMsgs")
	@ResponseBody
	public Map<String, Object> queryAllMsgByUserid(HttpServletRequest request) {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// �ȼ����û�е�¼
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			List<Message> messages = msgService.queryAllMsgByUserid(user.getUserid());
			map.put("info", "ok");
			map.put("messages", messages);
		}
		return map;
	}
	
	@RequestMapping("/changeMsgState")
	@ResponseBody
	public Map<String, Object> changeMsgState(HttpServletRequest request,int msgid) {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// �ȼ����û�е�¼
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			//����һ��message����
			Message message=new Message();
			message.setState(1);
			message.setMsgid(msgid);
			int  res = msgService.updateMsgStateByMsgid(message);
			if (res==1) {
				map.put("info", "ok");
			}
		}
		return map;
	}
	
	@RequestMapping("/message")
	public String queryMsgList(Model model,HttpServletRequest request){
		
		
		return null;
	}
}
