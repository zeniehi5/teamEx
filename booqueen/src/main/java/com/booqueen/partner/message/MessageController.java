package com.booqueen.partner.message;

import java.util.List;

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
public class MessageController {
	
	@Autowired
	private HotelService hotelService;
	
	@RequestMapping(value = "/message.pdo", method = RequestMethod.GET)
	public String getMessage(@ModelAttribute("hotel")HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
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

}
