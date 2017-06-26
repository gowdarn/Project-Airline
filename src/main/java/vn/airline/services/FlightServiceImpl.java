package vn.airline.services;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.commons.lang3.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.airline.dao.FlightDAO;
import vn.airline.entity.Flight;
import vn.airline.utils.Constant;

@Service
public class FlightServiceImpl implements FlightService{

	@Autowired
	private FlightDAO flightDAO;

	
	@Override
	public List<Flight> getAllByDate(Date date, String locationGo, String locationOn) {
		List<Flight> list = flightDAO.findByDate(DateUtils.addDays(date, -2), DateUtils.addDays(date, 2), locationGo, locationOn); 
		
		return list; 
	}

	@Override
	public Flight findOne(int id) {
		return flightDAO.findOne(id);
	}

	@Override
	public boolean checkBooked(int flightId, int ticketType) {
		Flight flight = flightDAO.findOne(flightId);
		
		if (ticketType==Constant.TICKET.TYPE_VIP){
			if (flight.getBookedVip()<flight.getAirline().getNumVip()){
				return true;
			} else {
				return false;
			}
		} else {
			if (flight.getBookedEco()<flight.getAirline().getNumEco()){
				return true;
			} else {
				return false;
			}
		}
	}

	@Transactional
	@Override
	public int updateBooked(Flight flight, int ticketType ) {
		Flight flightTmp = flight;
		int result=0;
		if (ticketType==Constant.TICKET.TYPE_VIP){
			flightTmp.setBookedVip(flightTmp.getBookedVip()+1);
			result = flight.getBookedVip()+1;
		} else {
			flightTmp.setBookedEco(flightTmp.getBookedEco()+1);
			result = flight.getBookedEco()+1;
		}
		
		flightDAO.save(flightTmp);
		
		return result;
		
	}

	@Override
	public List<Flight> findAllWait(Date date) {
		return flightDAO.findAllWait(date);
	}

	@Override
	public void save(Flight flight) {
		flightDAO.save(flight);
		
	}

}
