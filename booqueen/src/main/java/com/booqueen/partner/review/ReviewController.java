package com.booqueen.partner.review;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelVO;
import com.booqueen.partner.reservation.Pagination;
import com.booqueen.partner.reservation.PagingVO;
import com.booqueen.user.review.vo.ReviewVO;

@Controller
public class ReviewController {
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value = "/reviews.pdo", method = RequestMethod.GET)
	public String getReview(@RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage,
							HotelVO hotel, ReviewAvgVO avg, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			avg = reviewService.getReviewAvgByHotelSerial(hotel.getSerialnumber());
			int listCount = reviewService.getReviewCount(hotel.getSerialnumber());
			PagingVO paging = Pagination.getPagingVO(currentPage, listCount);
			System.out.println(paging.toString());
			List<ReviewVO> review = reviewService.getReviewList(hotel.getSerialnumber(), paging);
			
			System.out.println(review.toString());
			if(hotel != null) {
				model.addAttribute("avg", avg);
				model.addAttribute("hotel", hotel);
				model.addAttribute("review", review);
				model.addAttribute("paging", paging);
				System.out.println(avg.toString());
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "reviews";
	}
}
