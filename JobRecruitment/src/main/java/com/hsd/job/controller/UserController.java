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
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��1��20�� ����8:55:09
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

	// �û�ע��
	@RequestMapping("/regist")
	public String regist(Userinfo user, HttpServletRequest request) {
		// ���session
		HttpSession session = request.getSession();
		// ����md5�㷨���û�������м���
		// user.setUserpass(md5util.getMD5(user.getUserpass()));
		// ����service��
		// �����û����������������ͬ�Ĳ���
		// ����user��״̬Ϊ1
		user.setUserstate(1);
		//��ע��֮ǰ���Ƚ�����˵ļ�������Ϣ��������
		//�ȴ���һ����������
		int res = userService.addUser(user);
		//�����������֪����ע��֮����˵�id��ʲô
		Resumeinfo resumeinfo=new Resumeinfo();
		if (user.getUsertype()==1) {
			//����������userid���������
			resumeinfo.setUserid(user.getUserid());
			//��ʼ��������������
			int result = resumeService.addResume(resumeinfo);
		}
		// �������ݿ�����Ľ��������Ӧ����Ϣ
		if (res == 1) {
			// ����ɹ��ͽ���Ϣ�洢��session��
			session.setAttribute("loginUser", user);
			// ����ע����Ϣ��ת����ͬ��ҳ�����Ƹ�����Ϣ1����ְ�û���2����Ƹ�û�
			if (user.getUsertype() == 1) {
				// ��ְ��������Ϣ����
				return "dashboard-edit-profile";
			} else {
				// ��Ƹ��������Ϣ����
				return "employer-dashboard-edit-profile";
			}
		} else {
			return "404";
		}
	}

	// �û�ע��ʱ�û����Ƿ��ظ���ѯfindUserByName
	@RequestMapping("/findUserByName")
	@ResponseBody
	public Map<String, String> findUserByName(String userName) {
		// ����һ��map������Ϣ
		Map<String, String> map = new HashMap<>();
		// ����service��
		// �������ݿ�����Ľ��������Ӧ����Ϣ
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
		// ����һ��map������Ϣ
		Map<String, String> map = new HashMap<>();
		// ����service��
		// �������ݿ�����Ľ��������Ӧ����Ϣ
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
		// ����md5�㷨���û���������м��ܣ���ʱ��δʹ��
		String userPass = md5util.getMD5(loginpassword.trim());
		// ����һ����ͼ����
		ModelAndView model = new ModelAndView();
		// �������ݿ�����Ľ��������Ӧ����Ϣ
		List<Userinfo> users = userService.findUserByNameAndPass(loginusername.trim(),loginpassword);
		// ���session����
		HttpSession session = request.getSession();
		if (users != null && users.size() != 0) {
			// ����ѯ�Ľ�����浽session��
			// ��ʼ���������������
			int percentage = StatisticsUtil.Percentage(users.get(0));
			// �������ȱ�����session��
			session.setAttribute("percentage", percentage);
			session.setAttribute("loginUser", users.get(0));
			// ��¼���֮����ת����ҳ
			model.setViewName("index");
			session.setAttribute("loginInfo", "yes");
		} else {
			session.setAttribute("loginInfo", "error");
			// ��¼ʧ����ת��ʧ����Ϣ��ʾ����
			model.setViewName("loginError");
		}
		return model;
	}

	@RequestMapping("/before")
	public ModelAndView postjob(HttpServletRequest request, String jspName) {
		// ��ȡҳ�������url����Ĳ���(���Ӷ��ڲ����Ĵ���)
		String param = request.getQueryString();
		if (param.contains("&")) {
			param = param.substring(param.indexOf("&") + 1);
		}
		// ��������ַ�����������µĲ���
		// ���session
		HttpSession session = request.getSession();
		// ���������浽session��
		if (!param.equals("") || param != null) {
			// ��session�д洢��ͬkey��ֵʱ���ͻὫ��ǰ��value����
			session.setAttribute("param", "?" + param);
		}
		// ����һ����ͼ����
		ModelAndView modView = new ModelAndView();
		// ���session����ĵ�½��Ϣ�ж��Ƿ��½
		Userinfo loginUser = (Userinfo) session.getAttribute("loginUser");
		// ����ѯʱ��ѯ���Ϊ���գ����߲�ѯ���������ʱ����error
		if (loginUser == null) {
			// ���û�е�¼����ת����ҳ
			modView.setViewName("404");
		} else {
			// �жϵ�ǰ��¼���˵Ľ�ɫ
			if (loginUser.getUsertype() == 2) {
				// ����ǰ��¼�������ڵĹ�˾����Ϣ��ѯ����

			}
			modView.setViewName(jspName);
		}
		return modView;
	}

	@RequestMapping("/getLoginUser")
	@ResponseBody
	public ModelAndView getLoginUser(HttpServletRequest request) {
		// ����һ����ͼ����
		ModelAndView modView = new ModelAndView("post-job");
		// ����һ��map������Ϣ
		Map<String, Object> map = new HashMap<>();
		// ���session����ĵ�½��Ϣ�ж��Ƿ��½
		Userinfo loginUser = (Userinfo) request.getSession().getAttribute("loginUser");
		// System.out.println("loginUser:"+loginUser);
		// ����ѯʱ��ѯ���Ϊ���գ����߲�ѯ���������ʱ����error
		if (loginUser == null) {
			map.put("info", "error");
		} else {
			map.put("loginUser", loginUser);
		}
		// ��map���ݱ�������
		modView.addObject("map", map);
		return modView;
	}

	// �˳���¼
	@RequestMapping("/loginOut")
	public String loginOut(HttpServletRequest request) {
		// ����session����ĵ�¼����
		request.getSession().removeAttribute("loginUser");
		request.getSession().removeAttribute("percentage");
		// �����������˳��Ķ�����ص���ҳ
		return "index";
	}

	@RequestMapping("/updateUser")
	public String UpdateUserInfo(Userinfo user, HttpServletRequest request,
			@RequestParam(value = "fileName", required = false) MultipartFile file, String newpwd) {
		// �����ϴ�������ļ��ϴ�����Ѷ��
		if (file.getOriginalFilename() != "") {
			try {
				String url = TxFileUploadUtil.upLoadSSM(request, file);
				user.setUserhead(url);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// ��Ϊ��ֻ���ڵ�¼״̬�²��ܽ���������棬���Կ���ֱ�Ӵ�session�����ȡ����˵���Ϣ
		HttpSession session = request.getSession();
		// ��õ�¼�������
		Userinfo u = (Userinfo) session.getAttribute("loginUser");
		// ��֮ǰע�����Ϣת�Ƶ��µĶ�����
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
			// ���µ�¼��session�������ϢҪ�޸�
			// ��ִ�в�ѯ����ǰ����˵Ĳ�ѯ����
			Userinfo loginUser = userService.findUserById(user.getUserid());
			session.setAttribute("loginUser", loginUser);
			return "index";
		} else {
			return "404";
		}
	}

	// ע���û���Ϣ
	@RequestMapping("/cancelUserInfo")
	public String cancelUserInfo(HttpServletRequest request) {
		// ��ȡ��ǰsession�����¼��Ϣ����Ϣ
		HttpSession session = request.getSession();
		Userinfo user = (Userinfo) session.getAttribute("loginUser");
		// �������״̬��Ϊ2,��������״̬
		user.setUserstate(2);
		// ����service�������
		userService.cancelUserInfo(user);
		// ���session ����ĵ�½��Ϣ
		session.removeAttribute("loginUser");
		return "index";
	}

	// ��Ƹ��Ա��������
	@RequestMapping("/editUserInfo")
	public String editEmpInfo(HttpServletRequest request, Userinfo userInfo, Company company,
			@RequestParam("companyImg") MultipartFile companyImg, @RequestParam("userImg") MultipartFile userImg,
			@RequestParam("videoName") MultipartFile companyvideo, String newpwd) {
		String videoPath = null;
		String userImgPath = null;
		String companyImgPath = null;
		// ��ȡ��ǰ��¼���˵���Ϣ
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		// https://jobpic-1258185724.cos.ap-guangzhou.myqcloud.com/image/df703a123d6a4d209a68daa19a6e8c0d.mp4
		// ��һ�����ǽ��ļ����ϴ���tx��,�Ƚ�������Ҫ�ϴ����ļ�����ȥ����ж��Ǳ���ģ���Ȼ�����ظ��ϴ�������
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
				// ��������ַ�������https,��Ƶ�������
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
		// ����Ĵ���
		if (newpwd != null && !newpwd.equals("")) {
			user.setUserpass(newpwd);
		} else {
		}
		// ����������Ϣ����˾��Ϣ�Լ�������Ϣ�ȴ�����ݿ�,����֮ǰ���жϣ�֮ǰ��û��companyId
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
				// ���¹�˾��Ϣ�ɹ���͸��¸�����Ϣ
				userService.updateUserInfo(user);
			}
		}
		return "index";
	}

	@RequestMapping("/uploadresume")
	@ResponseBody
	public Map<String, Object> uploadresume(HttpServletRequest request, Resumeinfo resume,
			@RequestParam("fileName") MultipartFile file) throws Exception {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<>();
		// ��ȡ��ǰ�ĵ�½��
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user != null) {
			resume.setUserid(user.getUserid());
			resume.setResumetype(0);
			if (file.getOriginalFilename() != null && !file.getOriginalFilename().equals("")) {
				// ��ʼ�ϴ��ļ�
				resume.setResumefilename(file.getOriginalFilename());
				String url = TxFileUploadUtil.upLoadSSM(request, file);
				resume.setResumeurl(url);
				// ���������ݿ�
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
		// ����һ��map��������
		Map<String, String> map = new HashMap<String, String>();
		// ���ж���û�е�¼��Ȼ����˵
		Userinfo loginuser = (Userinfo) request.getSession().getAttribute("loginUser");
		if (loginuser == null) {
			// ֱ��ȥ���������ʾ��¼
			map.put("info", "error");
		} else {
			Usercolljob usercolljob = new Usercolljob();
			usercolljob.setJobid(jobid);
			usercolljob.setUserid(loginuser.getUserid());
			if (op == 1) {
				int res = userService.collect_add(usercolljob);
				if (res == 1) {
					String content = "���������ղ����¹���";
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

	// ���������һ��ְλ
	@RequestMapping("/applyJob")
	@ResponseBody
	public Map<String, Object> ApplyJob(int getuserid, String jobname, int jobid, HttpServletRequest request) {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// ����һ��msg�����װ����
		Message message = new Message();
		message.setCreatetime(new Date());
		message.setGetuserid(getuserid);
		// ��ȡ��ǰ��¼����
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// ��������Ҫ�������·�����Ϣ�Լ��������ְλ�����ݿ�
			message.setPostuserid(user.getUserid());
			// ���ó�ʼ״̬��0��ʾ״̬Ϊδ��״̬
			message.setState(0);
			// ��Ϣ����(������Ϣ0��ֻ������ְ��1��ֻ������Ƹ��2)
			message.setType(2);
			// ������Ϣ����
			String msg = user.getUsername() + "��������������" + jobname + "�ĸ�λ";
			message.setMsgcontent(msg);
			// ��ʼ������Ϣ
			// ��ʼ������ӵ���Ϣ
			Userappjob userappjob = new Userappjob();
			userappjob.setJobid(jobid);
			userappjob.setUserid(user.getUserid());
			// ��ǰ״̬(�Ƿ��Ѿ����鿴0:û����2������)
			userappjob.setState(0);
			// ��ʼ������
			// ��ִ�в�ѯ֮ǰ�ȿ����������û����������ְλ
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
		// �ȴ���һ��map��������
		Map<String, Object> map = new HashMap<>();
		// ��ȡ��ǰ��¼����
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// �ж���������Ϣû��
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
			// Ҫ���������Ƚ�����ͨ��������һ����Ϣ
			// ��װ��Ϣ����
		}
		return map;
	}
/*	2015��7��-2019��9��,����ʦ����ѧ,����������ƣ�,
	jQuery��Ƶ���ּ�ǡ�write Less��Do More����
	������д���ٵĴ��룬����������顣����װJavaScript���õĹ��ܴ���
	���ṩһ�ּ���JavaScript���ģʽ���Ż�HTML�ĵ��������¼�����
	������ƺ�Ajax������&2019��9��-2022��7��,�Ͼ���ѧ,�������˶ʿ��,
	jQuery��Ƶ���ּ�ǡ�write Less��Do More����������д���ٵĴ��룬����������顣
	����װJavaScript���õĹ��ܴ��룬�ṩһ�ּ���JavaScript���ģʽ���Ż�HTML�ĵ��������¼�����
	������ƺ�Ajax������&*/
}
