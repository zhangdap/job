package com.hsd.job.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hsd.job.pojo.Message;
import com.hsd.job.pojo.Resumeinfo;
import com.hsd.job.pojo.Userinfo;
import com.hsd.job.service.MsgService;
import com.hsd.job.service.ResumeService;
import com.hsd.job.util.DateUtil;
import com.hsd.job.util.TxFileUploadUtil;

/**
 * @ClassName: ResumeController
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��3��2�� ����7:09:36
 * @author lpjz@foxmail.com
 * 
 */
@Controller
public class ResumeController {

	@Autowired
	private ResumeService resumeService;
	@Autowired
	private MsgService msgService;

	
	@RequestMapping("resumeinfo")
	public String queryResumeInfo(HttpServletRequest request, String jspName, Model model) {
		// ��ȷ���������û�е�¼
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		// ����userid��ѯ����˵ļ�����Ϣ,һ������¾���һ����
		List<Resumeinfo> resumeinfo = resumeService.queryByUserid(user.getUserid());
		model.addAttribute("resumeinfo", resumeinfo.get(0));

		return jspName;
	}
	@RequestMapping("queryResumeByUserid")
	public String quweryResumeByUserid(HttpServletRequest request, int userid,String jspName, Model model) {
		// ����userid��ѯ����˵ļ�����Ϣ,һ������¾���һ����
		List<Resumeinfo> resumeinfo = resumeService.queryByUserid(userid);
		model.addAttribute("resumeinfo", resumeinfo.get(0));
		return jspName;
	}
	// ��������ajax����
	@RequestMapping(value = "ajaxUploadResumeFile", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> uploadResumeFile(Resumeinfo resumeinfo, HttpServletRequest request,
			@RequestParam("resumeFile") MultipartFile file) throws Exception {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// �Ȼ�ȡ��¼����
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// ��ʼ�ļ��ϴ�
			if (file == null) {
				map.put("info", "nofile");
			} else {
				resumeinfo.setResumefilename(file.getOriginalFilename());
				String url = TxFileUploadUtil.upLoadSSM(request, file);
				// �Ƚ���ǰ����˵�resumeId��ѯ����
				List<Resumeinfo> returnResumeinfo = resumeService.queryResumeByUserid(user.getUserid());
				resumeinfo.setResumeurl(url);
				resumeinfo.setResumeid(returnResumeinfo.get(0).getResumeid());
				resumeinfo.setUserid(user.getUserid());
				// ������Ϣ����
				String content = "���ļ����Ѹ���";
				Message message = new Message();
				message.setMsgcontent(content);
				message.setCreatetime(new Date());
				message.setGetuserid(user.getUserid());
				message.setPostuserid(0);
				message.setState(0);
				message.setType(2);
				msgService.msg_add(message);
				int res = resumeService.updateResumeUrl(resumeinfo);
				if (res == 1) {
					map.put("info", "ok");
				}
			}
		}
		return map;
	}

	@RequestMapping(value = "ajaxUploadResumeNetName", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> ajaxUploadResumeNetName(HttpServletRequest request, String netName) throws Exception {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		String[] split = netName.split(",");
		String str = "";
		for (int i = 0; i < split.length; i++) {
			str += split[i] + ",����";
		}
		// �Ȼ�ȡ��¼����
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// List<Resumeinfo> returnResumeinfo=
			// resumeService.queryResumeByUserid(user.getUserid());
			// ��ʼִ�и��²���
			Resumeinfo resumeinfo = new Resumeinfo();
			resumeinfo.setUserid(user.getUserid());
			resumeinfo.setResumeuserconnect(str);
			int res = resumeService.updateResumeNetName(resumeinfo);

		}
		return map;
	}

	@RequestMapping("/ajaxSubUserInfo")
	@ResponseBody
	public Map<String, Object> ajaxUpdateUserInfo(HttpServletRequest request,
			@DateTimeFormat(pattern = "yyyy-MM-dd") Date birth, Resumeinfo resumeinfo, String salaryMax,
			String salaryMin) throws Exception {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// �Ȼ�ȡ��¼����
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// List<Resumeinfo> returnResumeinfo=
			// resumeService.queryResumeByUserid(user.getUserid());
			// ��ʼִ�и��²���
			resumeinfo.setResumeusersalary(salaryMin + "-" + salaryMax);
			resumeinfo.setResumeuserbirthday(birth);
			resumeinfo.setUserid(user.getUserid());
			// �����ļ���
			resumeinfo.setResumetype(1);
			int res = resumeService.updateResumeUserInfo(resumeinfo);
			if (res == 1) {
				map.put("info", "ok");
			}

		}
		return map;
	}

	@RequestMapping("/ajaxSubUserEduation")
	@ResponseBody
	public Map<String, Object> ajaxUpdateUserEduation(HttpServletRequest request, String eduationTime,
			String eduationSchool, String eduationDegree, String eduationDescription) throws Exception {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// �ȶԴ����������ݽ��д���
		String[] split1 = eduationTime.split(",");
		String[] split2 = eduationSchool.split(",");
		String[] split3 = eduationDegree.split(",");
		String[] split4 = eduationDescription.split(",");
		String info = "";
		for (int i = 0; i < split4.length; i++) {
			info += split1[i] + "," + split2[i] + "," + split3[i] + "," + split4[i] + "&";
		}
		// �Ȼ�ȡ��¼����
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// ��ʼִ�и��²���
			if (true) {
				Resumeinfo resumeinfo = new Resumeinfo();
				resumeinfo.setUserid(user.getUserid());
				resumeinfo.setResumeusereducation(info);
				int res = resumeService.updateResumeUserEduation(resumeinfo);
				if (res == 1) {
					map.put("info", "ok");
				}
			}

		}
		return map;
	}
	// 2015��9��-2019��7��,����ʦ����ѧ,�������ѧ�뼼�������ƣ�,��ѧУ&2015��9��-2019��7��,�Ͼ���ѧ,�����˶ʿ,��ѧУ&

	@RequestMapping("/ajaxSubUserWork")
	@ResponseBody
	public Map<String, Object> ajaxUpdateUserWork(HttpServletRequest request, String workTime, String workCompany,
			String workPosition, String workDescription) throws Exception {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// �ȶԴ����������ݽ��д���
		String[] split1 = workTime.split(",");
		String[] split2 = workCompany.split(",");
		String[] split3 = workPosition.split(",");
		String[] split4 = workDescription.split(",");
		String info = "";
		for (int i = 0; i < split4.length; i++) {
			info += split1[i] + "," + split2[i] + "," + split3[i] + "," + split4[i] + "&";
		}
		// �Ȼ�ȡ��¼����
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// ��ʼִ�и��²���
			if (true) {
				Resumeinfo resumeinfo = new Resumeinfo();
				resumeinfo.setUserid(user.getUserid());
				resumeinfo.setResumeuserwork(info);
				int res = resumeService.updateResumeUserWork(resumeinfo);
				if (res == 1) {
					map.put("info", "ok");
				}
			}

		}
		return map;
	}

	@RequestMapping("/ajaxSubUserSkill")
	@ResponseBody
	public Map<String, Object> ajaxUpdateUserSkill(HttpServletRequest request, String skillDescription,
			String skillName, String SkillPercentage) throws Exception {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// �ȶԴ����������ݽ��д���
		String[] split1 = skillName.split(",");
		String[] split2 = SkillPercentage.split(",");
		String info = "";
		for (int i = 0; i < split1.length; i++) {
			info += split1[i] + "," + split2[i] + "," + "&";
		}
		info = skillDescription + "*" + info;
		// �Ȼ�ȡ��¼����
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// ��ʼִ�и��²���
			if (true) {
				Resumeinfo resumeinfo = new Resumeinfo();
				resumeinfo.setUserid(user.getUserid());
				resumeinfo.setResumeuserskill(info);
				int res = resumeService.updateResumeUserSkill(resumeinfo);
				if (res == 1) {
					map.put("info", "ok");
				}
			}

		}
		return map;
	}
	// ǰ�˲���,85,&java����,95,&SSM���,80,&MySQL���ݿ�,86

	@RequestMapping("/ajaxSubUserSpecial")
	@ResponseBody
	public Map<String, Object> ajaxUpdateUserSpecial(HttpServletRequest request, String Special) throws Exception {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// �ȶԴ����������ݽ��д���
		// �Ȼ�ȡ��¼����
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// ��ʼִ�и��²���
			if (true) {
				Resumeinfo resumeinfo = new Resumeinfo();
				resumeinfo.setUserid(user.getUserid());
				resumeinfo.setResumeuserspecial(Special);
				int res = resumeService.updateResumeUserSpecial(resumeinfo);
				if (res == 1) {
					map.put("info", "ok");
				}
			}

		}
		return map;
	}
}
