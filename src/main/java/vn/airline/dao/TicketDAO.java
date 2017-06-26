package vn.airline.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import vn.airline.entity.Ticket;

@Service
public interface TicketDAO extends CrudRepository<Ticket, Integer>{
	
	@Query("select t from Ticket t where t.flight.id = :flightId")
	List<Ticket> getTicketByJourney(@Param("flightId") int flightId);
	
	List<Ticket> findByCode(String code);
	
	@Query("select t from Ticket t where t.user.id = :userId")
	List<Ticket> findTicketByUserId(@Param("userId") int userId);
	
}
