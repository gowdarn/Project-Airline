package vn.airline.test;

import java.util.Date;

public class CreateDb{
	
	public static void main(String[] args) {
		int start = 100, end = 200;
		
		String num = "ABC0123";
		String first = "ABC";
		
		System.out.println(formatName("A", num));
		System.out.println(getRange(num, first));
		
		if (getRange(num, first)>=start && getRange(num, first)<=end){
			System.out.println("true");
		} else {
			System.out.println("false");
		}
		
		
		
	}
	
	private static boolean formatName(String first, String name){
        if (name.startsWith(first)){
            return  true;
        }
        return false;
    }

    private static int getRange(String name, String first){
        String value = name.substring(first.length(), name.length());
        return Integer.parseInt(value);
    }
	
}