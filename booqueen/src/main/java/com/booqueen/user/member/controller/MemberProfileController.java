package com.booqueen.user.member.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.booqueen.user.member.service.MemberProfileService;
import com.booqueen.user.member.service.MemberService;
import com.booqueen.user.member.vo.MemberProfileVO;
import com.booqueen.user.member.vo.MemberVO;

@Controller
public class MemberProfileController {
	
	@Autowired
	MemberProfileService memberProfileService;
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value = "/profile/upload.do")
	public String profileUpload(MemberProfileVO file, HttpSession session) throws Exception{
		
		MemberVO user = (MemberVO)session.getAttribute("member");
		
		MultipartFile mfile = file.getFile();
		
		file.setProfile_name(mfile.getOriginalFilename());
		file.setProfile_size(mfile.getSize());
		file.setProfile_type(mfile.getContentType());
		
		String imgStr = memberProfileService.encodeProfile(mfile.getBytes());
		file.setProfile_data(imgStr);
		file.setUserid(user.getUserid());
		
		memberProfileService.insertProfile(file);
		
		/*
		//유저 번호로 회원 정보 전부 조회
		MemberVO vo = memberService.getMemberByUserid(user.getUserid());
		//다시 로그인 세션에 저장
		session.setAttribute("member", vo);
		*/
		
		MemberProfileVO profile = memberProfileService.getProfile(file);
		
		session.setAttribute("user_profile", profile);
		
		return "member/mypage";
	}
	
}
