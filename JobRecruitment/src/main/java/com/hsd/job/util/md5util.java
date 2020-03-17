package com.hsd.job.util;

import java.math.BigInteger;
import java.security.MessageDigest;

/**
 * @ClassName: md5util
 * @Description: TODO(������һ�仰��������������)
 * @date 2019��1��21�� ����8:10:16
 * @author lpjz@foxmail.com
 * 
 */
public class md5util {
	public static String getMD5(String str) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(str.getBytes());
			return new BigInteger(1, md.digest()).toString(16);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
