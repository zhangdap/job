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
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年2月27日 下午10:43:43
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
		// 创建一个map保存数据
		Map<String, Object> map = new HashMap<String, Object>();
		// 先检测有没有登录
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
		// 创建一个map保存数据
		Map<String, Object> map = new HashMap<String, Object>();
		// 先检测有没有登录
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			//创建一个message对象
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
