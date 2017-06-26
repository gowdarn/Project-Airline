/**
 * 
 */
/**
 * @author TOAN-PC
 *
 */
package vn.airline.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vn.airline.services.JourneyService;

@Controller
public class MainController{
	
	@Autowired
	private JourneyService journeyService;
	
	
	@RequestMapping("/home")
	public ModelAndView home(){
		
		System.out.println("-----------");
		
		ModelAndView mv= new ModelAndView("home");
		mv.addObject("listFrom", journeyService.findAllDistinct());
		
		return mv;
	}
	
	@GetMapping("/contact")
	public String contact(){
		return "contact";
	}
	
	@GetMapping("/403")
	public String page403(){
		return "error/403Page";
	}
	@GetMapping("/404")
	public String page404(){
		return "error/404Page";
	}
	
}