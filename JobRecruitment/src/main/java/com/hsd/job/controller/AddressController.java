package com.hsd.job.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hsd.job.pojo.ProvinceCityCounty;
import com.hsd.job.service.AddressService;

/**
 * @ClassName: AddressController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年2月16日 下午8:49:42
 * @author lpjz@foxmail.com
 * 
 */
@Controller
public class AddressController {

	@Autowired
	private AddressService addressService;

	// 获得所有的省
	@RequestMapping("/getProvince")
	@ResponseBody
	public List<ProvinceCityCounty> AllProvinces() {
		return addressService.queryAllProvinces();
	}

	// 获得省所对应的市
	@RequestMapping("/getCity")
	@ResponseBody
	public List<ProvinceCityCounty> AllCitys(String pid) {
		// 特殊原因必须解析字符串
		int id = Integer.parseInt(pid.split(";")[0]);
		return addressService.queryAllCitys(id);

	}
}
