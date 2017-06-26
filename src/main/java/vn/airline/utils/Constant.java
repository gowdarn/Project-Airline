package vn.airline.utils;

public interface Constant {
	interface SESSISON{
		String BOOKING = "session_booking";
		String USER = "session_user";
		
	}
	
	interface USER{
		int ADMIN = 0;
		int NORMAL = 1;
		int ACTIVE = 2;
		
	}
	
	interface TICKET{
		int PAID = 1;
		int UN_PAID = 0;
		
		int TYPE_VIP = 1;
		int TYPE_ECO = 2;
	}
}
