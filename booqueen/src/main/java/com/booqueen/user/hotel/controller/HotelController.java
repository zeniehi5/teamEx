package com.booqueen.user.hotel.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.partner.hotel.HotelPolicyVO;
import com.booqueen.user.board.service.BoardService;
import com.booqueen.user.board.vo.BoardVO;
import com.booqueen.user.hotel.service.HotelService;
import com.booqueen.user.hotel.vo.CityVO;
import com.booqueen.user.hotel.vo.HotelAvailableVO;
import com.booqueen.user.hotel.vo.HotelImgVO;
import com.booqueen.user.hotel.vo.HotelMapVO;
import com.booqueen.user.hotel.vo.HotelServiceVO;
import com.booqueen.user.hotel.vo.HotelVO;
import com.booqueen.user.hotel.vo.RecentSearchVO;
import com.booqueen.user.member.MemberVO;
import com.booqueen.user.review.service.ReviewService;
import com.booqueen.user.review.vo.ReviewAvgVO;
import com.booqueen.user.review.vo.ReviewProfileVO;
import com.booqueen.user.review.vo.ReviewVO;
import com.booqueen.user.room.service.RoomService;
import com.booqueen.user.room.vo.RoomVO;
import com.booqueen.user.wishlist.service.WishlistService;
import com.booqueen.user.wishlist.vo.WishlistVO;
import com.google.gson.Gson;

@Controller
public class HotelController {

	@Autowired
	HotelService hotelService;
	
	@Autowired
	ReviewService reviewService;
	
	@Autowired
	WishlistService wishlistService;
	
	@Autowired
	RoomService roomService;
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "/autocomplete.do", method = RequestMethod.GET)
	@ResponseBody
	public String autocomplete(Model model) {
		List<String> city = hotelService.getAutocompleteCity();
		Gson gson = new Gson();
		return gson.toJson(city);
	}
	
	@RequestMapping(value = "/searchResult.do", method = RequestMethod.GET)
	public String getHotelList(@RequestParam("keyword") String keyword, @RequestParam("daterange") String date, Model model, HttpServletResponse response, HttpSession session) throws IOException{
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String date_re = date.replaceAll(" ", "");
		String[] tempData = date_re.split("-|/");
		
		String start_date = tempData[0] + tempData[1] + tempData[2];
		String end_date = tempData[3] + tempData[4] + tempData[5];
		
		HotelAvailableVO hotelAvailableVO = new HotelAvailableVO();
		hotelAvailableVO.setCity(keyword);
		hotelAvailableVO.setStart_date(start_date);
		hotelAvailableVO.setEnd_date(end_date);
		
		List<HotelVO> getByCity = hotelService.getHotelListWithImgByCity(hotelAvailableVO);
		
		/*List<HotelVO> getUnavailableByCity = hotelService.getUnavailableHotelListWithImgByCity(hotelAvailableVO);
		
		if(getByCity != null) {
			getUnavailableByCity.removeAll(getByCity);
		}
		
		model.addAttribute("unavailableHotelList", getUnavailableByCity);*/
		
		MemberVO user = (MemberVO)session.getAttribute("member");
		
		RecentSearchVO recentSearchVO = new RecentSearchVO();
		
		recentSearchVO.setUserid(user.getUserid());
		recentSearchVO.setCity(keyword);
		recentSearchVO.setStart_date(start_date);
		recentSearchVO.setEnd_date(end_date);
		recentSearchVO.setPeople(2); // 인원 설정 후 수정
		
		hotelService.insertRecentSearch(recentSearchVO);
		
		CityVO cityVO = hotelService.getCityLocation(keyword);
		
		if(!getByCity.isEmpty() && getByCity != null) {
			model.addAttribute("hotelList", getByCity);
			model.addAttribute("hotelAvailableVO", hotelAvailableVO);
			model.addAttribute("cityVO", cityVO);
			return "hotel/searchresult";
		} else {
			out.print("<script>alert('해당 날짜에 가능한 호텔이 없습니다. 다른 날짜를 이용해주세요!');");
			out.print("histroy.back();</script>");
			out.flush();
			return "member/index";
		}

	}
	
	@RequestMapping(value = "/searchResultInBox.do", method = RequestMethod.GET)
	public String getHotelListInOtherPage(@RequestParam("keyword") String keyword, @RequestParam("daterange1") String date1, @RequestParam("daterange2") String date2, Model model, HttpSession session, HttpServletResponse response) throws IOException{
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String start_date = date1.replaceAll("-", "");
		String end_date = date2.replaceAll("-", "");
		
		HotelAvailableVO hotelAvailableVO = new HotelAvailableVO();
		hotelAvailableVO.setCity(keyword);
		hotelAvailableVO.setStart_date(start_date);
		hotelAvailableVO.setEnd_date(end_date);
		
		List<HotelVO> getByCity = hotelService.getHotelListWithImgByCity(hotelAvailableVO);
		/*List<HotelVO> getUnavailableByCity = hotelService.getUnavailableHotelListWithImgByCity(hotelAvailableVO);
		
		if(getByCity != null) {
			getUnavailableByCity.removeAll(getByCity);
		}

		model.addAttribute("unavailableHotelList", getUnavailableByCity);*/
		
		MemberVO user = (MemberVO)session.getAttribute("member");
		
		RecentSearchVO recentSearchVO = new RecentSearchVO();
		
		recentSearchVO.setUserid(user.getUserid());
		recentSearchVO.setCity(keyword);
		recentSearchVO.setStart_date(start_date);
		recentSearchVO.setEnd_date(end_date);
		recentSearchVO.setPeople(2); // 인원 설정 후 수정
		
		hotelService.insertRecentSearch(recentSearchVO);

		CityVO cityVO = hotelService.getCityLocation(keyword);
		
		if(!getByCity.isEmpty() && getByCity != null) {
			model.addAttribute("hotelList", getByCity);
			model.addAttribute("date1", date1);
			model.addAttribute("date2", date2);
			model.addAttribute("hotelAvailableVO", hotelAvailableVO);
			model.addAttribute("cityVO", cityVO);
		} else {
			out.print("<script>alert('해당 날짜에 가능한 호텔이 없습니다. 다른 날짜를 이용해주세요!');");
			out.print("histroy.back();</script>");
			out.flush();
		}
		
		return "hotel/searchresult";
	}
	
	@RequestMapping(value = "/hotelInfo.do", method = RequestMethod.GET)
	public String hotelDetail(@RequestParam("serialNumber") String serialNumber, Model model, HttpSession session, @RequestParam("start_date") String start_date, @RequestParam("end_date") String end_date ) throws ParseException {
		Integer serialNumber2 = Integer.parseInt(serialNumber);
		
		HotelVO vo = hotelService.getHotelBySerialnumber(serialNumber2);
		model.addAttribute("hotelInfo", vo);
		
		HotelImgVO imgVO = hotelService.getHotelImg(serialNumber2);
		model.addAttribute("hotelImg", imgVO);
		
		List<ReviewVO> reviewList = reviewService.getReviewListBySerialnumber(serialNumber2);
		model.addAttribute("reviewList", reviewList);
		
		List<ReviewProfileVO> reviewProfileList = reviewService.getReviewAndProfileList(serialNumber2);
		model.addAttribute("reviewProfileList", reviewProfileList);
		
		ReviewAvgVO reviewAvgVO = reviewService.getReviewAvg(serialNumber2);
		model.addAttribute("reviewAvg", reviewAvgVO);
		
		HotelAvailableVO hotelAvailableVO = new HotelAvailableVO();
		hotelAvailableVO.setSerialnumber(serialNumber2);
		hotelAvailableVO.setStart_date(start_date);
		hotelAvailableVO.setEnd_date(end_date);
		
		Date format1 = new SimpleDateFormat("yyyyMMdd").parse(start_date);
        Date format2 = new SimpleDateFormat("yyyyMMdd").parse(end_date);
        long diffSec = (format2.getTime() - format1.getTime()) / 1000;
        long diffDays = diffSec / (24*60*60);
        
        hotelAvailableVO.setDiffDays(diffDays);
        model.addAttribute("hotelAvailableVO", hotelAvailableVO);
		
		List<RoomVO> roomList = roomService.getRoomFacilities(hotelAvailableVO);
			
		if(roomList != null && !roomList.isEmpty()) {
			model.addAttribute("available", true);
			
		} else {
			model.addAttribute("available", false);
		}
		
		model.addAttribute("roomList", roomList);
		
		List<BoardVO> boardList = boardService.getBoardList(serialNumber2);
		model.addAttribute("boardList", boardList);
		
		HotelPolicyVO hotelPolicy = hotelService.selectHotelPolicy(serialNumber2);
		model.addAttribute("hotelPolicy", hotelPolicy);
		
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		if(memberVO != null) {
			String userid_from = memberVO.getUserid();
			WishlistVO wishlistVO = new WishlistVO();
			wishlistVO.setUserid(userid_from);
			wishlistVO.setSerialnumber(serialNumber2);
			WishlistVO wishlistVO2 = wishlistService.selectWishlist(wishlistVO);
			if(wishlistVO2 != null) {
				model.addAttribute("wishlistVO2", wishlistVO2);
			}
		} else {
			model.addAttribute("wishlistVO2", "wishlistVO2");
		}
		
		return "hotel/available";
	}
	
	@RequestMapping(value="/availableHotelByFilter.do")
	@ResponseBody
	public List<HotelVO> getAvailableHotelByFilter(HttpServletRequest request) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		String[] stars = request.getParameterValues("starArr");
		String[] city = request.getParameterValues("cityArr");
		String[] service = request.getParameterValues("serviceArr");
		String[] order = request.getParameterValues("orderArr");
		String[] dates = request.getParameterValues("datesArr");
		String check_scoreArr = request.getParameter("check_scoreArr");
		
		if(check_scoreArr.equals("true")) {
			String[] score = request.getParameterValues("scoreArr");

			Double[] score_b = new Double[5];
	
			for(int i = 0; i < score.length; i++) {
				score_b[i] = Double.parseDouble(score[i]);
			}
			map.put("scoreAvg", score_b);
		}
		
		boolean[] service_b = new boolean[11];
		
		for(int i = 0; i < service.length; i++) {
			service_b[i] = Boolean.parseBoolean(service[i]); 
		}
		
		HotelServiceVO hotelServiceVO = new HotelServiceVO();
		hotelServiceVO.setBreakfast(service_b[0]);
		hotelServiceVO.setRestaurant(service_b[1]);
		hotelServiceVO.setShuttle(service_b[2]);
		hotelServiceVO.setSwimming_pool(service_b[3]);
		hotelServiceVO.setFront_desk(service_b[4]);
		hotelServiceVO.setWifi(service_b[5]);
		hotelServiceVO.setFitnesscenter(service_b[6]);
		hotelServiceVO.setSmoking(service_b[7]);
		hotelServiceVO.setBar(service_b[8]);
		hotelServiceVO.setSpa(service_b[9]);
		hotelServiceVO.setParking(service_b[10]);
			
		int[] order_b = new int[1];
		
		for(int i = 0; i < order.length; i++) {
			order_b[i] = Integer.parseInt(order[i]);
		}
		
		HotelAvailableVO hotelAvailableVO_date = new HotelAvailableVO();
		hotelAvailableVO_date.setStart_date(dates[0]);
		hotelAvailableVO_date.setEnd_date(dates[1]);
		List<Integer> availableRoom_id = hotelService.getHotelByDate(hotelAvailableVO_date);
		int[] room_idArr = new int[availableRoom_id.size()];
		
		for(int i = 0; i < room_idArr.length; i++) {
			room_idArr[i] = availableRoom_id.get(i);
		}
		
		String[] date_start_date = new String[1];
		date_start_date[0] = dates[0];
		
		map.put("stars", stars);
		map.put("city", city);
		map.put("hotelServiceVO", hotelServiceVO);
		
		map.put("order", order_b);
		map.put("room_id", room_idArr);
		map.put("date_start", date_start_date);
//		map.put("dates", dates);
		
		List<HotelVO> hotelListByFilter = hotelService.getHotelListByStar(map);
				
		return hotelListByFilter;
	}

	/*
	@RequestMapping(value="/unavailableHotelByFilter.do")
	@ResponseBody
	public List<HotelVO> getUnavailableHotelByFilter(HttpServletRequest request) {
		
		String[] stars = request.getParameterValues("starArr");
		String[] city = request.getParameterValues("cityArr");
		String[] service = request.getParameterValues("serviceArr");
		String[] score = request.getParameterValues("scoreArr");
		String[] order = request.getParameterValues("orderArr");
		String[] dates = request.getParameterValues("datesArr");
		
		boolean[] service_b = new boolean[11];
		
		for(int i = 0; i < service.length; i++) {
			service_b[i] = Boolean.parseBoolean(service[i]); 
		}
		
		HotelServiceVO hotelServiceVO = new HotelServiceVO();
		hotelServiceVO.setBreakfast(service_b[0]);
		hotelServiceVO.setRestaurant(service_b[1]);
		hotelServiceVO.setShuttle(service_b[2]);
		hotelServiceVO.setSwimming_pool(service_b[3]);
		hotelServiceVO.setFront_desk(service_b[4]);
		hotelServiceVO.setWifi(service_b[5]);
		hotelServiceVO.setFitnesscenter(service_b[6]);
		hotelServiceVO.setSmoking(service_b[7]);
		hotelServiceVO.setBar(service_b[8]);
		hotelServiceVO.setSpa(service_b[9]);
		hotelServiceVO.setParking(service_b[10]);
		
		Double[] score_b = new Double[5];

		for(int i = 0; i < score.length; i++) {
			score_b[i] = Double.parseDouble(score[i]);
		}
		
		int[] order_b = new int[1];
		
		for(int i = 0; i < order.length; i++) {
			order_b[i] = Integer.parseInt(order[i]);
		}
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("stars", stars);
		map.put("city", city);
		map.put("hotelServiceVO", hotelServiceVO);
		map.put("scoreAvg", score_b);
		map.put("order", order_b);
		map.put("dates", dates);
		
		List<HotelVO> unavailableHotelListByFilter = hotelService.getUnavailableHotelListByStar(map);
				
		return unavailableHotelListByFilter;
	}
	*/
	
	@RequestMapping(value="/getMap.do")
	@ResponseBody
	public List<HotelVO> getMap(HotelMapVO vo) throws Exception{
		
		HotelAvailableVO hotelAvailableVO_date = new HotelAvailableVO();
		hotelAvailableVO_date.setStart_date(vo.getStart_date());
		hotelAvailableVO_date.setEnd_date(vo.getEnd_date());
		
		List<Integer> availableRoom_id = hotelService.getHotelByDate(hotelAvailableVO_date);
		
		int[] room_idArr = new int[availableRoom_id.size()];
		
		for(int i = 0; i < room_idArr.length; i++) {
			room_idArr[i] = availableRoom_id.get(i);
		}
		
		vo.setRoom_id(room_idArr);
		
		List<HotelVO> hotelListByMap = hotelService.selectHotelByMap(vo);

		return hotelListByMap;
	}
	
}
