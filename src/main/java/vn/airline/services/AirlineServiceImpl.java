package vn.airline.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.airline.dao.AirlineDAO;
import vn.airline.entity.Airline;

@Service
public class AirlineServiceImpl implements AirlineService{
	
	@Autowired
	private AirlineDAO airlineDAO;

	@Override
	public int getCount() {
		return (int) airlineDAO.count();
	}

	@Override
	public List<Airline> getAll() {
		return airlineDAO.findAll();
	}

	@Override
	public Airline findOne(int id) {
		return airlineDAO.findOne(id);
	}

	@Override
	public void save(Airline airline) {
		airlineDAO.save(airline);
		
	}
	
}
