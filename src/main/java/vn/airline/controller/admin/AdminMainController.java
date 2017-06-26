package vn.airline.controller.admin;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.airline.entity.Airline;
import vn.airline.entity.Flight;
import vn.airline.entity.Journey;
import vn.airline.entity.User;
import vn.airline.services.AirlineService;
import vn.airline.services.FlightService;
import vn.airline.services.JourneyService;
import vn.airline.services.UserService;
import vn.airline.utils.Constant;
import vn.airline.utils.Utils;

@Controller
@RequestMapping("/admin")
public class AdminMainController {

	@Autowired
	private AirlineService airlineService;

	@Autowired
	private FlightService flightService;

	@Autowired
	private UserService userService;

	@Autowired
	private JourneyService journeyService;

	@GetMapping("")
	public ModelAndView adminHome(Principal principal) {
		User user = userService.findByEmail(principal.getName());
		ModelAndView mv = new ModelAndView("admin/adminHome");

		mv.addObject("countAirline", airlineService.getCount());
		mv.addObject("countUserActive", userService.findByRoles(Constant.USER.ACTIVE).size());
		mv.addObject("countJourney", journeyService.count());

		mv.addObject("flightWait", flightService.findAllWait(new Date()));
		mv.addObject("listJourney", journeyService.findAll());
		mv.addObject("listAirline", airlineService.getAll());
		mv.addObject("listUser", userService.findAll());

		mv.addObject("user", user);

		return mv;
	}

	@GetMapping("/flight")
	public ModelAndView addFlight(@RequestParam(defaultValue = "0", value = "flight") int flightId) {
		ModelAndView mv = new ModelAndView("admin/adminFlight/adminFlight");
		List<Journey> journeys = journeyService.findAll();
		mv.addObject("journeys", journeys);
		mv.addObject("airlines", airlineService.getAll());
		if (flightId == 0) {
			mv.addObject("action", "add");
		} else {
			mv.addObject("action", "edit");
			Flight flight = flightService.findOne(flightId);
			mv.addObject("flight", flight);
		}
		return mv;

	}

	@PostMapping("/flight")
	public String addFlightPost(@RequestParam("startTime") String startTime,
			@RequestParam("journeyId") String journeyId, @RequestParam("airlineId") String airlineId,
			@RequestParam("endTime") String endTime, @RequestParam("priceVip") String priceVip,
			@RequestParam("priceEco") String priceEco, @RequestParam("code") String code) {

		Journey journey = journeyService.findOne(Integer.parseInt(journeyId));
		Airline airline = airlineService.findOne(Integer.parseInt(airlineId));

		Flight flight = new Flight(airline, journey, Utils.getDate(startTime), Utils.getDate(endTime),
				Double.parseDouble(priceEco), Double.parseDouble(priceVip), code);

		flightService.save(flight);

		return "redirect:/admin";

	}

	@GetMapping("/airline")
	public ModelAndView addAirline(@RequestParam(defaultValue = "0", value = "airline") int airlineId) {
		ModelAndView mv = new ModelAndView("admin/adminAirline/adminAirline");

		if (airlineId == 0) {
			mv.addObject("action", "add");
		} else {
			mv.addObject("action", "edit");
			Airline airline = airlineService.findOne(airlineId);
			mv.addObject("airline", airline);
		}

		return mv;
	}

	@PostMapping("/airline")
	public String addAirlinePost(@RequestParam("name") String name, @RequestParam("seatVip") int seatVip,
			@RequestParam("seatEco") int seatEco,
			@RequestParam(defaultValue = "0", value = "airlineId") int airlineId) {

		Airline airline;
		if (airlineId!=0){
			 airline = new Airline(airlineId, name, seatEco,
					seatVip);
		} else {
			airline = new Airline(name, seatEco, seatVip);
		}
		airlineService.save(airline);

		return "redirect:/admin";

	}

	@GetMapping("/journey")
	public ModelAndView addJourney(@RequestParam(defaultValue = "0", value = "journey") int journeyId) {
		ModelAndView mv = new ModelAndView("admin/adminJourney/adminJourney");

		if (journeyId == 0) {
			mv.addObject("action", "add");
		} else {
			mv.addObject("action", "edit");
			Journey journey = journeyService.findOne(journeyId);
			mv.addObject("journey", journey);
		}

		return mv;
	}

	@PostMapping("/journey")
	public String addJourneyPost(@RequestParam(value = "journeyId", defaultValue = "0") int journeyId,
			@RequestParam("locationFrom") String locationFrom, @RequestParam("locationTo") String locationTo) {

		Journey journey;
		if (journeyId != 0) {
			journey = new Journey(journeyId, locationTo, locationFrom);
		} else {
			journey = new Journey(locationTo, locationFrom);
		}

		journeyService.save(journey);

		return "redirect:/admin";

	}

}
