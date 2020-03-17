package com.hsd.job.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @ClassName: DataConverter
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年1月15日 下午4:26:05
 * @author lpjz@foxmail.com
 * 
 */
public class DataConverter {

	/**
	 * 
	 * @Title: DateTimeToString
	 * @Description: 将日期转化为字符串形式的年月日时分秒
	 * @param date
	 * @return
	 */
	public String DateTimeToString(Date date) {
		// 定义日期转换的格式
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// 将传入的数据进行处理
		return sdf.format(date);
	}

	/**
	 * 
	 * @Title: DateToString
	 * @Description: 将日期转化为字符串形式的年月日
	 * @param date
	 * @return
	 */
	public String DateToString(Date date) {
		// 定义日期转换的格式
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// 将传入的数据进行处理
		return sdf.format(date);
	}

	/**
	 * 
	 * @Title: StringToDate
	 * @Description: 将指定格式的字符串转化为日期类型
	 * @param str
	 * @throws ParseException
	 */
	public Date StringToDate(String str) throws ParseException {
		// 定义日期转换的格式
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// 将传入的数据进行处理
		return sdf.parse(str);
	}

	// 描述同上
	public Date StringToDateTime(String str) throws ParseException {
		// 定义日期转换的格式
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// 将传入的数据进行处理
		return sdf.parse(str);
	}
}
