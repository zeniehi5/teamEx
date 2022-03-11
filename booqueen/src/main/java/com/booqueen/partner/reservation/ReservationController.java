package com.booqueen.partner.reservation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelVO;

@Controller
public class ReservationController {
	
	@Autowired
	private HotelService hotelService;
	
	@RequestMapping(value = "/reservation.pdo", method = RequestMethod.GET)
	public String getReservationList(@ModelAttribute("hotel")HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			model.addAttribute("hotel", hotel);
		} catch(Exception e) {
			e.printStackTrace();
		}		
		return "search-reservation";
	}
	
	@RequestMapping(value = "/details.pdo", method = RequestMethod.GET)
	public String getReservationDetails(@ModelAttribute("hotel")HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "reservation-details";
	}
}
