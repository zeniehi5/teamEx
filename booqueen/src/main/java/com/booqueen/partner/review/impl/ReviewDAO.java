package com.booqueen.partner.review.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.reservation.PagingVO;
import com.booqueen.partner.review.ReviewAvgVO;
import com.booqueen.user.review.vo.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public ReviewAvgVO getReviewAvgByHotelSerical(int serialnumber) {
		return sqlSessionTemplate.selectOne("reviewDAO.getReviewAvgByHotelSerial", serialnumber);
	}

	public List<ReviewVO> getReviewList(int serialnumber, PagingVO paging) {
		int offset = (paging.getCurrentPage() -1) * paging.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, paging.getBoardLimit());
		return sqlSessionTemplate.selectList("reviewDAO.getReviewList", serialnumber, rowBounds);
	}

	public int getReviewCount(int serialnumber) {
		return sqlSessionTemplate.selectOne("reviewDAO.getReviewCount", serialnumber);
	}

}
