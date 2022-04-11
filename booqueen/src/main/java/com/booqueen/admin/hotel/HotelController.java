package com.booqueen.admin.hotel;

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
	
	@RequestMapping(value = "/reportContent.mdo", method=RequestMethod.GET)
	public String reportContent(HttpSession session) {
		return "reportContent";
	}
	
//	@RequestMapping(value = "/roomDetail.mdo", method=RequestMethod.GET)
//	public String roomDetail(@RequestParam("room_id")int room_id, HttpSession session, Model model) {
//		RoomDetailVO details = roomService.selectRoomDetailsByRoomId(room_id);
//		model.addAttribute("details", details);
//		return "roomDetail";
//	}
	
}
