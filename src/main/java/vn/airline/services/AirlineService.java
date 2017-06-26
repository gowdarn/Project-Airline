package vn.airline.services;

import java.util.List;

import vn.airline.entity.Airline;

public interface AirlineService {
	int getCount();
	
	List<Airline> getAll();
	
	Airline findOne(int id);
	
	void save(Airline airline);
}
