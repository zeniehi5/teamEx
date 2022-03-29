package com.booqueen.partner.review;

import java.util.List;

import com.booqueen.partner.reservation.PagingVO;
import com.booqueen.user.review.vo.ReviewVO;

public interface ReviewService {

	ReviewAvgVO getReviewAvgByHotelSerial(int serialnumber);

	List<ReviewVO> getReviewList(int serialnumber, PagingVO paging);

	int getReviewCount(int serialnumber);

	List<ReviewVO> selectReviewListByHotelSerial(int serialnumber);

}
