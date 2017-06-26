package vn.airline.services;

import java.util.List;

import vn.airline.entity.Journey;

public interface JourneyService {
	
	List<Journey> findAll();
	
	List<String> findAllDistinct();
	
	List<String> findByLocationFrom(String locationFrom);
	
	long count();
	
	Journey findOne(int id);
	
	void save(Journey journey);

}
