package com.hsd.job.util;

import java.lang.reflect.Field;

/**  
* @ClassName: StatisticsUtil  
* @Description: ���������������(�������)
* @date 2019��2��28�� ����1:46:49    
* @author lpjz@foxmail.com
*    
*/
public  class StatisticsUtil {

	public static int Percentage(Object obj){
		int sum=14;
		int count=0;
		Field[] files = obj.getClass().getDeclaredFields();
		for (int i = 0; i < files.length; i++) {
			//ǿ�Ʒ�������
			try {
				files[i].setAccessible(true);
				Object value = files[i].get(obj);
				if (!value.equals("")||value!=null) {
					count++;
				}
			} catch (Exception e){
			}
		}
		return (int) Math.ceil(count*1.0/sum*100);
	}
}
