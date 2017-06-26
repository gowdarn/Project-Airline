package vn.airline.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.airline.entity.Flight;
import vn.airline.services.FlightService;
import vn.airline.utils.BookSession;
import vn.airline.utils.Constant;
import vn.airline.utils.Utils;

@Controller
public class FlightController {
	@Autowired
	private FlightService flightService;
	
	@PostMapping("/search")
	public ModelAndView doSearch(@RequestParam("radio") String isRound,
			@RequestParam("locationFrom") String locationGo,
			@RequestParam("dateFrom") String dateGo,
			@RequestParam("locationTo") String locationOn,
			@RequestParam(defaultValue="0" ,value="dateTo") String dateOn,
			@RequestParam("people") int people,
			@RequestParam(defaultValue="0", value="children") int children,
			HttpSession httpSession){
		BookSession bookSession = new BookSession();
		bookSession.setNumPeople(people);
		bookSession.setNumChildren(children);
		bookSession.setRound(false);
		
		ModelAndView mv = new ModelAndView("flightSearch");
		
		List<Flight> listGo = flightService.getAllByDate(Utils.getDate(dateGo), locationGo, locationOn);
		mv.addObject("listDateGo", listGo);
		
		if (isRound.equals("2")){
			List<Flight> listOn = flightService.getAllByDate(Utils.getDate(dateOn), locationOn, locationGo);
			mv.addObject("listDateOn", listOn);
			if (listOn.size()>0) bookSession.setRound(true);
		}
		
		mv.addObject("people", people);
		mv.addObject("children", children);
		mv.addObject("locationGo", locationGo);
		mv.addObject("locationOn", locationOn);
		mv.addObject("goOn", isRound);
		
		httpSession.setAttribute(Constant.SESSISON.BOOKING, bookSession);
		
		return mv;
	}
	

}
