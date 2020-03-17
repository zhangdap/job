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
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��2��16�� ����8:49:42
 * @author lpjz@foxmail.com
 * 
 */
@Controller
public class AddressController {

	@Autowired
	private AddressService addressService;

	// ������е�ʡ
	@RequestMapping("/getProvince")
	@ResponseBody
	public List<ProvinceCityCounty> AllProvinces() {
		return addressService.queryAllProvinces();
	}

	// ���ʡ����Ӧ����
	@RequestMapping("/getCity")
	@ResponseBody
	public List<ProvinceCityCounty> AllCitys(String pid) {
		// ����ԭ���������ַ���
		int id = Integer.parseInt(pid.split(";")[0]);
		return addressService.queryAllCitys(id);

	}
}
