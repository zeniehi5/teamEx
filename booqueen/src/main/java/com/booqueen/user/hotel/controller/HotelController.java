package com.booqueen.user.hotel.controller;

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
		
		List<HotelVO> hotelListByStar = hotelService.getHotelListByStar(stars);
		
		return hotelListByStar;
	}
	
}
