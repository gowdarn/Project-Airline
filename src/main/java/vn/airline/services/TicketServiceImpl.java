package vn.airline.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.airline.dao.FlightDAO;
import vn.airline.dao.TicketDAO;
import vn.airline.entity.Flight;
import vn.airline.entity.Ticket;
import vn.airline.entity.User;
import vn.airline.utils.Constant;

@Service
public class TicketServiceImpl implements TicketService{

	@Autowired
	private TicketDAO ticketDAO;
	
	@Autowired
	private FlightDAO flightDAO;
	
	@Override
	public List<Ticket> getTicketByFlight(int flightId) {
		return ticketDAO.getTicketByJourney(flightId);
	}

	@Transactional
	@Override
	public void saveTicket(Ticket ticket) {
		ticketDAO.save(ticket);
	}

	@Transactional
	@Override
	public void updatePayment(User user) {
		List<Ticket> listTicket = user.getListTicket();
		
		for (Ticket tiket : listTicket){
			tiket.setState(Constant.TICKET.PAID);
			ticketDAO.save(tiket);
		}
		
	}

	@Override
	public Ticket getTicketByCode(String code) {
		List<Ticket> tickets = ticketDAO.findByCode(code);
		if (tickets.size()>0){
			Ticket ticket = tickets.get(0);
			return ticket;
		}
		return null;
	}

	@Override
	public List<Ticket> getAllByUserId(int userId) {
		return ticketDAO.findTicketByUserId(userId);
	}

	@Override
	public List<Ticket> getListWaitingByUserId(int userId) {
		List<Ticket> result = new ArrayList<>();
		List<Ticket> liTickets = ticketDAO.findTicketByUserId(userId);
		Date today = new Date();
		
		for (Ticket ticket : liTickets){
			if  (ticket.getFlight().getStartTime().after(today)){
				result.add(ticket);
			}
		}
		return result;
	}

	@Transactional
	@Override
	public void remove(Ticket ticket) {
		ticketDAO.delete(ticket.getId());
		
		Flight flight = ticket.getFlight();
		if (ticket.getType()==Constant.TICKET.TYPE_VIP){
			flight.setBookedVip(flight.getBookedVip()-1);
		} else {
			flight.setBookedEco(flight.getBookedEco()-1);
		}
		
		flightDAO.save(flight);
		
	}

}
