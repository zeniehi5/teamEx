package com.booqueen.admin.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/login.mdo", method = RequestMethod.POST)
	public String userId(MemberVO vo, HttpServletRequest request) {
		
		MemberVO member = memberService.getAdminMember(vo);
		if(member != null) {
			System.out.println("¼º°ø");
			return "index2";
			
		}
		return "login";
		
	}
	
}
