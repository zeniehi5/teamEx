package com.booqueen.admin.hotel;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booqueen.admin.hotel.impl.HotelServiceImpl;

@Controller
public class HotelController {
	
	@Autowired
	HotelServiceImpl hotelServiceImpl;
	
	@RequestMapping(value = "/hotelList.mdo", method=RequestMethod.GET)
	public String hotelList(Model model) {
		
		List<com.booqueen.admin.hotel.HotelVO> hotelList = hotelServiceImpl.getHotelMember();
		model.addAttribute("hotelList", hotelList);
		
		return "hotelList";
	}
	@RequestMapping(value = "/hotelDetail.mdo", method=RequestMethod.GET)
	public String hotelDetail(HttpSession session) {
		return "hotelDetail";
	}
	@RequestMapping(value = "/roomDetail.mdo", method=RequestMethod.GET)
	public String roomDetail(HttpSession session) {
		return "roomDetail";
	}
	@RequestMapping(value = "/reservationStatus.mdo", method=RequestMethod.GET)
	public String reservationStatus(Model model, HttpSession session) {
		List<ReservationVO> reservation = hotelServiceImpl.selectReservationList();
		model.addAttribute("reservation", reservation);
		System.out.println(model.toString());
		return "reservationStatus";
	}
	@RequestMapping(value = "/transactionHistory.mdo", method=RequestMethod.GET)
	public String transactionHistory(HttpSession session) {
		return "transactionHistory";
	}
	@RequestMapping(value = "/payment.mdo", method=RequestMethod.GET)
	public String payment(HttpSession session) {
		return "payment";
	}
	
	@RequestMapping(value = "/reportedUser.mdo", method=RequestMethod.GET)
	public String reportedUser(HttpSession session) {
		return "reportedUser";
	}

	/*
	 * @RequestMapping(value = "/PartnerMember.mdo", method=RequestMethod.GET)
	 * public String partnerMember(HttpSession session) { return "partnerMember"; }
	 */
	@RequestMapping(value = "/blockPartner.mdo", method=RequestMethod.GET)
	public String blockPartner(HttpSession session) {
		return "blockPartner";
	}
	@RequestMapping(value = "/faq.mdo", method=RequestMethod.GET)
	public String fap(HttpSession session) {
		return "faq";
	}
	@RequestMapping(value = "/faqCorrection.mdo", method=RequestMethod.GET)
	public String faqCorrection(HttpSession session) {
		return "faqCorrection";
	}
	@RequestMapping(value = "/faqUpload.mdo", method=RequestMethod.GET)
	public String faqUpload(HttpSession session) {
		return "faqUpload";
	}
	@RequestMapping(value = "/banner.mdo", method=RequestMethod.GET)
	public String banner(HttpSession session) {
		return "banner";
	}
	@RequestMapping(value = "/terms.mdo", method=RequestMethod.GET)
	public String terms(HttpSession session) {
		return "terms";
	}
	@RequestMapping(value = "/index2.mdo", method=RequestMethod.GET)
	public String index2(HttpSession session) {
		return "index2";
	}
	/*@RequestMapping(value = "/userMember.mdo", method=RequestMethod.GET)
	public String userMember(HttpSession session) {
		return "userMember";
	}*/
	@RequestMapping(value = "/userMemberDetail.mdo", method=RequestMethod.GET)
	public String userMemberDetail(HttpSession session) {
		return "userMemberDetail";
	}
	/*@RequestMapping(value = "/partnerMemberDetail.mdo", method=RequestMethod.GET)
	public String partnerMember(HttpSession session) {
		return "partnerMemberDetail";
	}*/
}
