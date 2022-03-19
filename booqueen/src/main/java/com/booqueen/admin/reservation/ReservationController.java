package com.booqueen.admin.reservation;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReservationController {
	
	@RequestMapping(value = "/reservationStatusDetail.mdo", method=RequestMethod.GET)
	public String reservationStatusDetail(HttpSession session) {
		return "reservationStatusDetail";
	}
}
