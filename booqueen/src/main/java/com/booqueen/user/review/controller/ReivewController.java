package com.booqueen.user.review.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.booqueen.user.member.MemberVO;
import com.booqueen.user.review.service.ReviewService;
import com.booqueen.user.review.vo.ReviewVO;

@Controller
public class ReivewController {

	@Autowired
	ReviewService reviewService;
	
	@RequestMapping(value="/review/reviewForm.do")
	public String reviewForm() {
		return "review/review";
	}
	
	@RequestMapping(value="/review/insertReview.do")
	public String insertReview(ReviewVO vo, HttpServletResponse response, HttpSession session) throws Exception {
		
		vo.setSerialnumber(1120); // 예약 테이블이 완성된 이후 수정
		
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		vo.setUsername(memberVO.getName());
		vo.setUserid(memberVO.getUserid());

		int result = 0;
		result = reviewService.insertReview(vo);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(result == 0) {
			out.println("<script>alert('다시 입력해주세요.')</script>");
			out.flush();
			return "redirect:/review/insertReview.do";
		} else {
			out.println("<script>alert('리뷰가 정상적으로 등록되었습니다.')</script>");
			out.flush();
			return "member/index";
		}	
	}
}
