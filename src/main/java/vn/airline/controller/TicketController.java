package vn.airline.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.airline.entity.Flight;
import vn.airline.entity.Ticket;
import vn.airline.entity.User;
import vn.airline.services.FlightService;
import vn.airline.services.TicketService;
import vn.airline.services.UserService;
import vn.airline.utils.BookSession;
import vn.airline.utils.Constant;
import vn.airline.utils.Utils;

@Controller
public class TicketController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private FlightService flightService;
	
	@Autowired
	private TicketService ticketService;
	
	@GetMapping("/detail")
	public ModelAndView detailBook(){
		ModelAndView mv = new ModelAndView("detailTicket");
		return mv;
	}
	
	@PostMapping("/detail")
	public ModelAndView detailBook(
			@RequestParam("name") String name,
			@RequestParam("phone_number") String phone,
			@RequestParam("email") String email,
			@RequestParam("address") String address,
			@RequestParam("birthday") String birthday,
			HttpSession session){
		ModelAndView mv = new ModelAndView("detailTicket");
		
		BookSession bookSession =(BookSession) session.getAttribute(Constant.SESSISON.BOOKING);
	
		// if not exists then create
		User user;
		if (!userService.isExistsByEmail(email)){
			user = new User(name, email,"default", phone, 0, Constant.USER.NORMAL, Utils.getDate(birthday), address);
			userService.saveUser(user);
		} else {
			user = userService.findByEmail(email);
			user.setName(name);
			user.setPhone(phone);
			user.setAddress(address);
			user.setBirthDay(Utils.getDate(birthday));
			userService.update(user);
		}
		
		//update user
		
		
		mv.addObject("user", user);
		List<Ticket> listAllTicket = new ArrayList<>();
		
		Flight flight = flightService.findOne(bookSession.getFlightGoId());
		int typeGo = bookSession.getTypeGo();
		List<Ticket> listTicketGo = new ArrayList<>();
		int people = bookSession.getNumPeople();
		if (flightService.checkBooked(flight.getId(),typeGo)){
			for (int i =0 ; i<people; i++){
				int seat = flightService.updateBooked(flight, typeGo);
				Ticket ticket = new Ticket(user, flight, Utils.getCodeTicket(flight.getCode()), Constant.TICKET.UN_PAID, typeGo, seat);
				ticketService.saveTicket(ticket);
				listTicketGo.add(ticket);
			}
			mv.addObject("flightGo", flight);
			mv.addObject("listTicketGo", listTicketGo);
			if  (typeGo==Constant.TICKET.TYPE_VIP){
				mv.addObject("typeGo", "VIP");
			}
			listAllTicket.addAll(listTicketGo);
		} else{
			//TODO  
		}
		

		//nếu khứ hồi
		if (bookSession.isRound()){
			int typeOn = bookSession.getTypeOn();
			Flight flightOn = flightService.findOne(bookSession.getFlightOnId());
			List<Ticket> listTicketOn = new ArrayList<>();
			if (flightService.checkBooked(flightOn.getId(),typeOn)){
				for (int i=0; i<people; i++){
					int seat = flightService.updateBooked(flightOn, typeGo);
					Ticket ticket = new Ticket(user, flightOn, Utils.getCodeTicket(flightOn.getCode()), Constant.TICKET.UN_PAID, typeOn, seat);
					ticketService.saveTicket(ticket);
					listTicketOn.add(ticket);
				}
				mv.addObject("flightOn", flight);
				mv.addObject("listTicketOn", listTicketOn);
				if  (bookSession.getTypeOn()==Constant.TICKET.TYPE_VIP){
					mv.addObject("typeOn", "VIP");
				}
				listAllTicket.addAll(listTicketOn);

			}
			
		}
		mv.addObject("goOn", (bookSession.isRound())?2:1);
		
		user.setListTicket(listAllTicket);
		
		session.setAttribute(Constant.SESSISON.USER, user);
		
		
		
		
		return mv;
	}
	
	@PostMapping("/payment")
	public ModelAndView payment(HttpSession session){
		ModelAndView mv =new ModelAndView("paymentSuccess");
		
		User user = (User) session.getAttribute(Constant.SESSISON.USER);
		ticketService.updatePayment(user);
		
		return mv;
	}
	
	@GetMapping("/payment")
	public ModelAndView paymentGet(){
		ModelAndView mv =new ModelAndView("paymentSuccess");
		
		return mv;
	}
	
	
	@GetMapping("/info-ticket")
	public String infoTicketGet(){
		return "searchTicket";
	}
	
	
	
	
	
}
