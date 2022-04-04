package com.booqueen.user.reservation.controller;

import java.io.PrintWriter;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.partner.hotel.HotelPolicyVO;
import com.booqueen.user.hotel.service.HotelService;
import com.booqueen.user.hotel.vo.HotelImgVO;
import com.booqueen.user.hotel.vo.HotelVO;
import com.booqueen.user.member.MemberVO;
import com.booqueen.user.reservation.service.ReservationService;
import com.booqueen.user.reservation.vo.ReservationVO;
import com.booqueen.user.review.service.ReviewService;
import com.booqueen.user.review.vo.ReviewAvgVO;
import com.booqueen.user.room.service.RoomService;
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
			System.out.println(count_rooms[0]);
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
			reservationService.deleteDuplicatedReservation();
			reservationService.modifyReservation();
			List<ReservationVO> vo = reservationService.selectReservationByMerchant(reservationVO.getMerchant());
			
			ReservationVO vo1 = vo.get(0);
			System.out.println(vo1.toString());
			
			model.addAttribute("reservationVO", vo1);

			return "reservation/finalization";
	}
	
	@ResponseBody
	@RequestMapping(value= "/check_reservation.do")
	public String checkReservation(ReservationVO reservationVO) {
		
		reservationVO.setRequest_text(reservationVO.getRequest_text().replace(",", ""));
		
		List<RoomVO> roomList = roomService.getRoomDetail(reservationVO);
		
		if (roomList == null && roomList.isEmpty()) {
			return "false";
		} else {
			return "true";
		}
	}
	
	@RequestMapping(value="/bookingPage.do")
	public String bookingPage(HttpSession session, Model model) throws Exception {
		
		MemberVO user = (MemberVO)session.getAttribute("member");
		List<ReservationVO> reservationList = reservationService.selectReservation(user.getUserid());
		model.addAttribute("reservationList", reservationList);
		
		for(int i=0; i<reservationList.size(); i++) {
			String start_day = roomService.getDateDay(reservationList.get(i).getStart_date(), "yyyy-MM-dd");
			String end_day = roomService.getDateDay(reservationList.get(i).getEnd_date(), "yyyy-MM-dd");
			reservationList.get(i).setStart_day(start_day);
			reservationList.get(i).setEnd_day(end_day);
		}
		
		Date now = new Date();
		model.addAttribute("now", now);
		
		return "reservation/bookings";
	}

	@RequestMapping(value="/confirmation.do")
	public String confirmPage(@RequestParam("reservation_number") String reservation_number, @RequestParam("room_id") int room_id, @RequestParam("serialnumber") int serialnumber, Model model) {
		
		int reservation_number_i = Integer.parseInt(reservation_number);
		ReservationVO reservation = reservationService.getReservation(reservation_number_i);
		
		model.addAttribute("reservationVO", reservation);
		
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
		System.out.println(reservation.toString());
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
        System.out.println("diffDays: " + diffDays); 
        
		roomService.updateRoomAvailablePlus(cancelVO);
		String orgin_start_date = cancelVO.getStart_date();
		
		for(int j = 1; j < diffDays; j++) {
			cancelVO.setStart_date(LocalDate.parse(cancelVO.getStart_date()).plusDays(j).toString());
			roomService.updateRoomAvailablePlus(cancelVO);
			cancelVO.setStart_date(orgin_start_date);
		}
		
		return "reservation/confirmcancel";
	}
	
}
