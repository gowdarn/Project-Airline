package vn.airline.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import vn.airline.entity.Flight;

public interface FlightDAO extends CrudRepository<Flight, Integer> {
	
	@Query("select f from Flight f where f.startTime > :dateMin and f.startTime < :dateMax and f.journey.locationFrom = :locationGo and f.journey.locationTo = :locationOn order by f.startTime")
	List<Flight> findByDate(@Param("dateMin") Date dateMin, 
			@Param("dateMax") Date dateMax, 
			@Param("locationGo") String locationGo,
			@Param("locationOn") String locationOn);
	
	@Query("select f from Flight f where f.startTime >= :date order by f.startTime")
	List<Flight> findAllWait(@Param("date") Date date);
}
