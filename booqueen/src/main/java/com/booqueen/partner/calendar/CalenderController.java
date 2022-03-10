package com.booqueen.partner.calendar;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelVO;

@Controller
public class CalenderController {
	
	@Autowired
	private HotelService hotelService;
	
	@RequestMapping(value = "/calendar.pdo", method = RequestMethod.GET)
	public String getMonthlyCalendar(Model model, HttpSession session) {
		HotelVO hotel = hotelService.getHotelByMemberEmail((String) session.getAttribute("email"));
		if(hotel != null) {
			model.addAttribute("hotel", hotel);
			//예약 내역 가져오기
		}
		return "calendar";
	}

}
