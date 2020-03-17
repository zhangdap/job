package com.hsd.job.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * @ClassName: DateUtil
 * @Description: ����ת��������
 * @date 2019��2��16�� ����8:07:34
 * @author lpjz@foxmail.com
 * 
 */
public class DateUtil {
	// ��Dateת��ΪString����
	public static String DateToStr(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}

	// ��Stringת��ΪDate����
	public static String StrToDate(String str) {
		SimpleDateFormat sdf1= new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);

		SimpleDateFormat sdf2= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		try {
			 return sdf2.format(sdf1.parse(str));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		//���ת������ͷ��ص�ǰ��ϵͳʱ��
		return "";
	}
	
	public static Date StrToDateShort(String str) throws ParseException {

		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
			 return sdf.parse(str);
	}
}
