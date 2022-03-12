package com.booqueen.user.hotel.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.user.hotel.service.HotelService;
import com.booqueen.user.hotel.vo.HotelImgVO;
import com.booqueen.user.hotel.vo.HotelMapVO;
import com.booqueen.user.hotel.vo.HotelServiceVO;
import com.booqueen.user.hotel.vo.HotelVO;
import com.booqueen.user.member.MemberVO;
import com.booqueen.user.review.service.ReviewService;
import com.booqueen.user.review.vo.ReviewAvgVO;
import com.booqueen.user.review.vo.ReviewProfileVO;
import com.booqueen.user.review.vo.ReviewVO;
import com.booqueen.user.room.service.RoomService;
import com.booqueen.user.room.vo.RoomVO;
import com.booqueen.user.wishlist.service.WishlistService;
import com.booqueen.user.wishlist.vo.WishlistVO;

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
	
	@RequestMapping(value = "/searchResult.do", method = RequestMethod.GET)
	public String getHotelList(@RequestParam("keyword") String keyword, Model model){
		List<HotelVO> getByCity = hotelService.getHotelListWithImgByCity(keyword);
		model.addAttribute("hotelList", getByCity);
		
		return "hotel/searchresult";
	}
	
	@RequestMapping(value = "/hotelInfo.do", method = RequestMethod.GET)
	public String hotelDetail(@RequestParam("serialNumber") String serialNumber, Model model, HttpSession session) {
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
		
		List<RoomVO> roomList = roomService.getRoomFacilities(serialNumber2);
		model.addAttribute("roomList", roomList);
		
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
		// 날짜 데이터와 함께 수정이 필요
		model.addAttribute("available", true);
		return "hotel/available";
	}
	
	@RequestMapping(value="/hotelByStar.do")
	@ResponseBody
	public List<HotelVO> getHotelByStar(HttpServletRequest request) {
		
		String[] stars = request.getParameterValues("starArr");
		String[] city = request.getParameterValues("cityArr");
		String[] service = request.getParameterValues("serviceArr"); 
		
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
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("stars", stars);
		map.put("city", city);
		map.put("hotelServiceVO", hotelServiceVO);
		
		List<HotelVO> hotelListByStar = hotelService.getHotelListByStar(map);
		
		return hotelListByStar;
	}
	
	@RequestMapping(value="/getMap.do")
	@ResponseBody
	public List<HotelVO> getMap(HotelMapVO vo) throws Exception{
		
		List<HotelVO> hotelListByMap = hotelService.selectHotelByMap(vo);
		
		return hotelListByMap;
		
	}
	
}
