package com.booqueen.partner.message;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelVO;
import com.booqueen.partner.reservation.Pagination;
import com.booqueen.partner.reservation.PagingVO;
import com.booqueen.partner.reservation.ReservationDetailVO;
import com.booqueen.partner.reservation.ReservationService;
import com.booqueen.user.chat.vo.ChatVO;

@Controller
public class MessageController {
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping(value = "/message.pdo")
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
	public String getInqueryPage(@RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage,
			HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				int listCount = messageService.selectMessageCount(hotel.getSerialnumber());	//문의글 수
				PagingVO paging = Pagination.getPagingVO(currentPage, listCount);
				List<InquiryVO> inquiryList = hotelService.selectInquiryByHotelSerial(hotel.getSerialnumber(), paging);
				model.addAttribute("paging", paging);
				model.addAttribute("hotel", hotel);
				model.addAttribute("inquiryList", inquiryList);
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
	public String insertInquiryAnswer(@RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage,
			InquiryVO inquiry, HttpSession session, HotelVO hotel, 
										Model model, HttpServletResponse response) throws IOException {
		hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
		
		int insertNumber = 0;
		int updateNumber = 0;
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter writer = response.getWriter();
		
		if(inquiry != null) {
			inquiry.setSerialnumber(hotel.getSerialnumber());
			inquiry.setUserid(inquiry.getUserid().replace(",", ""));
			try {
				insertNumber = messageService.insertInquiryAnswer(inquiry);
				updateNumber = messageService.updateInquiryQuestion(inquiry);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
			
		if(insertNumber == 1 && updateNumber == 1) {
			writer.println("<script type='text/javascript'>");
			writer.println("alert('답변을 성공적으로 등록하였습니다.');");
			writer.println("</script>");
			writer.flush();
			int listCount = reservationService.getListCount(hotel.getSerialnumber());	//전체 게시물 수
			PagingVO paging = Pagination.getPagingVO(currentPage, listCount);
			List<InquiryVO> inquiryList = hotelService.selectInquiryByHotelSerial(hotel.getSerialnumber(),paging);
			model.addAttribute("paging", paging);
			model.addAttribute("inquiryList", inquiryList);
			model.addAttribute("hotel", hotel);
			
			return "inquiry";
		} else {
			writer.println("<script type='text/javascript'>");
			writer.println("alert('답변이 정상적으로 등록되지 않았습니다. 다시 시도해 주세요.');");
			writer.println("</script>");
			return "redirect:inquiry.pdo";
			
		}
		
	}

}
