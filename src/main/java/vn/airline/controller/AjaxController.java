package vn.airline.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import vn.airline.entity.Ticket;
import vn.airline.entity.User;
import vn.airline.services.JourneyService;
import vn.airline.services.TicketService;
import vn.airline.services.UserService;
import vn.airline.utils.Constant;

@Controller
@RequestMapping("/ajax")
public class AjaxController {
	
	@Autowired
	private JourneyService journeyService;
	
	@Autowired 
	private UserService userService;
	
	@Autowired 
	private TicketService ticketService;
	

	
	@GetMapping("/getLocationTo/{locationFrom}")
	public ModelAndView getLocationTo(@PathVariable("locationFrom") String locationFrom){
		ModelAndView mv =new ModelAndView("items/homeListTo");
		
		System.out.println(journeyService.findByLocationFrom(locationFrom).size());
		mv.addObject("listTo", journeyService.findByLocationFrom(locationFrom));
		return mv;
	}
	
	@PostMapping("/checkEmail")
	@ResponseBody
	public String checkEmail(@RequestParam("email") String email){
		User u = userService.findByEmail(email);
		if (u==null){
			return "success";
		}
		return "isExists";
	}
	
	@GetMapping("/info-ticket/{codeTicket}")
	public ModelAndView checkInfoTicket(@PathVariable("codeTicket") String code){
		ModelAndView mv = new ModelAndView("items/infoTicket");
		
		mv.addObject("ticket", ticketService.getTicketByCode(code));
		
		
		return mv;
	}
	
	@GetMapping("/returnTicket/{code}")
	@ResponseBody
	public String returnTicket(@PathVariable("code") String ticketCode, HttpSession session){
		Ticket ticket = ticketService.getTicketByCode(ticketCode);
		User user = (User) session.getAttribute(Constant.SESSISON.USER);
		
		if (user.getId()==ticket.getUser().getId()){
			 ticketService.remove(ticket);
			 return "success";
		} else {
			return "error";
		}
		
	}
}
