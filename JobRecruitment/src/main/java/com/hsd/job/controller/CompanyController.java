package com.hsd.job.controller;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.hsd.job.pojo.Company;
import com.hsd.job.service.CompanyService;

/**  
* @ClassName: CompanyController  
* @Description: 
* @date 2019年2月22日 上午10:09:00    
* @author lpjz@foxmail.com
*    
*/
@Controller
public class CompanyController {
	@Autowired
	private CompanyService companyService;

	@RequestMapping("/findCompany")
	@ResponseBody
	public Map<String, Object> findCompany(int cid,String jspName,Model model){
		Company company = companyService.queryById(cid);
		Map<String, Object> map=new HashMap<>();
		map.put("company",company);
		return map;
	}
}
