package com.booqueen.user.wishlist.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.user.member.MemberVO;
import com.booqueen.user.wishlist.vo.WishlistVO;

@Repository
public class WishlistDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertWishlist(WishlistVO vo) throws DataAccessException{
		return sqlSession.insert("com.booqueen.user.wishlist.dao.wishlistmapper.insertwishlist", vo);
	}
	
	public WishlistVO selectWishlist(WishlistVO vo) throws DataAccessException{
		return sqlSession.selectOne("com.booqueen.user.wishlist.dao.wishlistmapper.selectwishlist", vo);
	}
	
	public List<WishlistVO> selectlist(WishlistVO vo) throws DataAccessException{
		return sqlSession.selectList("com.booqueen.user.wishlist.dao.wishlistmapper.selectwishlistByUserid", vo);
	}
	
	public int deleteWishlist(WishlistVO vo) throws DataAccessException{
		return sqlSession.delete("com.booqueen.user.wishlist.dao.wishlistmapper.deletewishlist", vo);
	}
}
