package com.booqueen.admin.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booqueen.admin.member.impl.MemberServiceImpl;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl memberServiceImpl;
	
	@RequestMapping(value = "/userMember.mdo", method=RequestMethod.GET)
	public String userMember(Model model) {
	
		List<com.booqueen.user.member.MemberVO> userList = memberServiceImpl.getUserMember();
		model.addAttribute("userList", userList);
		
		return "userMember";
	}
	
}
