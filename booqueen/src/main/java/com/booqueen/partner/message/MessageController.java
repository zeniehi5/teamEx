package com.booqueen.partner.message;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelVO;
import com.booqueen.partner.reservation.ReservationDetailVO;
import com.booqueen.partner.reservation.ReservationService;
import com.booqueen.user.chat.vo.ChatVO;
import com.google.gson.Gson;

@Controller
public class MessageController {
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping(value = "/message.pdo", method = RequestMethod.GET)
	public String getMessage(@ModelAttribute("hotel")HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				List<ChatVO> messageList = messageService.selectMessageListByHotelSerial(hotel.getSerialnumber());
				model.addAttribute("messageList", messageList);
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "message";
	}
	
	@RequestMapping(value = "/inquiry.pdo", method = RequestMethod.GET)
	public String getInqueryPage(HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				List<InquiryVO> inquiry = hotelService.selectInquiryByHotelSerial(hotel.getSerialnumber());
				System.out.println(inquiry.toString());
				model.addAttribute("hotel", hotel);
				model.addAttribute("inquiry", inquiry);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "inquiry";
	}
	
	@RequestMapping(value = "/selectReservationDetail.pdo", method = RequestMethod.POST)
	@ResponseBody
	public ReservationDetailVO selectReservationDetail(@RequestBody ChatVO chatVO) {
		System.out.println("ajax 요청 도착");
		ReservationDetailVO detail = reservationService.selectReservationDetailByRSVN(chatVO.getReservation_number());
		
		return detail;
	}
	
	@RequestMapping(value = "/insertInquiryAnswer.pdo", method = RequestMethod.POST)
	public String insertInquiryAnswer(InquiryVO inquiry, HttpSession session, HotelVO hotel, Model model) {
		System.out.println(inquiry.toString());
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			System.out.println("도착");
			model.addAttribute("hotel", hotel);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "";
	}

}
