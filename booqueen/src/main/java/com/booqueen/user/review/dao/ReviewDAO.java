package com.booqueen.user.review.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.user.review.vo.ReviewAvgVO;
import com.booqueen.user.review.vo.ReviewProfileVO;
import com.booqueen.user.review.vo.ReviewVO;

@Repository
public class ReviewDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertReview(ReviewVO vo) throws DataAccessException{
		return sqlSession.insert("com.booqueen.user.review.dao.reviewmapper.insertReview", vo);
	}
	
	public List<ReviewVO> getReviewListBySerialnumber(Integer serialnumber) throws DataAccessException{
		List<ReviewVO> ReviewListBySerialnumber = sqlSession.selectList("com.booqueen.user.review.dao.reviewmapper.selectReviews", serialnumber);
		return ReviewListBySerialnumber;
	} 
	
	public List<ReviewProfileVO> getReviewAndProfileList(Integer serialnumber) throws DataAccessException{
		List<ReviewProfileVO> getReviewAndProfileList = sqlSession.selectList("com.booqueen.user.review.dao.reviewmapper.selectReviewAndProfile", serialnumber);
		return getReviewAndProfileList;
	}
	
	public ReviewAvgVO getReviewAvg(Integer serialnumber) throws DataAccessException{
		ReviewAvgVO vo = sqlSession.selectOne("com.booqueen.user.review.dao.reviewmapper.selectReviewsAvg", serialnumber);
		return vo;
	}
	
}
