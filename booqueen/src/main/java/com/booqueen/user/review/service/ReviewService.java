package com.booqueen.user.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.user.review.dao.ReviewDAO;
import com.booqueen.user.review.vo.ReviewAvgVO;
import com.booqueen.user.review.vo.ReviewProfileVO;
import com.booqueen.user.review.vo.ReviewVO;


@Service
public class ReviewService {
	
	@Autowired
	ReviewDAO reviewDAO;
	
	public int insertReview(ReviewVO vo) {
		return reviewDAO.insertReview(vo);
	}
	
	public List<ReviewVO> getReviewListBySerialnumber(Integer serialnumber) {
		return reviewDAO.getReviewListBySerialnumber(serialnumber);
	}  
	
	public List<ReviewProfileVO> getReviewAndProfileList(Integer serialnumber){
		return reviewDAO.getReviewAndProfileList(serialnumber);
	}
	
	public ReviewAvgVO getReviewAvg(Integer serialnumber) {
		return reviewDAO.getReviewAvg(serialnumber);
	}
}
