package com.booqueen.partner.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booqueen.partner.hotel.HotelImageVO;
import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelVO;
import com.booqueen.partner.message.MessageService;
import com.booqueen.partner.reservation.ReservationService;
import com.booqueen.partner.reservation.ReservationVO;
import com.booqueen.user.chat.vo.ChatVO;

@Controller
public class LoginController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private MessageService messageService;
	
	@RequestMapping(value = "/login.pdo", method = RequestMethod.POST)
	public String checkEmail(MemberVO vo, HttpServletRequest request) {
		MemberVO member = memberService.getMember(vo);	
		if(member != null) {
			HttpSession session = request.getSession();
			session.setAttribute("email", member.getEmail());
			return "password";
		} else {
			return "register";
		}
	}
	
	@RequestMapping(value = "/password.pdo", method = RequestMethod.POST)
	public String checkPassword(MemberVO vo, @ModelAttribute("hotel")HotelVO hotel, Model model, HttpSession session) {
		MemberVO member = memberService.getPassword(vo);
		if(member != null) {
			session.setAttribute("password", member.getPassword());
			session.setAttribute("firstName", member.getFirstname());
			try {
				hotel = hotelService.getHotelByMemberEmail(member.getEmail());
				if(hotel != null) {
					List<ReservationVO> reservation = reservationService.selectReservationListByHotelSerial(hotel.getSerialnumber());
					List<ChatVO> messageList = messageService.selectMessageListByHotelSerial(hotel.getSerialnumber());
					HotelImageVO image = hotelService.selectHotelImgByHotelSerial(hotel.getSerialnumber());
					session.setAttribute("image", image.getFile_url());
					model.addAttribute("messageList", messageList);
					model.addAttribute("reservation", reservation);
				}
				model.addAttribute("hotel", hotel);
			} catch(Exception e) {
				e.printStackTrace();
			}		
			return "home";
		} else
			return "password";
	}
	
	@RequestMapping(value = "/logout.pdo", method = RequestMethod.GET)
	public String logout(HttpSession session, HttpServletResponse response) throws IOException {
		session.invalidate();
		return "redirect:/login.jsp";
	}

}
