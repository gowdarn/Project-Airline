package vn.airline.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.airline.dao.JourneyDAO;
import vn.airline.entity.Journey;

@Service
public class JourneyServiceImpl implements JourneyService{

	@Autowired
	private JourneyDAO journeyDAO;
	
	@Override
	public List<Journey> findAll() {
		return journeyDAO.findAll();
	}

	@Override
	public List<String> findAllDistinct() {
		
		return journeyDAO.findDistinctLocationFrom();
	}

	@Override
	public List<String> findByLocationFrom(String locationFrom) {
		List<String> result = journeyDAO.findByLocationFrom(locationFrom);
		
		return result;
	}

	@Override
	public long count() {
		return journeyDAO.count();
	}

	@Override
	public Journey findOne(int id) {
		return journeyDAO.findOne(id);
	}

	@Override
	public void save(Journey journey) {
		journeyDAO.save(journey);
	}

	

}
