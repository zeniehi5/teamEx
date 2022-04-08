package com.booqueen.user.wishlist.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.user.member.vo.MemberVO;
import com.booqueen.user.wishlist.service.WishlistService;
import com.booqueen.user.wishlist.vo.WishlistVO;

@Controller
public class WishlistController {

	@Autowired
	WishlistService wishlistService;
	
	@RequestMapping(value="/wishlist.do")
	@ResponseBody
	public String insertWishlist(WishlistVO vo) throws Exception{
		int insertResult = 0;
		int deleteResult = 0;
		
		String message = null;
		
		WishlistVO wishlistVO = wishlistService.selectWishlist(vo);
		
		if(wishlistVO == null) {
			insertResult = wishlistService.insertWishlist(vo);
			message = "insert";
			return message; 
		} else {
			deleteResult = wishlistService.deleteWishlist(vo);
			message = "delete";
			return message; 
		}
	      
	}
	
	@RequestMapping(value="/wishlistPage.do")
	public String wishlistPage(WishlistVO vo, Model model, HttpSession session) throws Exception{
		
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		vo.setUserid(memberVO.getUserid());
		
		List<WishlistVO> wishlistVOList = wishlistService.selectlist(vo);
		
		model.addAttribute("wishlist", wishlistVOList);
		
		return "wishlist/wishlist";
	}
	
	@RequestMapping(value = "/deleteWishlist.do")
	@ResponseBody
	public String deleteWishlist(WishlistVO vo) throws Exception{
		
		int deleteResult = wishlistService.deleteWishlist(vo);
		
		return "delete completed";
	}
	
}
