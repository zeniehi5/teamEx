package com.booqueen.user.reservation.controller;

import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.partner.hotel.HotelPolicyVO;
import com.booqueen.user.hotel.service.HotelService;
import com.booqueen.user.hotel.vo.HotelAvailableVO;
import com.booqueen.user.hotel.vo.HotelImgVO;
import com.booqueen.user.hotel.vo.HotelServiceVO;
import com.booqueen.user.hotel.vo.HotelVO;
import com.booqueen.user.member.vo.MemberVO;
import com.booqueen.user.reservation.service.ReservationService;
import com.booqueen.user.reservation.vo.ReservationVO;
import com.booqueen.user.review.service.ReviewService;
import com.booqueen.user.review.vo.ReviewAvgVO;
import com.booqueen.user.room.service.RoomService;
import com.booqueen.user.room.vo.RoomAvailableVO;
import com.booqueen.user.room.vo.RoomVO;


@Controller
public class ReservationController {

	@Autowired
	RoomService roomService;

	@Autowired
	HotelService hotelService;

	@Autowired
	ReviewService reviewService;

	@Autowired
	ReservationService reservationService;

	@RequestMapping(value = "/reservationProcess.do")
	public String reservationProcess(ReservationVO reservationVO, Model model) throws Exception {

		String start_date = reservationVO.getStart_date();
		String start_date_year = start_date.substring(0, 4);
		String start_date_month = start_date.substring(4, 6);
		String start_date_day = start_date.substring(6, 8);

		String end_date = reservationVO.getEnd_date();
		String end_date_year = end_date.substring(0, 4);
		String end_date_month = end_date.substring(4, 6);
		String end_date_day = end_date.substring(6, 8);

		String start_day = roomService.getDateDay(start_date, "yyyyMMdd");
		String end_day = roomService.getDateDay(end_date, "yyyyMMdd");
		
		String[] types = reservationVO.getType().split(",");
		
		reservationVO.setStart_date_year(start_date_year);
		reservationVO.setStart_date_month(start_date_month);
		reservationVO.setStart_date_day(start_date_day);
		reservationVO.setEnd_date_year(end_date_year);
		reservationVO.setEnd_date_month(end_date_month);
		reservationVO.setEnd_date_day(end_date_day);
		reservationVO.setStart_day(start_day);
		reservationVO.setEnd_day(end_day);
		reservationVO.setTypes(types);

		model.addAttribute("reservationVO", reservationVO);

		HotelPolicyVO hotelPoclicyVO = hotelService.selectHotelPolicy(reservationVO.getSerialnumber());
		model.addAttribute("hotelPoclicyVO", hotelPoclicyVO);

		HotelVO hotelVO = hotelService.getHotelBySerialnumber(reservationVO.getSerialnumber());
		model.addAttribute("hotelVO", hotelVO);

		HotelImgVO imgVO = hotelService.getHotelImg(reservationVO.getSerialnumber());
		model.addAttribute("hotelImg", imgVO);

		ReviewAvgVO reviewAvgVO = reviewService.getReviewAvg(reservationVO.getSerialnumber());
		model.addAttribute("reviewAvgVO", reviewAvgVO);
		
		List<ReservationVO> bestHotelList = reservationService.selectBestHotel();

		return "reservation/reservation";
	}

	@RequestMapping(value = "/comfirmReservation.do")
	public String comfirmReservation(ReservationVO reservationVO, HotelPolicyVO hotelPoclicyVO, HotelImgVO imgVO,
			ReviewAvgVO reviewAvgVO, HotelVO hotelVO, Model model) {

//		String[] count_rooms_s = reservationVO.getCount_rooms_s();
//		System.out.println(count_rooms_s[0].getClass().getName());
//		int[] count_rooms = new int[count_rooms_s.length];
//		for(int i = 0; i < count_rooms.length; i++) {
//			count_rooms[i] = Integer.parseInt(count_rooms_s[i]);
//			System.out.println(count_rooms[i]);
//		}
//		reservationVO.setCount_rooms(count_rooms);
//		
//		String[] prices_s = reservationVO.getPrices_s();
//		int[] prices = new int[prices_s.length];
//		for(int i = 0; i < prices.length; i++) {
//			prices[i] = Integer.parseInt(prices_s[i]);
//		}
//		reservationVO.setPrices(prices);
		
//		String[] types = reservationVO.getTypes();
//		for(int i = 0; i < types.length; i++) {
//			System.out.println(types[i]);
//		}
		
//		String[] types = reservationVO.getType().split(",");
//		reservationVO.setTypes(types);
		
		model.addAttribute("reservationVO", reservationVO);
		model.addAttribute("hotelPoclicyVO", hotelPoclicyVO);
		model.addAttribute("hotelImg", imgVO);
		model.addAttribute("reviewAvgVO", reviewAvgVO);
		model.addAttribute("hotelVO", hotelVO);

		return "reservation/reservation2";
	}

	@PostMapping(value = "/reservation.do")
	public String reservation(ReservationVO reservationVO, Model model) throws Exception {

		int pinCode = (int) (Math.random() * 9000) + 1000;
		reservationVO.setPincode(pinCode);
		reservationVO.setStatus(true);
		reservationVO.setRequest_text(reservationVO.getRequest_text().replace(",", ""));

		int[] count_rooms = reservationVO.getCount_rooms();
		int[] prices = reservationVO.getPrices();
		String[] types =reservationVO.getTypes();
		
		/* 방을 여러 개 선택했을 경우
		for(int i = 0; i < count_rooms.length; i++) {
			reservationVO.setCount_room(count_rooms[i]);
			reservationVO.setPrice(prices[i]);
			reservationVO.setType(types[i]);
			reservationService.insertReservation(reservationVO);
			roomService.updateRoomAvailable(reservationVO);
		 */
			reservationVO.setCount_room(count_rooms[0]);
			reservationVO.setPrice(prices[0]);
			reservationVO.setType(types[0]);
			reservationService.insertReservation(reservationVO);
			roomService.updateRoomAvailable(reservationVO);
			String orgin_start_date = reservationVO.getStart_date();
		
			for(int j = 1; j < reservationVO.getDiffDays(); j++) {
				String year =  reservationVO.getStart_date().substring(0, 4);
				String month = reservationVO.getStart_date().substring(4, 6);
				String day = reservationVO. getStart_date().substring(6);
				String open_date = year + "-" + month + "-" + day;
				reservationVO.setStart_date(LocalDate.parse(open_date).plusDays(j).toString().replaceAll("-", ""));
				roomService.updateRoomAvailable(reservationVO);
				reservationVO.setStart_date(orgin_start_date);
			}	
//		}
//			reservationService.deleteDuplicatedReservation();
//			reservationService.modifyReservation();
			
			/*
			List<ReservationVO> vo = reservationService.selectReservationByMerchant(reservationVO.getMerchant());
			
			ReservationVO vo1 = vo.get(0);
			System.out.println(vo1.toString());
			
			model.addAttribute("reservationVO", vo1);
			
			RoomVO roomVO = roomService.selectSimpleRoom(vo1.getRoom_id());
			
			model.addAttribute("room", roomVO);
			
			HotelPolicyVO hotelPoilcyVO = hotelService.selectHotelPolicy(roomVO.getSerialnumber());
			
			model.addAttribute("hotelPoilcyVO", hotelPoilcyVO);
			
			 List<HotelServiceVO> hotelServiceVO = hotelService.selectHotelService(roomVO.getSerialnumber());
			
			model.addAttribute("hotelServiceVO", hotelServiceVO);
			
			return "reservation/finalization";
			*/
			
			return "redirect:bookingPage.do";
	}
	
	@RequestMapping(value="/bookingPage.do")
	public String bookingPage(HttpSession session, Model model) throws Exception {
		
		MemberVO user = (MemberVO)session.getAttribute("member");
		List<ReservationVO> reservationList = reservationService.selectReservation(user.getUserid());
		model.addAttribute("reservationList", reservationList);
		session.setAttribute("reservationList", reservationList);
		
		for(int i=0; i<reservationList.size(); i++) {
			String start_day = roomService.getDateDay(reservationList.get(i).getStart_date(), "yyyy-MM-dd");
			String end_day = roomService.getDateDay(reservationList.get(i).getEnd_date(), "yyyy-MM-dd");
			reservationList.get(i).setStart_day(start_day);
			reservationList.get(i).setEnd_day(end_day);
		}
		
		Date now = new Date();
		model.addAttribute("now", now);
		
		// 다가오는 여행
		List<ReservationVO> comingReservationList = reservationService.selectComingReservationList(user.getUserid());
		session.setAttribute("comingReservationList", comingReservationList);
		
		return "reservation/bookings";
	}
	
	@ResponseBody
	@RequestMapping(value= "/check_reservation.do")
	public String checkReservation(@RequestBody ReservationVO reservationVO) throws ParseException {	
		
		List<RoomAvailableVO> lockList = roomService.checkIsLocked(reservationVO);
		
		if (lockList != null && !lockList.isEmpty()) {
			return "unavailable";
		} else {
			// 해당 날짜 lock = true로 update
			String start_date = reservationVO.getStart_date();
			String start_date_year = start_date.substring(0, 4);
			String start_date_month = start_date.substring(4, 6);
			String start_date_day = start_date.substring(6, 8);
			String start_date_sum = start_date_year + "-" + start_date_month + "-" +  start_date_day;
			reservationVO.setStart_date(start_date_sum);

			String end_date = reservationVO.getEnd_date();
			String end_date_year = end_date.substring(0, 4);
			String end_date_month = end_date.substring(4, 6);
			String end_date_day = end_date.substring(6, 8);
			String end_date_sum = end_date_year + "-" + end_date_month + "-" + end_date_day;
			reservationVO.setEnd_date(end_date_sum);
			
			Date format1 = new SimpleDateFormat("yyyy-MM-dd").parse(reservationVO.getStart_date());
	        Date format2 = new SimpleDateFormat("yyyy-MM-dd").parse(reservationVO.getEnd_date());
	        long diffSec = (format2.getTime() - format1.getTime()) / 1000;
	        long diffDays = diffSec / (24*60*60);
	        
	        roomService.updateLock(reservationVO);
			String orgin_start_date = reservationVO.getStart_date();
			
			for(int j = 1; j < diffDays; j++) {
				reservationVO.setStart_date(LocalDate.parse(reservationVO.getStart_date()).plusDays(j).toString());
				roomService.updateLock(reservationVO);
				reservationVO.setStart_date(orgin_start_date);
			}
	        
			return "available";
		}
	}

	@RequestMapping(value="/confirmation.do")
	public String confirmPage(@RequestParam("reservation_number") String reservation_number, @RequestParam("room_id") int room_id, Model model) throws Exception {
		
		int reservation_number_i = Integer.parseInt(reservation_number);
		ReservationVO reservation = reservationService.getReservation(reservation_number_i);
		
		HotelAvailableVO hotelAvailableVO = new HotelAvailableVO();
		hotelAvailableVO.setSerialnumber(reservation_number_i);
		
		String start_date = reservation.getStart_date();
		String start_date_year = start_date.substring(0, 4);
		String start_date_month = start_date.substring(5, 7);
		String start_date_day = start_date.substring(8, 10);
		String start_date_sum = start_date_year + start_date_month + start_date_day;
		hotelAvailableVO.setStart_date(start_date_sum);
		
		String end_date = reservation.getEnd_date();
		String end_date_year = end_date.substring(0, 4);
		String end_date_month = end_date.substring(5, 7);
		String end_date_day = end_date.substring(8, 10);
		String end_date_sum = end_date_year + end_date_month + end_date_day;
		hotelAvailableVO.setEnd_date(end_date_sum);

		String start_day = roomService.getDateDay(start_date, "yyyy-MM-dd");
		String end_day = roomService.getDateDay(end_date, "yyyy-MM-dd");
		hotelAvailableVO.setStart_date_day(start_day);
		hotelAvailableVO.setEnd_date_day(end_day);
		
		Date format1 = new SimpleDateFormat("yyyy-MM-dd").parse(reservation.getStart_date());
        Date format2 = new SimpleDateFormat("yyyy-MM-dd").parse(reservation.getEnd_date());
        long diffSec = (format2.getTime() - format1.getTime()) / 1000;
        long diffDays = diffSec / (24*60*60);
        hotelAvailableVO.setDiffDays(diffDays);
        
		reservation.setStart_date_year(start_date_year);
		reservation.setStart_date_month(start_date_month);
		reservation.setStart_date_day(start_date_day);
		reservation.setEnd_date_year(end_date_year);
		reservation.setEnd_date_month(end_date_month);
		reservation.setEnd_date_day(end_date_day);
		reservation.setStart_day(start_day);
		reservation.setEnd_day(end_day);
		reservation.setDiffDays((int) diffDays);
	
		model.addAttribute("reservationVO", reservation);

		RoomVO roomVO = roomService.selectSimpleRoom(reservation.getRoom_id());
		
		model.addAttribute("room", roomVO);
		
		HotelPolicyVO hotelPoilcyVO = hotelService.selectHotelPolicy(roomVO.getSerialnumber());
		
		model.addAttribute("hotelPoilcyVO", hotelPoilcyVO);
		
		List<HotelServiceVO> hotelServiceVO = hotelService.selectHotelService(roomVO.getSerialnumber());
		
		model.addAttribute("hotelServiceVO", hotelServiceVO);
		
		List<RoomVO> roomImg = roomService.selectRoomImgs(roomVO.getType());
		
		model.addAttribute("roomImg", roomImg.get(0).getFile_url());
		
		model.addAttribute("hotelAvailableVO", hotelAvailableVO);
				
		if(reservation.isStatus()) {
			return "reservation/finalization"; 
		} else {
			return "reservation/confirmcancel";
		}
	}
	 
	@RequestMapping(value="/cancelPage.do")
	public String cancelPage(@RequestParam("reservation_number") String reservation_number, Model model) {
		
		int reservation_number_i = Integer.parseInt(reservation_number);
		ReservationVO reservation = reservationService.getReservation(reservation_number_i);

		model.addAttribute("reservationVO", reservation);
		
		return "reservation/cancel";
	}
	
	@RequestMapping(value="/cancelReservation.do", method = RequestMethod.POST)
	public String cancelReservation(ReservationVO reservationVO, HttpSession session, Model model) throws Exception {
		
		int reservation_number = reservationVO.getReservation_number();
		ReservationVO cancelVO = reservationService.getReservation(reservation_number);
		
		MemberVO user = (MemberVO)session.getAttribute("member");
		List<ReservationVO> reservationList = reservationService.selectReservation(user.getUserid());
		model.addAttribute("reservationList", reservationList);
		model.addAttribute("reservationVO", cancelVO);
		
		/* 여러 방 선택했을때
		for(int i=0; i<reservationList.size(); i++) {
			String start_day = roomService.getDateDay(reservationList.get(i).getStart_date(), "yyyy-MM-dd");
			String end_day = roomService.getDateDay(reservationList.get(i).getEnd_date(), "yyyy-MM-dd");
			reservationList.get(i).setStart_day(start_day);
			reservationList.get(i).setEnd_day(end_day);
		}*/
		
		Date now = new Date();
		model.addAttribute("now", now);
		
		// 다시 room_available에 가능한 방 update
		Date format1 = new SimpleDateFormat("yyyy-MM-dd").parse(cancelVO.getStart_date());
        Date format2 = new SimpleDateFormat("yyyy-MM-dd").parse(cancelVO.getEnd_date());
        long diffSec = (format2.getTime() - format1.getTime()) / 1000;
        long diffDays = diffSec / (24*60*60);
        
		roomService.updateRoomAvailablePlus(cancelVO);
		String orgin_start_date = cancelVO.getStart_date();
		
		for(int j = 1; j < diffDays; j++) {
			cancelVO.setStart_date(LocalDate.parse(cancelVO.getStart_date()).plusDays(j).toString());
			roomService.updateRoomAvailablePlus(cancelVO);
			cancelVO.setStart_date(orgin_start_date);
		}
		
		return "redirect:bookingPage.do";
	}
	
}
