package vn.airline.services;

import java.util.Date;
import java.util.List;

import vn.airline.entity.Flight;

public interface FlightService {
	
	Flight findOne(int id);
	
	List<Flight> getAllByDate(Date date, String locationGo, String locationOn);
	
	boolean checkBooked(int flightId, int ticketTypep);
	
	int updateBooked(Flight flight, int ticketTypep);
	
	List<Flight> findAllWait(Date date);
	
	void save(Flight flight);
}
