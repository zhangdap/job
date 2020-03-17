package com.hsd.job.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hsd.job.pojo.Jobtype;
import com.hsd.job.service.JobTypeService;

/**
 * @ClassName: JobTypeController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年1月15日 下午4:34:41
 * @author lpjz@foxmail.com
 * 
 */
@Controller
public class JobTypeController {
	@Autowired
	private JobTypeService jobTypeService;

	@RequestMapping("/jobTypeList")
	@ResponseBody
	public ModelAndView jobTypeList(String jspName, HttpServletRequest request) {
		// 创建一个试图对象
		ModelAndView model = new ModelAndView(jspName);
		// 获取数据库查询的数据
		List<Jobtype> JobTypes = jobTypeService.queryAllJobType();
		request.setAttribute("JobTypes", JobTypes);
		return model;
	}

	@RequestMapping("/ajaxJobTypeList")
	@ResponseBody
	public List<Jobtype> jobTypeList() {
		// 获取数据库查询的数据
		return jobTypeService.queryAllJobType();
	}
}
