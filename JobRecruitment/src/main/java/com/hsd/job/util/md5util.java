package com.hsd.job.util;

import java.math.BigInteger;
import java.security.MessageDigest;

/**
 * @ClassName: md5util
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2019年1月21日 下午8:10:16
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
