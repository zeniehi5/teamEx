package com.booqueen.partner.review.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.partner.review.ReviewAvgVO;
import com.booqueen.partner.review.ReviewService;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public ReviewAvgVO getReviewAvgByHotelSerial(int serialnumber) {
		return reviewDAO.getReviewAvgByHotelSerical(serialnumber);
	}

}
