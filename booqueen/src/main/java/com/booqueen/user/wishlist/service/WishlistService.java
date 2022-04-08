package com.booqueen.user.wishlist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.user.member.vo.MemberVO;
import com.booqueen.user.wishlist.dao.WishlistDAO;
import com.booqueen.user.wishlist.vo.WishlistVO;

@Service
public class WishlistService {

	@Autowired
	WishlistDAO wishlistDAO;
	
	public int insertWishlist(WishlistVO vo) {
		return wishlistDAO.insertWishlist(vo);
	}
	
	public int deleteWishlist(WishlistVO vo) {
		return wishlistDAO.deleteWishlist(vo);
	}
	
	public WishlistVO selectWishlist(WishlistVO vo) {
		return wishlistDAO.selectWishlist(vo);
	}
	
	public List<WishlistVO> selectlist(WishlistVO vo) {
		return wishlistDAO.selectlist(vo);
	}
}
