package com.booqueen.partner.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RegisterController {
	
	@Autowired
	private MemberService memberService;
	
	/* email 중복 검사 */
	@RequestMapping(value = "/emailCheck.pdo", method = RequestMethod.POST)
	@ResponseBody
	public String emailCheck(MemberVO vo) {
		MemberVO member = memberService.getMember(vo);
		String message = null;
		
		if(member == null) {
			message = "success";
		} else {
			message = "fail";
		}
		return message;
	}
	
	@RequestMapping(value = "/register.pdo", method = RequestMethod.POST)
	public String checkEmail(MemberVO vo, HttpSession session) {
		MemberVO member = memberService.getMember(vo);
		
		if(member == null) {
			session.setAttribute("email", vo.getEmail());
			return "contact-details";
		} else {
			return "login";
		}
	}
	
	@RequestMapping(value = "/details.pdo", method = RequestMethod.POST)
	public String addDetails(MemberVO vo, HttpSession session) {
		session.setAttribute("lastname", vo.getLastname());
		session.setAttribute("firstname", vo.getFirstname());
		session.setAttribute("telephone", vo.getTelephone());
		return "set-password";
	}
	
	@RequestMapping(value = "/set-password.pdo", method= RequestMethod.POST)
	public String setPassword(MemberVO vo, HttpSession session) {
		session.setAttribute("password", vo.getPassword());
		memberService.addMember(vo);
		return "basic-info";
	}
}
