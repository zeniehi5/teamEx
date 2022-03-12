package com.booqueen.partner.review.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.review.ReviewAvgVO;

@Repository("reviewDAO")
public class ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public ReviewAvgVO getReviewAvgByHotelSerical(int serialnumber) {
		return sqlSessionTemplate.selectOne("reviewDAO.getReviewAvgByHotelSerial", serialnumber);
	}

}
