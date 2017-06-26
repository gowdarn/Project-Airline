package vn.airline.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.airline.entity.Flight;
import vn.airline.entity.User;
import vn.airline.services.FlightService;
import vn.airline.services.TicketService;
import vn.airline.services.UserService;
import vn.airline.utils.BookSession;
import vn.airline.utils.Constant;
import vn.airline.validator.FormUserValidator;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private FlightService flightService;
	
	@Autowired
	private TicketService ticketService;
	
	@Autowired
	private FormUserValidator formUserValidator;
	
	@GetMapping("/login")
	public String login(){
		return "login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session){
		session.invalidate();
		System.out.println("logout");
		return "redirect:home";
	}
	
	@GetMapping("/user-info")
	public String userInfo( Principal principal, Model model){
		String email = principal.getName();
		User user = (User) userService.findByEmail(email);
		
		if (user.getRoles()==Constant.USER.ADMIN){
			return "redirect:admin";
		}
		
//		ModelAndView mv = new ModelAndView("profileUser");
//		mv.addObject("listWaiting", ticketService.getListWaitingByUserId(user.getId()));
//		mv.addObject("listHistory", ticketService.getAllByUserId(user.getId()));
//		mv.addObject("user", user);
		
		model.addAttribute("listWaiting", ticketService.getListWaitingByUserId(user.getId()));
		model.addAttribute("listHistory", ticketService.getAllByUserId(user.getId()));
		model.addAttribute("user", user);
		
		return "profileUser";
	}
	
	
	@GetMapping("/register")
	public String register(Model model){
		model.addAttribute("userForm", new User());
		
		return "register";
	}
	
	@PostMapping("/register")
	public String registerForm(@ModelAttribute("userForm") @Validated User user, BindingResult result){
		
		formUserValidator.validate(user, result);
		
		if (result.hasErrors()){
			return "register";
		} else {
			User userTmp = user;
			String password = user.getPassword();
			userTmp.setPassword(password);
			userTmp.setRoles(Constant.USER.ACTIVE);
			
			userService.saveUser(userTmp);
		}
		return "login";
	}
	
	@GetMapping("/book")
	public ModelAndView setInfo(){
		ModelAndView mv = new ModelAndView("bookTicket");
		return mv;
	}
	
	@PostMapping("/book")
	public ModelAndView setBook(
			@RequestParam("flightFromId") int flightFromId,
			@RequestParam(defaultValue="0",value="flightToId" ) int flightToId,
			@RequestParam("typeTicketFrom") String typeTicketFrom,
			@RequestParam(value="typeTicketTo", defaultValue="") String typeTicketTo,
			HttpSession httpSession){
		ModelAndView mv = new ModelAndView("bookTicket");
		BookSession bookSession = (BookSession) httpSession.getAttribute(Constant.SESSISON.BOOKING);
		
		mv.addObject("people", bookSession.getNumPeople());
		mv.addObject("children", bookSession.getNumChildren());
		
		Flight flightFrom = flightService.findOne(flightFromId);
		mv.addObject("flightGo", flightFrom);
		mv.addObject("typeTicketGo", typeTicketFrom);
		bookSession.setFlightGoId(flightFromId);
		
		bookSession.setTypeGo((typeTicketFrom.equals("vip"))?Constant.TICKET.TYPE_VIP:Constant.TICKET.TYPE_ECO);
		
		//nếu khứ hồi
		if (bookSession.isRound()){
			Flight flightTo = flightService.findOne(flightToId);
			mv.addObject("flightOn", flightTo);
			mv.addObject("typeTicketOn", typeTicketTo);
			bookSession.setFlightOnId(flightToId);
			bookSession.setTypeOn((typeTicketTo.equals("vip"))?Constant.TICKET.TYPE_VIP:Constant.TICKET.TYPE_ECO);
		
		}
		
		mv.addObject("goOn", (bookSession.isRound())?2:1);
		
		httpSession.setAttribute(Constant.SESSISON.BOOKING, bookSession);
		
		return mv;
	}
	
	
	@PostMapping("/user-info")
	public String updateProfile(
			@RequestParam("userId") int userId,
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			@RequestParam("phone") String phone,
			@RequestParam("address") String address){
		
		User user = new User(userId, name, password,email, phone, address);
		userService.saveUser(user);
		
		return "home";
	}
	
	
	

	
	
	
}
