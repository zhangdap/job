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
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��1��15�� ����4:34:41
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
		// ����һ����ͼ����
		ModelAndView model = new ModelAndView(jspName);
		// ��ȡ���ݿ��ѯ������
		List<Jobtype> JobTypes = jobTypeService.queryAllJobType();
		request.setAttribute("JobTypes", JobTypes);
		return model;
	}

	@RequestMapping("/ajaxJobTypeList")
	@ResponseBody
	public List<Jobtype> jobTypeList() {
		// ��ȡ���ݿ��ѯ������
		return jobTypeService.queryAllJobType();
	}
}
