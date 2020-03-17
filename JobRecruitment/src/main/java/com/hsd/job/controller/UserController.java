package com.hsd.job.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hsd.job.pojo.Company;
import com.hsd.job.pojo.Message;
import com.hsd.job.pojo.Resumeinfo;
import com.hsd.job.pojo.Userappjob;
import com.hsd.job.pojo.Usercolljob;
import com.hsd.job.pojo.Userinfo;
import com.hsd.job.service.ApplyJobService;
import com.hsd.job.service.CompanyService;
import com.hsd.job.service.MsgService;
import com.hsd.job.service.ResumeService;
import com.hsd.job.service.UserService;
import com.hsd.job.util.StatisticsUtil;
import com.hsd.job.util.TxFileUploadUtil;
import com.hsd.job.util.md5util;

/**
 * @ClassName: UserController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年1月20日 下午8:55:09
 * @author lpjz@foxmail.com
 * 
 */
@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private CompanyService companyService;

	@Autowired
	private ResumeService resumeService;

	@Autowired
	private ApplyJobService applyJobService;

	@Autowired
	private MsgService msgService;

	// 用户注册
	@RequestMapping("/regist")
	public String regist(Userinfo user, HttpServletRequest request) {
		// 获得session
		HttpSession session = request.getSession();
		// 调用md5算法对用户密码进行加密
		// user.setUserpass(md5util.getMD5(user.getUserpass()));
		// 调用service层
		// 根据用户的身份类型做出不同的操作
		// 设置user的状态为1
		user.setUserstate(1);
		//在注册之前就先将这个人的简历的信息创建出来
		//先创建一个简历对象
		int res = userService.addUser(user);
		//就是你必须先知道你注册之后的人的id是什么
		Resumeinfo resumeinfo=new Resumeinfo();
		if (user.getUsertype()==1) {
			//将传回来的userid放入简历中
			resumeinfo.setUserid(user.getUserid());
			//开始将简历保存起来
			int result = resumeService.addResume(resumeinfo);
		}
		// 根据数据库操作的结果返回响应的信息
		if (res == 1) {
			// 保存成功就将信息存储在session中
			session.setAttribute("loginUser", user);
			// 根据注册信息跳转到不同的页面完善个人信息1：求职用户，2：招聘用户
			if (user.getUsertype() == 1) {
				// 求职者完善信息界面
				return "dashboard-edit-profile";
			} else {
				// 招聘者完善信息界面
				return "employer-dashboard-edit-profile";
			}
		} else {
			return "404";
		}
	}

	// 用户注册时用户名是否重复查询findUserByName
	@RequestMapping("/findUserByName")
	@ResponseBody
	public Map<String, String> findUserByName(String userName) {
		// 创建一个map保存信息
		Map<String, String> map = new HashMap<>();
		// 调用service层
		// 根据数据库操作的结果返回响应的信息
		List<Userinfo> users = userService.findUserByName(userName);
		System.out.println("users:" + users);
		if (users == null || users.size() == 0) {
			map.put("info", "ok");
		} else {
			map.put("info", "error");
		}
		return map;
	}

	@RequestMapping("/findUserByEmail")
	@ResponseBody
	public Map<String, String> findUserByEmail(String userEmail) {
		// 创建一个map保存信息
		Map<String, String> map = new HashMap<>();
		// 调用service层
		// 根据数据库操作的结果返回响应的信息
		List<Userinfo> users = userService.findUserByEmail(userEmail);
		System.out.println("users:" + users);
		if (users == null || users.size() == 0) {
			map.put("info", "ok");
		} else {
			map.put("info", "error");
		}
		return map;
	}

	@RequestMapping("/login")
	@ResponseBody
	public ModelAndView login(HttpServletRequest request, String loginusername, String loginpassword) {
		// 调用md5算法对用户的密码进行加密，暂时还未使用
		String userPass = md5util.getMD5(loginpassword.trim());
		// 创建一个试图对象
		ModelAndView model = new ModelAndView();
		// 根据数据库操作的结果返回响应的信息
		List<Userinfo> users = userService.findUserByNameAndPass(loginusername.trim(),loginpassword);
		// 获得session对象
		HttpSession session = request.getSession();
		if (users != null && users.size() != 0) {
			// 将查询的结果保存到session中
			// 开始测算简历的完整度
			int percentage = StatisticsUtil.Percentage(users.get(0));
			// 将完整度保存在session中
			session.setAttribute("percentage", percentage);
			session.setAttribute("loginUser", users.get(0));
			// 登录完成之后跳转到首页
			model.setViewName("index");
			session.setAttribute("loginInfo", "yes");
		} else {
			session.setAttribute("loginInfo", "error");
			// 登录失败跳转到失败信息提示界面
			model.setViewName("loginError");
		}
		return model;
	}

	@RequestMapping("/before")
	public ModelAndView postjob(HttpServletRequest request, String jspName) {
		// 获取页面的请求url里面的参数(增加对于参数的处理)
		String param = request.getQueryString();
		if (param.contains("&")) {
			param = param.substring(param.indexOf("&") + 1);
		}
		// 解析获得字符串重新组合新的参数
		// 获得session
		HttpSession session = request.getSession();
		// 将参数保存到session中
		if (!param.equals("") || param != null) {
			// 当session中存储相同key的值时。就会将以前的value覆盖
			session.setAttribute("param", "?" + param);
		}
		// 创建一个视图对象
		ModelAndView modView = new ModelAndView();
		// 获得session里面的登陆信息判断是否登陆
		Userinfo loginUser = (Userinfo) session.getAttribute("loginUser");
		// 当查询时查询结果为：空，或者查询到多条结果时返回error
		if (loginUser == null) {
			// 如果没有登录就跳转到首页
			modView.setViewName("404");
		} else {
			// 判断当前登录的人的角色
			if (loginUser.getUsertype() == 2) {
				// 将当前登录的人所在的公司的信息查询出来

			}
			modView.setViewName(jspName);
		}
		return modView;
	}

	@RequestMapping("/getLoginUser")
	@ResponseBody
	public ModelAndView getLoginUser(HttpServletRequest request) {
		// 创建一个视图对象
		ModelAndView modView = new ModelAndView("post-job");
		// 创建一个map保存信息
		Map<String, Object> map = new HashMap<>();
		// 获得session里面的登陆信息判断是否登陆
		Userinfo loginUser = (Userinfo) request.getSession().getAttribute("loginUser");
		// System.out.println("loginUser:"+loginUser);
		// 当查询时查询结果为：空，或者查询到多条结果时返回error
		if (loginUser == null) {
			map.put("info", "error");
		} else {
			map.put("loginUser", loginUser);
		}
		// 将map数据保存起来
		modView.addObject("map", map);
		return modView;
	}

	// 退出登录
	@RequestMapping("/loginOut")
	public String loginOut(HttpServletRequest request) {
		// 销毁session里面的登录对象
		request.getSession().removeAttribute("loginUser");
		request.getSession().removeAttribute("percentage");
		// 不管在哪里退出的都必须回到首页
		return "index";
	}

	@RequestMapping("/updateUser")
	public String UpdateUserInfo(Userinfo user, HttpServletRequest request,
			@RequestParam(value = "fileName", required = false) MultipartFile file, String newpwd) {
		// 调用上传组件将文件上传到腾讯上
		if (file.getOriginalFilename() != "") {
			try {
				String url = TxFileUploadUtil.upLoadSSM(request, file);
				user.setUserhead(url);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 因为是只有在登录状态下才能进入这个界面，所以可以直接从session里面获取这个人的信息
		HttpSession session = request.getSession();
		// 获得登录的这个人
		Userinfo u = (Userinfo) session.getAttribute("loginUser");
		// 将之前注册的信息转移到新的对象中
		user.setUserid(u.getUserid());
		user.setUsername(u.getUsername());
		user.setUseremail(u.getUseremail());
		user.setUsertype(u.getUsertype());
		if (newpwd == null || newpwd.equals("")) {
			user.setUserpass(u.getUserpass());
		} else {
			user.setUserpass(newpwd);
		}
		if (user.getUserhead() == null) {
			user.setUserhead(u.getUserhead());
		}
		user.setUserstate(1);
		int res = userService.updateUserInfo(user);
		if (res == 1) {
			// 更新登录的session里面的信息要修改
			// 先执行查询将当前这个人的查询出来
			Userinfo loginUser = userService.findUserById(user.getUserid());
			session.setAttribute("loginUser", loginUser);
			return "index";
		} else {
			return "404";
		}
	}

	// 注销用户信息
	@RequestMapping("/cancelUserInfo")
	public String cancelUserInfo(HttpServletRequest request) {
		// 获取当前session里面登录信息的信息
		HttpSession session = request.getSession();
		Userinfo user = (Userinfo) session.getAttribute("loginUser");
		// 将对象的状态改为2,即不可用状态
		user.setUserstate(2);
		// 调用service层的数据
		userService.cancelUserInfo(user);
		// 清空session 里面的登陆信息
		session.removeAttribute("loginUser");
		return "index";
	}

	// 招聘人员更新资料
	@RequestMapping("/editUserInfo")
	public String editEmpInfo(HttpServletRequest request, Userinfo userInfo, Company company,
			@RequestParam("companyImg") MultipartFile companyImg, @RequestParam("userImg") MultipartFile userImg,
			@RequestParam("videoName") MultipartFile companyvideo, String newpwd) {
		String videoPath = null;
		String userImgPath = null;
		String companyImgPath = null;
		// 获取当前登录的人的信息
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		// https://jobpic-1258185724.cos.ap-guangzhou.myqcloud.com/image/df703a123d6a4d209a68daa19a6e8c0d.mp4
		// 第一步就是将文件先上传到tx上,先将三份需要上传的文件传上去这个判断是必须的，不然会有重复上传的现象
		if (companyImg.getOriginalFilename() != null && !companyImg.getOriginalFilename().equals("")
				&& !companyImg.getOriginalFilename().contains("obpic-1258185724")) {
			try {
				companyImgPath = TxFileUploadUtil.upLoadSSM(request, companyImg);
				company.setCompanyimages(companyImgPath);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (userImg.getOriginalFilename() != null && !userImg.getOriginalFilename().equals("")
				&& !userImg.getOriginalFilename().contains("obpic-1258185724")) {
			try {
				userImgPath = TxFileUploadUtil.upLoadSSM(request, userImg);
				user.setUserhead(userImgPath);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (companyvideo.getOriginalFilename() != null && !companyvideo.getOriginalFilename().equals("")
				&& !companyvideo.getOriginalFilename().contains("obpic-1258185724")) {
			try {
				String vPath = TxFileUploadUtil.upLoadSSM(request, companyvideo);
				// 处理这个字符串加上https,视频是真的捞
				String[] temp = vPath.split(":");
				videoPath = temp[0] + "s:" + temp[1];
				company.setCompanyvideo(videoPath);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		user.setUserid(user.getUserid());
		if (userInfo.getUsername() != null) {
			user.setUsername(userInfo.getUsername());
		}
		if (userInfo.getUseremail() != null) {
			user.setUseremail(userInfo.getUseremail());
		}
		if (userInfo.getUserphone() != null) {
			user.setUserphone(userInfo.getUserphone());
		}
		if (userInfo.getUseraddr() != null) {
			user.setUseraddr(userInfo.getUseraddr());
		}
		if (userInfo.getUserskill() != null) {
			user.setUserskill(userInfo.getUserskill());
		}
		if (userInfo.getUserdesc() != null) {
			user.setUserdesc(userInfo.getUserdesc());
		}
		// 密码的处理
		if (newpwd != null && !newpwd.equals("")) {
			user.setUserpass(newpwd);
		} else {
		}
		// 处理其他信息将公司信息以及个人信息先存进数据库,在这之前先判断，之前有没有companyId
		if (user.getUsercompanyid() == null) {
			company.setCompanystate(1);
			int result = companyService.insertCompany(company);
			if (result == 1) {
				user.setUsercompanyid(company.getCompanyid());
				userService.updateUserInfo(user);
			}
		} else {
			company.setCompanyid(user.getUsercompanyid());
			int res = companyService.updateCompanyInfo(company);
			if (res == 1) {
				// 更新公司信息成功后就更新个人信息
				userService.updateUserInfo(user);
			}
		}
		return "index";
	}

	@RequestMapping("/uploadresume")
	@ResponseBody
	public Map<String, Object> uploadresume(HttpServletRequest request, Resumeinfo resume,
			@RequestParam("fileName") MultipartFile file) throws Exception {
		// 创建一个map保存数据
		Map<String, Object> map = new HashMap<>();
		// 获取当前的登陆的
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user != null) {
			resume.setUserid(user.getUserid());
			resume.setResumetype(0);
			if (file.getOriginalFilename() != null && !file.getOriginalFilename().equals("")) {
				// 开始上传文件
				resume.setResumefilename(file.getOriginalFilename());
				String url = TxFileUploadUtil.upLoadSSM(request, file);
				resume.setResumeurl(url);
				// 保存至数据库
				int res = resumeService.addResume(resume);
				if (res == 1) {
					map.put("msg", "ok");
				} else {
					map.put("msg", "error");
				}
			}
		}
		return map;
	}

	@RequestMapping("/collect")
	@ResponseBody
	public Map<String, String> collect_add(int jobid, int op, HttpServletRequest request) {
		// 创建一个map保存数据
		Map<String, String> map = new HashMap<String, String>();
		// 先判断有没有登录，然后再说
		Userinfo loginuser = (Userinfo) request.getSession().getAttribute("loginUser");
		if (loginuser == null) {
			// 直接去错误界面提示登录
			map.put("info", "error");
		} else {
			Usercolljob usercolljob = new Usercolljob();
			usercolljob.setJobid(jobid);
			usercolljob.setUserid(loginuser.getUserid());
			if (op == 1) {
				int res = userService.collect_add(usercolljob);
				if (res == 1) {
					String content = "您发布了收藏了新工作";
					Message message = new Message();
					message.setMsgcontent(content);
					message.setCreatetime(new Date());
					message.setGetuserid(loginuser.getUserid());
					message.setPostuserid(0);
					message.setState(0);
					message.setType(2);
					msgService.msg_add(message);
					map.put("info", "ok");
				}
			} else {
				int re = userService.collect_del(usercolljob);
				if (re == 1) {
					map.put("info", "ok");
				}
			}
		}
		return map;

	}

	// 这个人申请一个职位
	@RequestMapping("/applyJob")
	@ResponseBody
	public Map<String, Object> ApplyJob(int getuserid, String jobname, int jobid, HttpServletRequest request) {
		// 创建一个map保存数据
		Map<String, Object> map = new HashMap<String, Object>();
		// 创建一个msg对象封装数据
		Message message = new Message();
		message.setCreatetime(new Date());
		message.setGetuserid(getuserid);
		// 获取当前登录的人
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// 这里面需要做两件事发送消息以及添加申请职位进数据库
			message.setPostuserid(user.getUserid());
			// 设置初始状态，0表示状态为未读状态
			message.setState(0);
			// 消息类型(共有信息0，只属于求职者1，只属于招聘者2)
			message.setType(2);
			// 设置信息内容
			String msg = user.getUsername() + "申请了您发布的" + jobname + "的岗位";
			message.setMsgcontent(msg);
			// 开始保存消息
			// 开始保存添加的信息
			Userappjob userappjob = new Userappjob();
			userappjob.setJobid(jobid);
			userappjob.setUserid(user.getUserid());
			// 当前状态(是否已经被查看0:没看，2看过了)
			userappjob.setState(0);
			// 开始保存了
			// 在执行查询之前先看看这个人有没有申请过这个职位
			List<Userappjob> appInfo = applyJobService.queryAppJobIfApplyed(userappjob);
			if (appInfo == null || appInfo.size() == 0) {
				int res = msgService.msg_add(message);
				int result = applyJobService.apply_add(userappjob);
				if (res == 1 && result == 1) {
					map.put("info", "ok");
				}
			} else {
				map.put("info", "exist");
			}
		}
		return map;
	}

	@RequestMapping("/postinfoToApply")
	@ResponseBody
	public Map<String, Object> postinfoToApply(HttpServletRequest request,String companyName, int userid, int jobid, String content) {
		// 先创建一个map保存数据
		Map<String, Object> map = new HashMap<>();
		// 获取当前登录的人
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// 判断他发过信息没有
			List<Userappjob> jobs = applyJobService.queryIfPassApply(userid, jobid);
			if (jobs.get(0).getState() == 0) {
				Message message = new Message();
				message.setPostuserid(user.getUserid());
				message.setGetuserid(userid);
				message.setMsgcontent(companyName+":"+content);
				message.setState(0);
				message.setType(2);
				message.setCreatetime(new Date());
				int result = msgService.msg_add(message);
				int res = applyJobService.updateStateApplyJob(userid, jobid);
				if (res == 1 && result == 1) {
					map.put("info", "ok");
				}
			} else {
				map.put("info", "exist");
			}
			// 要做两件事先将申请通过，保存一条消息
			// 组装信息对象
		}
		return map;
	}
/*	2015年7月-2019年9月,淮北师范大学,计算机（本科）,
	jQuery设计的宗旨是“write Less，Do More”，
	即倡导写更少的代码，做更多的事情。它封装JavaScript常用的功能代码
	，提供一种简便的JavaScript设计模式，优化HTML文档操作、事件处理、
	动画设计和Ajax交互。&2019年9月-2022年7月,南京大学,计算机（硕士）,
	jQuery设计的宗旨是“write Less，Do More”，即倡导写更少的代码，做更多的事情。
	它封装JavaScript常用的功能代码，提供一种简便的JavaScript设计模式，优化HTML文档操作、事件处理、
	动画设计和Ajax交互。&*/
}
