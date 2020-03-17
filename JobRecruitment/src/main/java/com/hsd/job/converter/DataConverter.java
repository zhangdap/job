package com.hsd.job.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @ClassName: DataConverter
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��1��15�� ����4:26:05
 * @author lpjz@foxmail.com
 * 
 */
public class DataConverter {

	/**
	 * 
	 * @Title: DateTimeToString
	 * @Description: ������ת��Ϊ�ַ�����ʽ��������ʱ����
	 * @param date
	 * @return
	 */
	public String DateTimeToString(Date date) {
		// ��������ת���ĸ�ʽ
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// ����������ݽ��д���
		return sdf.format(date);
	}

	/**
	 * 
	 * @Title: DateToString
	 * @Description: ������ת��Ϊ�ַ�����ʽ��������
	 * @param date
	 * @return
	 */
	public String DateToString(Date date) {
		// ��������ת���ĸ�ʽ
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// ����������ݽ��д���
		return sdf.format(date);
	}

	/**
	 * 
	 * @Title: StringToDate
	 * @Description: ��ָ����ʽ���ַ���ת��Ϊ��������
	 * @param str
	 * @throws ParseException
	 */
	public Date StringToDate(String str) throws ParseException {
		// ��������ת���ĸ�ʽ
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// ����������ݽ��д���
		return sdf.parse(str);
	}

	// ����ͬ��
	public Date StringToDateTime(String str) throws ParseException {
		// ��������ת���ĸ�ʽ
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// ����������ݽ��д���
		return sdf.parse(str);
	}
}
