package com.hsd.job.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * @ClassName: DateUtil
 * @Description: 日期转换工具类
 * @date 2019年2月16日 下午8:07:34
 * @author lpjz@foxmail.com
 * 
 */
public class DateUtil {
	// 将Date转换为String类型
	public static String DateToStr(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}

	// 将String转化为Date类型
	public static String StrToDate(String str) {
		SimpleDateFormat sdf1= new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);

		SimpleDateFormat sdf2= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		try {
			 return sdf2.format(sdf1.parse(str));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		//如果转换出错就返回当前的系统时间
		return "";
	}
	
	public static Date StrToDateShort(String str) throws ParseException {

		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
			 return sdf.parse(str);
	}
}
