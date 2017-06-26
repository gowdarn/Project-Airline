package vn.airline.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import vn.airline.entity.Journey;

public interface JourneyDAO extends  CrudRepository<Journey, Integer>{
	
	List<Journey> findAll();
	
	@Query("select distinct j.locationFrom from Journey as j")
	List<String> findDistinctLocationFrom();
	
	@Query("select distinct j.locationTo from Journey j where j.locationFrom = :locationFrom")
	List<String> findByLocationFrom(@Param("locationFrom") String locationFrom);
	
	

}
