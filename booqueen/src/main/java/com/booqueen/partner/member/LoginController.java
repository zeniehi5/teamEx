package com.booqueen.partner.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/login.pdo", method = RequestMethod.GET)
	public String test(MemberVO vo, HttpSession session) {
		System.out.println("화면 test");
		return "register";
	}
	
	@RequestMapping(value = "/password.pdo", method = RequestMethod.GET)
	public String testTest(MemberVO vo, HttpSession session) {
		System.out.println("화면 이동 test");
		return "register";
	}
	
	@RequestMapping(value = "/login.pdo", method = RequestMethod.POST)
	public String confirmEmail(MemberVO vo, HttpSession session) {
		System.out.println("이메일 검증 처리");
		MemberVO member = memberService.getMember(vo);
		
		if(member != null) {
			session.setAttribute("email", member.getEmail());
			System.out.println("가입된 이메일 검증 완료");
			return "password";
		} else {
			System.out.println("이메일 검증 실패");
			return "register";
			/* 가입 요청 화면으로 연결 */
		}
	}
	
	@RequestMapping(value = "/password.pdo", method = RequestMethod.POST)
	public String comfirmPassword(MemberVO vo, HttpSession session) {
		System.out.println("비밀번호 검증 처리");
		MemberVO member = memberService.getPassword(vo);
		
		if(member != null) {
			session.setAttribute("firstName", member.getFirstName());
			System.out.println("로그인 성공");
			return "home";
		} else {
			return "password";
		}
	}

}
