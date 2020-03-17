package com.hsd.job.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.hsd.job.mapper.UserappjobMapper;
import com.hsd.job.pojo.Company;
import com.hsd.job.pojo.CompanyVo;
import com.hsd.job.pojo.Job;
import com.hsd.job.pojo.JobVo;
import com.hsd.job.pojo.Message;
import com.hsd.job.pojo.Userinfo;
import com.hsd.job.pojo.UserinfoVo;
import com.hsd.job.service.ApplyJobService;
import com.hsd.job.service.CompanyService;
import com.hsd.job.service.JobService;
import com.hsd.job.service.MsgService;
import com.hsd.job.service.UserService;

/**
 * @ClassName: JobController
 * @Description: �������
 * @date 2019��2��16�� ����6:37:24
 * @author lpjz@foxmail.com
 * 
 */
@Controller
public class JobController {
	@Autowired
	private JobService jobService;

	@Autowired
	private CompanyService companyService;

	@Autowired
	private UserService userService;

	@Autowired
	private ApplyJobService applyJobService;

	@Autowired
	private MsgService msgService;

	@RequestMapping("/postJob")
	public String postJob(Job job, HttpServletRequest request, Company company, String max, String min, String province,
			String city, String detailAddr) {
		// ��ȫ��ص���Ϣ
		job.setJobpublishtime(new Date());
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		job.setJobpublishuserid(user.getUserid());
		job.setJobsarary(min + "-" + max);
		// Ĭ�Ϲ����ǺϷ���
		job.setJobstate(1);
		job.setJobaddr(province.split(";")[1] + city + detailAddr);
		if (user.getUsercompanyid() == null) {
			// ˵����Ϣ�����ƣ�ȥ������Ϣ�����ܷ�������
			return "employer-dashboard-edit-profile";
		} else {
			// ����װ�õ�job���浽���ݿ���
			jobService.postJob(job);
			String content = "���������¹���";
			Message message = new Message();
			message.setMsgcontent(content);
			message.setCreatetime(new Date());
			message.setGetuserid(user.getUserid());
			message.setPostuserid(0);
			message.setState(0);
			message.setType(2);
			msgService.msg_add(message);
			return "index";
		}
	}

	@RequestMapping("/conditionQueryJobs")
	public String conditionQueryJobs(HttpServletRequest request, Integer typeName, String province, String city,
			String page, Model model) {
		Job job = new Job();
		// ��������ת��
		int p = 0;
		try {
			p = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			p = 1;
		}
		if (p < 1) {
			p = 1;
		}
		job.setJobtype(typeName);
		// ����Ҫ����province���ַ���
		String pro = province.split(";")[1];
		job.setJobaddr(pro + city);
		String path = "conditionQueryJobs.action?typeName=" + typeName + "&province=" + province + "&city=" + city
				+ "&page=";
		List<Job> Jobs = jobService.queryByCondition(job, p);
		for (Job j : Jobs) {
			// ȥ��job��ʱ���ӳ�����
			Calendar rightNow = Calendar.getInstance();
			rightNow.setTime(j.getJobpublishtime());
			rightNow.add(Calendar.DAY_OF_MONTH, 10);// ���ڼ�10��
			Date time = rightNow.getTime();
			j.setJobpublishtime(time);
		}
		model.addAttribute("path", path);
		PageInfo<Job> pageInfo = new PageInfo<>(Jobs);
		// ��ǰҳ����
		model.addAttribute("pageInfo", pageInfo);
		return "job-listing";
	}

	@RequestMapping("/jobdetails")
	public ModelAndView findJob(int jobid) {
		// ����һ����ͼ����
		ModelAndView model = new ModelAndView("job-details");
		// ��ѯ���������������
		Job job = jobService.queryById(jobid);
		// ����job�����
		Userinfo user = userService.findUserById(job.getJobpublishuserid());
		// ����user�����˾
		Company company = companyService.queryById(user.getUsercompanyid());
		model.addObject("job", job);
		model.addObject("company", company);
		return model;
	}

	@RequestMapping("/joblist")
	public String queryJobByTypeId(Model model, int typeid, String page) {
		int p = 0;
		try {
			p = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			p = 1;
		}
		if (p < 1) {
			p = 1;
		}
		List<Job> Jobs = jobService.queryJobsBytypeid(typeid, p);
		for (Job j : Jobs) {
			// ȥ��job��ʱ���ӳ�����
			Calendar rightNow = Calendar.getInstance();
			rightNow.setTime(j.getJobpublishtime());
			rightNow.add(Calendar.DAY_OF_MONTH, 10);// ���ڼ�10��
			Date time = rightNow.getTime();
			j.setJobpublishtime(time);
		}
		PageInfo<Job> pageInfo = new PageInfo<>(Jobs);
		String path = "joblist.action?typeid=" + typeid + "&page=";
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("path", path);
		return "job-listing";
	}

	// ����ajax�������job-listing.jspҳ��
	@RequestMapping("/collectAll")
	@ResponseBody
	public Map<String, Object> collectAll(HttpServletRequest request) {
		// ����һ��map ��������
		Map<String, Object> map = new HashMap<String, Object>();
		// �ж�������Ƿ��½
		Userinfo loginuser = (Userinfo) request.getSession().getAttribute("loginUser");
		if (loginuser == null) {
			// û��¼ֱ��GG
			map.put("info", "error");
		} else {
			map.put("info", "ok");
			List<Job> jobs = jobService.queryJobsByUserid(loginuser.getUserid());
			map.put("jobs", jobs);
		}
		return map;
	}

	@RequestMapping("/ajaxindexJobsList")
	@ResponseBody
	public Map<String, Object> indexJobsList() {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// ��������µĹ���
		List<Job> tjobs = jobService.indexJobsList();
		map.put("tjobs", tjobs);
		// �������ɫ�Ĺ����������Ҿ�������Ϊ0�Ĺ���
		List<Job> sjobs = jobService.indexJobsSpecial();
		map.put("sjobs", sjobs);
		return map;
	}

	@RequestMapping("/companyJobsCount")
	@ResponseBody
	public Map<String, Object> companyJobsCount() {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// ��ʼ���в�ѯ
		List<CompanyVo> jobVos = jobService.indexCompanyJobsCount();
		// �����ݷ���map����
		map.put("jobVos", jobVos);
		return map;
	}

	//
	@RequestMapping("/queryJobsByCompanyid")
	public String queryJobsByCompanyid(int companyid, String page, Model model) {
		// ��ʼ���в�ѯ
		int comid = 0;
		try {
			comid = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			comid = 1;
		}
		if (comid < 1) {
			comid = 1;
		}
		List<Job> jobs = jobService.queryJobsByCompanyid(comid, companyid);
		for (Job j : jobs) {
			// ȥ��job��ʱ���ӳ�����
			Calendar rightNow = Calendar.getInstance();
			rightNow.setTime(j.getJobpublishtime());
			rightNow.add(Calendar.DAY_OF_MONTH, 10);// ���ڼ�10��
			Date time = rightNow.getTime();
			j.setJobpublishtime(time);
		}
		PageInfo<Job> pageInfo = new PageInfo<>(jobs);
		String path = "queryJobsByCompanyid.action?companyid=" + companyid + "&page=";
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("path", path);
		return "job-listing";
	}

	@RequestMapping("/manageJob")
	public String manageJob(String page, HttpServletRequest request, Model model) {
		// �Ƚ���ҳ��ļ���
		int p = 0;
		try {
			p = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			p = 1;
		}
		if (p < 1) {
			p = 1;
		}
		// ��ȡ��ǰ��¼���˵���Ϣ
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		// ��ʼִ�в�ѯ
		if (user == null) {
			return "404";
		} else {
			List<JobVo> JobVos = jobService.queryPostJobsByUserid(p, user.getUserid());
			// ��ʼ�������
			for (int i = 0; i < JobVos.size(); i++) {
				// ��ͳ��������ӵ�������s
				JobVos.get(i).setAppusernum(jobService.queryAJobApplyNum(JobVos.get(i).getJobid()));
				Calendar rightNow = Calendar.getInstance();
				rightNow.setTime(JobVos.get(i).getJobpublishtime());
				rightNow.add(Calendar.DAY_OF_MONTH, 10);// ���ڼ�10��
				Date time = rightNow.getTime();
				JobVos.get(i).setJobdeadlinetime(time);
				// ��ȡ��ǰʱ��
				// java.util.Date��ʵ����Comparable�ӿڣ�
				// ����ֱ�ӵ���Date��compareTo()�������Ƚϴ�С��compareTo()�����ķ���ֵ��
				// date1С��date2����-1��date1����date2����1����ȷ���0����
				Date data = new Date();
				if (data.compareTo(time) == 1) {
					// ˵��ʱ��ȵ�ǰ��ʱ���˵���Ѿ�������Ч��������״̬Ϊ0
					JobVos.get(i).setJobstate(0);
				}
			}
			// ƴ�ӷ�ҳ������·��
			String path = "manageJob.action?page=";
			model.addAttribute("path", path);
			PageInfo<JobVo> pageInfo = new PageInfo<>(JobVos);
			model.addAttribute("pageInfo", pageInfo);
		}
		return "employer-dashboard-manage-job";
	}

	@RequestMapping("/queryAuserApplyJobs")
	public String queryAuserApplyJobs(Model model, HttpServletRequest request, String page) {
		// �Դ�������ҳ����д���
		int p = 0;
		try {
			p = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			p = 1;
		}
		if (p < 1) {
			p = 1;
		}
		// ��ȡ��ǰ��¼�Ķ���
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			return "404";
		} else {
			String path = "queryAuserApplyJobs.action?page=";
			// ��ʼ��ѯ����
			List<JobVo> JobVos = jobService.queryAuserApplyJobs(p, user.getUserid());

			// �����ݽ��д���
			for (int i = 0; i < JobVos.size(); i++) {
				// ��ͳ��������ӵ�������s
				JobVos.get(i).setAppusernum(jobService.queryAJobApplyNum(JobVos.get(i).getJobid()));
				Calendar rightNow = Calendar.getInstance();
				rightNow.setTime(JobVos.get(i).getJobpublishtime());
				rightNow.add(Calendar.DAY_OF_MONTH, 10);// ���ڼ�10��
				Date time = rightNow.getTime();
				JobVos.get(i).setJobdeadlinetime(time);
				// ��ȡ��ǰʱ��
				// java.util.Date��ʵ����Comparable�ӿڣ�
				// ����ֱ�ӵ���Date��compareTo()�������Ƚϴ�С��compareTo()�����ķ���ֵ��
				// date1С��date2����-1��date1����date2����1����ȷ���0����
				Date data = new Date();
				if (data.compareTo(time) == 1) {
					// ˵��ʱ��ȵ�ǰ��ʱ���˵���Ѿ�������Ч��������״̬Ϊ0
					JobVos.get(i).setJobstate(0);
				}
			}
			PageInfo<JobVo> pageInfo = new PageInfo<>(JobVos);
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("path", path);
			return "dashboard-applied";
		}

	}

	@RequestMapping("/queryAuserCollJobs")
	public String queryAuserCollJobs(Model model, HttpServletRequest request, String page) {
		// �Դ�������ҳ����д���
		int p = 0;
		try {
			p = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			p = 1;
		}
		if (p < 1) {
			p = 1;
		}
		// ��ȡ��ǰ��¼�Ķ���
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			return "404";
		} else {
			String path = "queryAuserCollJobs.action?page=";
			// ��ʼ��ѯ����
			List<JobVo> JobVos = jobService.queryAuserCollJobs(p, user.getUserid());

			// �����ݽ��д���
			for (int i = 0; i < JobVos.size(); i++) {
				// ��ͳ��������ӵ�������s
				JobVos.get(i).setAppusernum(jobService.queryAJobApplyNum(JobVos.get(i).getJobid()));
				Calendar rightNow = Calendar.getInstance();
				rightNow.setTime(JobVos.get(i).getJobpublishtime());
				rightNow.add(Calendar.DAY_OF_MONTH, 10);// ���ڼ�10��
				Date time = rightNow.getTime();
				JobVos.get(i).setJobdeadlinetime(time);
				// ��ȡ��ǰʱ��
				// java.util.Date��ʵ����Comparable�ӿڣ�
				// ����ֱ�ӵ���Date��compareTo()�������Ƚϴ�С��compareTo()�����ķ���ֵ��
				// date1С��date2����-1��date1����date2����1����ȷ���0����
				Date data = new Date();
				if (data.compareTo(time) == 1) {
					// ˵��ʱ��ȵ�ǰ��ʱ���˵���Ѿ�������Ч��������״̬Ϊ0
					JobVos.get(i).setJobstate(0);
				}
			}
			PageInfo<JobVo> pageInfo = new PageInfo<>(JobVos);
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("path", path);
			return "dashboard-bookmark";
		}

	}

	@RequestMapping("/deleteApplyJob")
	@ResponseBody
	public Map<String, Object> deleteApplyJob(int jobid, HttpServletRequest request) {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// ��ȡ��ǰ��¼�Ķ���
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// ��ʼִ�в�ѯ
			int res = applyJobService.deleteApplyJob(user.getUserid(), jobid);
			if (res == 1) {
				map.put("info", "ok");
			}
		}
		return map;
	}

	@RequestMapping("/deleteCollJob")
	@ResponseBody
	public Map<String, Object> deleteCollJob(int jobid, HttpServletRequest request) {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		// ��ȡ��ǰ��¼�Ķ���
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// ��ʼִ�в�ѯ
			int res = applyJobService.deleteCollJob(user.getUserid(), jobid);
			if (res == 1) {
				map.put("info", "ok");
			}
		}
		return map;
	}

	@RequestMapping("/queryAuserWhoJobs")
	public String queryAuserWhoJobs(Model model, HttpServletRequest request, String page) {
		// �ȶ�ҳ����д���
		int p = 0;
		try {
			p = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			p = 1;
		}
		if (p < 1) {
			p = 1;
		}
		// ��ȡ��ǰ��¼�Ķ���
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			return "404";
		} else {
			// ��ʼƴ��·��
			String path = "queryAuserWhoJobs.action?page=";
			// ��ʼִ�в�ѯ
			List<UserinfoVo> users = jobService.queryAuserWhoJobs(p, user.getUserid());
			// �����ݱ��浽model��
			PageInfo<UserinfoVo> pageInfo = new PageInfo<>(users);
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("path", path);
			return "employer-dashboard-manage-candidate";
		}

	}

	@RequestMapping("/queryJobApplyUsers")
	public String queryJobApplyUsers(Model model, HttpServletRequest request, String page, int jobid) {
		// �ȶ�ҳ����д���
		int p = 0;
		try {
			p = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			p = 1;
		}
		if (p < 1) {
			p = 1;
		}
		// ��ȡ��ǰ��¼�Ķ���
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			return "404";
		} else {
			// ��ʼƴ��·��
			String path = "queryJobApplyUsers.action?jobid=" + jobid + "&page=";
			// ��ʼִ�в�ѯ
			List<UserinfoVo> users = jobService.queryJobApplyUsers(p, jobid);
			// �����ݱ��浽model��
			PageInfo<UserinfoVo> pageInfo = new PageInfo<>(users);
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("path", path);
			return "employer-dashboard-manage-candidate";
		}

	}

	@RequestMapping("/deleteApplyUser")
	@ResponseBody
	public Map<String, Object> deleteApplyUser(HttpServletRequest request, int userid, int jobid) {
		// ����һ��map��������
		Map<String, Object> map = new HashMap<String, Object>();
		Job job = jobService.queryById(jobid);
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		// ������Ϣ
		String content = "���ź�������" + job.getJobname() + "�Ĺ�������û��ͨ��";
		Message message = new Message();
		message.setCreatetime(new Date());
		message.setGetuserid(userid);
		message.setPostuserid(user.getUserid());
		message.setState(0);
		message.setType(2);
		message.setMsgcontent(content);
		int res = applyJobService.deleteApplyJob(userid, jobid);
		if (res == 1) {
			msgService.msg_add(message);
			map.put("info", "ok");
		}
		return map;
	}

	@RequestMapping("/deleteJob")
	@ResponseBody
	public Map<String, Object> deleteJob(HttpServletRequest request, int jobid) {
		// ����һ��map��������
		// ��ȡ��ǰ��¼�˵�id
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		Map<String, Object> map = new HashMap<String, Object>();
		Job job = jobService.queryById(jobid);
		String content = "��ɾ���˷�����" + job.getJobname() + "�Ĺ���";
		Message message = new Message();
		message.setCreatetime(new Date());
		message.setGetuserid(user.getUserid());
		message.setPostuserid(0);
		message.setState(0);
		message.setType(2);
		message.setMsgcontent(content);
		int res = applyJobService.deleteApplyJob(user.getUserid(), jobid);
		// ��Ҫɾ���������ص�����
		int result = applyJobService.deleteApplyInfoByJobid(jobid);
		int result1 = applyJobService.deleteCollInfoByJobid(jobid);
		if (res == 1) {
			map.put("info", "ok");
			msgService.msg_add(message);
		}
		return map;
	}
}
