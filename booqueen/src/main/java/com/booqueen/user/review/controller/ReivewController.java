package com.booqueen.user.review.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.booqueen.user.member.vo.MemberVO;
import com.booqueen.user.reservation.service.ReservationService;
import com.booqueen.user.reservation.vo.ReservationVO;
import com.booqueen.user.review.service.ReviewService;
import com.booqueen.user.review.vo.ReviewVO;

@Controller
public class ReivewController {

	@Autowired
	ReviewService reviewService;
	
	@Autowired
	ReservationService reservationService;
	
	@RequestMapping(value="/review/reviewForm.do")
	public String reviewForm(@RequestParam("reservation_number") String reservation_number, HttpSession session) {
		
		Integer reservation_number_i = Integer.parseInt(reservation_number);
		ReservationVO reservationVO = reservationService.getReservation(reservation_number_i);
		
		session.setAttribute("reservationVO", reservationVO);
		
		return "review/review";
	}
	
	@RequestMapping(value="/review/insertReview.do")
	public String insertReview(ReviewVO vo, HttpServletResponse response, HttpSession session) throws Exception {
		
		ReservationVO reservationVO = reservationService.getReservation(vo.getReservation_number());
		
		reservationService.updateReviewBoolean(reservationVO.getReservation_number());
		
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		
		vo.setUserid(memberVO.getUserid());
		vo.setUsername(memberVO.getName());
		vo.setSerialnumber(reservationVO.getSerialnumber());

		int result = 0;
		result = reviewService.insertReview(vo);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(result == 0) {
			out.println("<script>alert('다시 입력해주세요.')</script>");
			out.flush();
			return "redirect:/review/insertReview.do";
		} else {
			reviewService.updateReview(vo);
			out.println("<script>alert('리뷰가 정상적으로 등록되었습니다.')</script>");
			out.flush();
			return "redirect:/index.do";
		}	
	}
}
