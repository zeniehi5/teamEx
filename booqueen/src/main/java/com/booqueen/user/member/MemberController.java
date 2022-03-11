package com.booqueen.user.member;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.PrintWriter;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booqueen.user.member.service.MemberProfileService;
import com.booqueen.user.member.vo.MemberProfileVO;

@Controller
public class MemberController{
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	MemberProfileService memberProfileService;

	@RequestMapping(value = "/member/loginForm.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String loginForm() {
		return "member/loginForm";
	}
	
	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		MemberVO user = memberService.getMember(vo);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(user != null && user.getUserid() != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", user);
			session.setAttribute("isLogOn", true);
			
			MemberProfileVO profile = getProfile(user.getUserid());
						
			session.setAttribute("user_profile", profile);
			
			return "member/index";
		} else {
			out.println("<script>alert('잘못된 정보입니다.')</script>");
            out.flush();
			return "member/loginForm";
		}
	}
	
	@RequestMapping(value="/logout.do" ,method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) throws Exception {
		session.setAttribute("isLogOn", false);
		session.removeAttribute("member");
		session.invalidate();
		
		return "member/index";
	}
	
	@RequestMapping(value = "/member/registerForm.do", method = {RequestMethod.POST, RequestMethod.GET})
	public String register() {
		return "member/registerForm";
	}
	
	@RequestMapping(value = "/member/register.do", method = RequestMethod.POST)
	public String test(MemberVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		int result = 0;
		result = memberService.insertMember(vo);
		
		if(result > 0) {
			BufferedImage bufferimage = ImageIO.read(new File("C:\\images\\default_profile.jpg")); // s3에 올릴 것
			ByteArrayOutputStream output = new ByteArrayOutputStream();
			ImageIO.write(bufferimage, "jpg", output);
			byte[] data = output.toByteArray();
			
			String imgStr = memberProfileService.encodeProfile(data);
			
			MemberProfileVO profileVO = new MemberProfileVO();
			profileVO.setUserid(vo.getUserid());
			profileVO.setProfile_data(imgStr);
			profileVO.setProfile_type("image/jpg");
			profileVO.setProfile_name("default_profile");
			profileVO.setProfile_size(102130);
			
			memberProfileService.registerProfile(profileVO);
			
			out.println("<script>alert('회원가입에 성공했습니다. 로그인하세요!')</script>");
			out.flush();
		}
		
		return "member/index";
	}
	
	@RequestMapping(value="/mypage.do")
	public String mypage() {
		return "member/mypage";
	}
	
	@RequestMapping(value="/mypageUpdate.do", method = RequestMethod.POST)
	public String mypageUpdate(MemberVO vo, HttpSession session, HttpServletResponse response) throws Exception {
		
		int result = 0;
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		MemberVO user = (MemberVO)session.getAttribute("member");

		if(vo.getPasswd().equals(user.getPasswd())) {
			result = memberService.updateMember(vo);
			session.setAttribute("member", vo);
			out.println("<script>alert('수정이 완료되었습니다.')</script>");
			out.flush();
		} else {
			out.println("<script>alert('비밀번호가 일치하지 않습니다.')</script>");
			out.flush();
		}
		return "member/mypage";
	}
	
	@RequestMapping(value="/deleteMember.do", method=RequestMethod.POST)
	public String deleteMember(MemberVO vo, HttpSession session, HttpServletResponse response) throws Exception {
		
		int result = 0;
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		MemberVO user = (MemberVO)session.getAttribute("member");
		
		if(vo.getPasswd().equals(user.getPasswd())) {
			result = memberService.deleteMember(vo);
			session.setAttribute("isLogOn", false);
			out.println("<script>alert('회원탈퇴가 정상적으로 진행되었습니다.')</script>");
			out.flush();
			return "member/index";
		} else {
			out.println("<script>alert('비밀번호가 일치하지 않습니다.')</script>");
			out.flush();
			return "member/mypage";
		}
	}
	
	@RequestMapping(value="/index.do")
	public String index() {
		return "member/index";
	}
	
	public MemberProfileVO getProfile(String userid) throws Exception {
		MemberProfileVO profile = memberProfileService.getProfileByUserid(userid);
		return profile;
	}
	
	@RequestMapping(value="/changePasswd.do", method = RequestMethod.POST)
	   public String updatePasswd(MemberVO vo, HttpSession session, HttpServletResponse response) throws Exception {
	      
	      int result = 0;
	      response.setContentType("text/html; charset=utf-8");
	      PrintWriter out = response.getWriter();
	      
	      MemberVO user = (MemberVO)session.getAttribute("member");
	      
	      if(vo.getNewPasswd().equals(vo.getRePasswd())) {
	         if(vo.getPasswd().equals(user.getPasswd())) {
	            result = memberService.changePasswd(vo);
	            MemberVO newVO = memberService.getMemberByUserid(vo.getUserid());
	            session.setAttribute("member", newVO);
	            out.println("<script>alert('비밀번호 변경이 완료되었습니다.')</script>");
	            out.flush();
	         } else {
	            out.println("<script>alert('비밀번호가 일치하지 않습니다.')</script>");
	            out.flush();
	         }
	      } else {
	    	  out.println("<script>alert('새비밀번호와 비밀번호 확인이 일치하지 않습니다.')</script>");
	    	  out.flush();
	      }
	      
	      return "member/mypage";
	      
	   }
}
