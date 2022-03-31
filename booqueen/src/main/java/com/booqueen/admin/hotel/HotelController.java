package com.booqueen.admin.hotel;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.booqueen.admin.hotel.impl.HotelServiceImpl;
import com.booqueen.admin.terms.TermsVO;
import com.booqueen.admin.terms.impl.TermsServiceImpl;
import com.booqueen.partner.room.RoomVO;

@Controller
public class HotelController {
	
	@Autowired
	HotelServiceImpl hotelServiceImpl;
	
	@Autowired
	TermsServiceImpl termsServiceImpl;
	
	@Autowired
	private RoomService roomService;
	
	@RequestMapping(value = "/hotelList.mdo", method=RequestMethod.GET)
	public String hotelList(Model model) {
		
		List<com.booqueen.admin.hotel.HotelVO> hotelList = hotelServiceImpl.getHotelMember();
		model.addAttribute("hotelList", hotelList);
		
		return "hotelList";
	}
	@RequestMapping(value = "/hotelDetail.mdo", method=RequestMethod.GET)
	public String hotelDetail(HttpSession session, @RequestParam("serialnumber")int serialnumber, Model model) {
		HotelDetailVO hotelDetail = hotelServiceImpl.selectHotelDetail(serialnumber);
		List<RoomVO> roomList = roomService.selectRoomListByHotelSerial(serialnumber);
		model.addAttribute("roomList", roomList);
		model.addAttribute("hotelDetail", hotelDetail);
		return "hotelDetail";
	}
	@RequestMapping(value = "/roomDetail.mdo", method=RequestMethod.GET)
	public String roomDetail(@RequestParam("room_id")int room_id, HttpSession session, Model model) {
		RoomDetailVO details = roomService.selectRoomDetailsByRoomId(room_id);
		model.addAttribute("details", details);
		return "roomDetail";
	}
	@RequestMapping(value = "/reservationStatus.mdo", method=RequestMethod.GET)
	public String reservationStatus(Model model, HttpSession session) {
		List<ReservationVO> reservation = hotelServiceImpl.selectReservationList();
		model.addAttribute("reservation", reservation);
		Date now = new Date();
		model.addAttribute("now", now);
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
	@RequestMapping(value = "/reportContent.mdo", method=RequestMethod.GET)
	public String reportContent(HttpSession session) {
		return "reportContent";
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
	
	@RequestMapping(value = "/terms.mdo", method=RequestMethod.GET)
	public String terms(HttpSession session, Model model) {
		List<TermsVO> termsList = termsServiceImpl.termsList();
		if(termsList != null) {
			model.addAttribute("termsList", termsList);
		}
		return "terms";
	}
	@RequestMapping(value = "/termsUpload.mdo", method=RequestMethod.GET)
	public String termsUpload(HttpSession session) {
		return "termsUpload";
	}
	
	@RequestMapping(value = "/index2.mdo", method=RequestMethod.GET)
	public String index2(HttpSession session) {
		return "index2";
	}
	@RequestMapping(value = "/userMemberDetail.mdo", method=RequestMethod.GET)
	public String userMemberDetail(HttpSession session) {
		return "userMemberDetail";
	}
	
}
