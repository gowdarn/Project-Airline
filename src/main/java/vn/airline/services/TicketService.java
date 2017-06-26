package vn.airline.services;

import java.util.List;

import vn.airline.entity.Ticket;
import vn.airline.entity.User;

public interface TicketService {
	List<Ticket> getTicketByFlight(int flightId);
	
	void saveTicket(Ticket ticket);
	
	void updatePayment(User user);
	
	Ticket getTicketByCode(String code);
	
	List<Ticket> getAllByUserId(int userId);
	
	List<Ticket> getListWaitingByUserId(int userId);
	
	void remove(Ticket ticket);
}
