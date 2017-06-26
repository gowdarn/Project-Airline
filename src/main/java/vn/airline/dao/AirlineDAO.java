package vn.airline.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vn.airline.entity.Airline;

public interface AirlineDAO extends CrudRepository<Airline, Integer>{
	List<Airline> findAll();

}
