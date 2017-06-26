package vn.airline.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Utils {
	
	public static Date getDate(String dateDay){
		dateDay = dateDay.replaceAll("-", "/");
		dateDay  = dateDay + " 00:00:00";
		
		Date date = new Date();
		try {
			date = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").parse(dateDay);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
		
	}
	
	public static Date getDateTime(String dateTime){
		Date date = new Date();
		try {
			date = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").parse(dateTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
		
	}
	
	public static String getCodeTicket(String flightCode){
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append(flightCode);
		
		Date date = new Date();
		long  a = date.getTime();
		String aString = String.valueOf(a);
		aString = aString.substring(5, aString.length());
		
		stringBuffer.append(aString);
		return stringBuffer.toString();
	}
	
	public static void main(String[] args) {
		String s = "2017-04-05";
		System.out.println(getDate(s));

		System.out.println(getCodeTicket("ABC"));
		
	}

}
