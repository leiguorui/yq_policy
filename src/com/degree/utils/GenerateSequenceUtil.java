package com.degree.utils;

import java.text.DecimalFormat;
import java.text.FieldPosition;
import java.text.Format;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 根据时间生成序列id
 * @author leiguorui
 *
 */
public class GenerateSequenceUtil {

	 public static void main(String[] args) {  
		 System.out.println(generateSequenceNo("BD", "No_20130817_0111"));
	 }

    /**
     * 时间格式生成序列
     * @return String
     */
    public static synchronized String generateSequenceNo(String preFix,  String original) {
		SimpleDateFormat dateformat1=new SimpleDateFormat("yyyyMMdd");
		String date=dateformat1.format(new Date());
		int id = 0;
		
		try{
			//使用_分割
			String[] idArray = original.split("_");
			
			//如果是当日,则加1,否则默认
			if(date.equals(idArray[1])){
				id = Integer.parseInt(idArray[2])+1;
				date = idArray[1];
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
    	return preFix + "_" + date + "_" + String.format("%03d", id);
    }
}