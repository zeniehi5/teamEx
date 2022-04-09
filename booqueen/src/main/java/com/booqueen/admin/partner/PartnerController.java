package com.booqueen.admin.partner;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.booqueen.admin.hotel.HotelVO;
import com.booqueen.admin.partner.impl.PartnerServiceImpl;

@Controller
public class PartnerController {

	@Autowired
	PartnerServiceImpl partnerServiceImpl;
	
	@RequestMapping(value = "/partnerMember.mdo", method=RequestMethod.GET)
	public String partnerMember(Model model) {
	
		List<com.booqueen.admin.partner.PartnerVO> partnerList = partnerServiceImpl.getPartnerMember();
		model.addAttribute("partnerList", partnerList);
		return "partnerMember";
	}
	
	@RequestMapping(value = "/blockPartner.mdo", method=RequestMethod.POST)
	public String blockPartner(Model model, PartnerVO vo, HttpServletResponse response) throws Exception {
		
		int result = 0;
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		result = partnerServiceImpl.blockPartner(vo);
		
		PartnerVO partnerVO = partnerServiceImpl.selectPartnerByEmail(vo.getEmail());
		
		if (result > 0) {
			out.println("<script>alert('" + partnerVO.getLastname() + partnerVO.getFirstname() + "(" + partnerVO.getEmail() +") 파트너를 차단하였습니다.')</script>");
			out.flush();
		}
		
		List<com.booqueen.admin.partner.PartnerVO> partnerList = partnerServiceImpl.getPartnerMember();
		model.addAttribute("partnerList", partnerList);
		
		return "partnerMember";
	}
	
	@RequestMapping(value = "/blockPartnerList.mdo", method=RequestMethod.GET)
	public String blockPartnerList(Model model, PartnerVO vo) {
		
		List<PartnerVO> blockedList = partnerServiceImpl.selectBlockPartnerList();
		
		if (blockedList != null) {
			model.addAttribute("blockedList", blockedList);
		}
		
		return "blockPartner";
	}
	
	@RequestMapping(value = "/unblock.mdo", method=RequestMethod.POST)
	public String unblock(Model model, PartnerVO vo, HttpServletResponse response) throws Exception {
		
		int result = 0;
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		result = partnerServiceImpl.unblockPartner(vo);
		
		PartnerVO partnerVO = partnerServiceImpl.selectPartnerByEmail(vo.getEmail());
		
		if (result == 1) {
			out.println("<script>alert('" + partnerVO.getLastname() + partnerVO.getFirstname() + "(" + partnerVO.getEmail() +") 파트너 차단을 해제하였습니다.')</script>");
			out.flush();
		}
		
		List<PartnerVO> blockedList = partnerServiceImpl.selectBlockPartnerList();
		model.addAttribute("blockedList", blockedList);
		
		return "blockPartner";
	}
	
	@RequestMapping(value = "/partnerMemberDetail.mdo", method=RequestMethod.GET)
	public String partnerMemberDetail(HttpSession session, @RequestParam("email")String email, Model model) {
		
		PartnerVO partner = partnerServiceImpl.selectPartnerByEmail(email);
		List<HotelVO> hotel = partnerServiceImpl.selectHotelByEmail(email);
		
		model.addAttribute("hotel", hotel);
		model.addAttribute("partner", partner);
		
		return "partnerMemberDetail";
	}
}





