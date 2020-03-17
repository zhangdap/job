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
 * @Description: 工作相关
 * @date 2019年2月16日 下午6:37:24
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
		// 补全相关的信息
		job.setJobpublishtime(new Date());
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		job.setJobpublishuserid(user.getUserid());
		job.setJobsarary(min + "-" + max);
		// 默认工作是合法的
		job.setJobstate(1);
		job.setJobaddr(province.split(";")[1] + city + detailAddr);
		if (user.getUsercompanyid() == null) {
			// 说明信息不完善，去完善信息，才能发布工作
			return "employer-dashboard-edit-profile";
		} else {
			// 将组装好的job保存到数据库中
			jobService.postJob(job);
			String content = "您发布了新工作";
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
		// 数据类型转换
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
		// 必须要解析province的字符串
		String pro = province.split(";")[1];
		job.setJobaddr(pro + city);
		String path = "conditionQueryJobs.action?typeName=" + typeName + "&province=" + province + "&city=" + city
				+ "&page=";
		List<Job> Jobs = jobService.queryByCondition(job, p);
		for (Job j : Jobs) {
			// 去除job的时间延长七天
			Calendar rightNow = Calendar.getInstance();
			rightNow.setTime(j.getJobpublishtime());
			rightNow.add(Calendar.DAY_OF_MONTH, 10);// 日期加10天
			Date time = rightNow.getTime();
			j.setJobpublishtime(time);
		}
		model.addAttribute("path", path);
		PageInfo<Job> pageInfo = new PageInfo<>(Jobs);
		// 当前页码数
		model.addAttribute("pageInfo", pageInfo);
		return "job-listing";
	}

	@RequestMapping("/jobdetails")
	public ModelAndView findJob(int jobid) {
		// 创建一个试图对象
		ModelAndView model = new ModelAndView("job-details");
		// 查询出这个工作的数据
		Job job = jobService.queryById(jobid);
		// 根据job查出人
		Userinfo user = userService.findUserById(job.getJobpublishuserid());
		// 根据user查出公司
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
			// 去除job的时间延长七天
			Calendar rightNow = Calendar.getInstance();
			rightNow.setTime(j.getJobpublishtime());
			rightNow.add(Calendar.DAY_OF_MONTH, 10);// 日期加10天
			Date time = rightNow.getTime();
			j.setJobpublishtime(time);
		}
		PageInfo<Job> pageInfo = new PageInfo<>(Jobs);
		String path = "joblist.action?typeid=" + typeid + "&page=";
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("path", path);
		return "job-listing";
	}

	// 这是ajax请求的在job-listing.jsp页面
	@RequestMapping("/collectAll")
	@ResponseBody
	public Map<String, Object> collectAll(HttpServletRequest request) {
		// 创建一个map 保存数据
		Map<String, Object> map = new HashMap<String, Object>();
		// 判断这个人是否登陆
		Userinfo loginuser = (Userinfo) request.getSession().getAttribute("loginUser");
		if (loginuser == null) {
			// 没登录直接GG
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
		// 创建一个map保存数据
		Map<String, Object> map = new HashMap<String, Object>();
		// 这个是最新的工作
		List<Job> tjobs = jobService.indexJobsList();
		map.put("tjobs", tjobs);
		// 这个是特色的工作，就是找经验需求为0的工作
		List<Job> sjobs = jobService.indexJobsSpecial();
		map.put("sjobs", sjobs);
		return map;
	}

	@RequestMapping("/companyJobsCount")
	@ResponseBody
	public Map<String, Object> companyJobsCount() {
		// 创建一个map保存数据
		Map<String, Object> map = new HashMap<String, Object>();
		// 开始这行查询
		List<CompanyVo> jobVos = jobService.indexCompanyJobsCount();
		// 将数据放入map当中
		map.put("jobVos", jobVos);
		return map;
	}

	//
	@RequestMapping("/queryJobsByCompanyid")
	public String queryJobsByCompanyid(int companyid, String page, Model model) {
		// 开始这行查询
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
			// 去除job的时间延长七天
			Calendar rightNow = Calendar.getInstance();
			rightNow.setTime(j.getJobpublishtime());
			rightNow.add(Calendar.DAY_OF_MONTH, 10);// 日期加10天
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
		// 先进行页码的计算
		int p = 0;
		try {
			p = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			p = 1;
		}
		if (p < 1) {
			p = 1;
		}
		// 获取当前登录的人的信息
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		// 开始执行查询
		if (user == null) {
			return "404";
		} else {
			List<JobVo> JobVos = jobService.queryPostJobsByUserid(p, user.getUserid());
			// 开始填充数据
			for (int i = 0; i < JobVos.size(); i++) {
				// 将统计数据添加到对象中s
				JobVos.get(i).setAppusernum(jobService.queryAJobApplyNum(JobVos.get(i).getJobid()));
				Calendar rightNow = Calendar.getInstance();
				rightNow.setTime(JobVos.get(i).getJobpublishtime());
				rightNow.add(Calendar.DAY_OF_MONTH, 10);// 日期加10天
				Date time = rightNow.getTime();
				JobVos.get(i).setJobdeadlinetime(time);
				// 获取当前时间
				// java.util.Date类实现了Comparable接口，
				// 可以直接调用Date的compareTo()方法来比较大小，compareTo()方法的返回值，
				// date1小于date2返回-1，date1大于date2返回1，相等返回0如下
				Date data = new Date();
				if (data.compareTo(time) == 1) {
					// 说明时间比当前的时间大，说明已经过了有效期了设置状态为0
					JobVos.get(i).setJobstate(0);
				}
			}
			// 拼接分页的请求路径
			String path = "manageJob.action?page=";
			model.addAttribute("path", path);
			PageInfo<JobVo> pageInfo = new PageInfo<>(JobVos);
			model.addAttribute("pageInfo", pageInfo);
		}
		return "employer-dashboard-manage-job";
	}

	@RequestMapping("/queryAuserApplyJobs")
	public String queryAuserApplyJobs(Model model, HttpServletRequest request, String page) {
		// 对传进来的页码进行处理
		int p = 0;
		try {
			p = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			p = 1;
		}
		if (p < 1) {
			p = 1;
		}
		// 获取当前登录的对象
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			return "404";
		} else {
			String path = "queryAuserApplyJobs.action?page=";
			// 开始查询数据
			List<JobVo> JobVos = jobService.queryAuserApplyJobs(p, user.getUserid());

			// 对数据进行处理
			for (int i = 0; i < JobVos.size(); i++) {
				// 将统计数据添加到对象中s
				JobVos.get(i).setAppusernum(jobService.queryAJobApplyNum(JobVos.get(i).getJobid()));
				Calendar rightNow = Calendar.getInstance();
				rightNow.setTime(JobVos.get(i).getJobpublishtime());
				rightNow.add(Calendar.DAY_OF_MONTH, 10);// 日期加10天
				Date time = rightNow.getTime();
				JobVos.get(i).setJobdeadlinetime(time);
				// 获取当前时间
				// java.util.Date类实现了Comparable接口，
				// 可以直接调用Date的compareTo()方法来比较大小，compareTo()方法的返回值，
				// date1小于date2返回-1，date1大于date2返回1，相等返回0如下
				Date data = new Date();
				if (data.compareTo(time) == 1) {
					// 说明时间比当前的时间大，说明已经过了有效期了设置状态为0
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
		// 对传进来的页码进行处理
		int p = 0;
		try {
			p = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			p = 1;
		}
		if (p < 1) {
			p = 1;
		}
		// 获取当前登录的对象
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			return "404";
		} else {
			String path = "queryAuserCollJobs.action?page=";
			// 开始查询数据
			List<JobVo> JobVos = jobService.queryAuserCollJobs(p, user.getUserid());

			// 对数据进行处理
			for (int i = 0; i < JobVos.size(); i++) {
				// 将统计数据添加到对象中s
				JobVos.get(i).setAppusernum(jobService.queryAJobApplyNum(JobVos.get(i).getJobid()));
				Calendar rightNow = Calendar.getInstance();
				rightNow.setTime(JobVos.get(i).getJobpublishtime());
				rightNow.add(Calendar.DAY_OF_MONTH, 10);// 日期加10天
				Date time = rightNow.getTime();
				JobVos.get(i).setJobdeadlinetime(time);
				// 获取当前时间
				// java.util.Date类实现了Comparable接口，
				// 可以直接调用Date的compareTo()方法来比较大小，compareTo()方法的返回值，
				// date1小于date2返回-1，date1大于date2返回1，相等返回0如下
				Date data = new Date();
				if (data.compareTo(time) == 1) {
					// 说明时间比当前的时间大，说明已经过了有效期了设置状态为0
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
		// 创建一个map保存数据
		Map<String, Object> map = new HashMap<String, Object>();
		// 获取当前登录的对象
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// 开始执行查询
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
		// 创建一个map保存数据
		Map<String, Object> map = new HashMap<String, Object>();
		// 获取当前登录的对象
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			map.put("info", "error");
		} else {
			// 开始执行查询
			int res = applyJobService.deleteCollJob(user.getUserid(), jobid);
			if (res == 1) {
				map.put("info", "ok");
			}
		}
		return map;
	}

	@RequestMapping("/queryAuserWhoJobs")
	public String queryAuserWhoJobs(Model model, HttpServletRequest request, String page) {
		// 先对页码进行处理
		int p = 0;
		try {
			p = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			p = 1;
		}
		if (p < 1) {
			p = 1;
		}
		// 获取当前登录的对象
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			return "404";
		} else {
			// 开始拼接路径
			String path = "queryAuserWhoJobs.action?page=";
			// 开始执行查询
			List<UserinfoVo> users = jobService.queryAuserWhoJobs(p, user.getUserid());
			// 将数据保存到model中
			PageInfo<UserinfoVo> pageInfo = new PageInfo<>(users);
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("path", path);
			return "employer-dashboard-manage-candidate";
		}

	}

	@RequestMapping("/queryJobApplyUsers")
	public String queryJobApplyUsers(Model model, HttpServletRequest request, String page, int jobid) {
		// 先对页码进行处理
		int p = 0;
		try {
			p = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			p = 1;
		}
		if (p < 1) {
			p = 1;
		}
		// 获取当前登录的对象
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		if (user == null) {
			return "404";
		} else {
			// 开始拼接路径
			String path = "queryJobApplyUsers.action?jobid=" + jobid + "&page=";
			// 开始执行查询
			List<UserinfoVo> users = jobService.queryJobApplyUsers(p, jobid);
			// 将数据保存到model中
			PageInfo<UserinfoVo> pageInfo = new PageInfo<>(users);
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("path", path);
			return "employer-dashboard-manage-candidate";
		}

	}

	@RequestMapping("/deleteApplyUser")
	@ResponseBody
	public Map<String, Object> deleteApplyUser(HttpServletRequest request, int userid, int jobid) {
		// 创建一个map保存数据
		Map<String, Object> map = new HashMap<String, Object>();
		Job job = jobService.queryById(jobid);
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		// 发送消息
		String content = "很遗憾，您的" + job.getJobname() + "的工作申请没有通过";
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
		// 创建一个map保存数据
		// 获取当前登录人的id
		Userinfo user = (Userinfo) request.getSession().getAttribute("loginUser");
		Map<String, Object> map = new HashMap<String, Object>();
		Job job = jobService.queryById(jobid);
		String content = "您删除了发布的" + job.getJobname() + "的工作";
		Message message = new Message();
		message.setCreatetime(new Date());
		message.setGetuserid(user.getUserid());
		message.setPostuserid(0);
		message.setState(0);
		message.setType(2);
		message.setMsgcontent(content);
		int res = applyJobService.deleteApplyJob(user.getUserid(), jobid);
		// 还要删除跟这个相关的数据
		int result = applyJobService.deleteApplyInfoByJobid(jobid);
		int result1 = applyJobService.deleteCollInfoByJobid(jobid);
		if (res == 1) {
			map.put("info", "ok");
			msgService.msg_add(message);
		}
		return map;
	}
}
