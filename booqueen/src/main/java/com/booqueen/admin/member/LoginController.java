package com.booqueen.admin.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping(value = "/login.mdo", method = RequestMethod.POST)
	public String userId(Model model, MemberVO vo, HttpSession session, HttpServletRequest request) {
		
		MemberVO member = memberService.getAdminMember(vo);
		if(member != null) {
			session = request.getSession();
			List<com.booqueen.user.member.MemberVO> userList = memberService.getUserMember();
			model.addAttribute("userList", userList);
			
			return "userMember";
			
		}
		return "admin_login";
		
	}
	
	@RequestMapping("logout.mdo")
	public String adminLogout(HttpSession session) {
		session.invalidate();
		return "admin_login";
	}
	
}
