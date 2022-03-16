package com.booqueen.user.hotel.vo;

import com.booqueen.user.review.vo.ReviewAvgVO;
import com.booqueen.user.room.vo.RoomVO;

import lombok.Data;

@Data
public class HotelVO {
	private Integer serialnumber;
	private String hotelname;
	private String address1;
	private String address2;
	private String postalcode;
	private String city;
	private String telephone;
	private String star;
	private Double longitude;
	private Double latitude;
	HotelImgVO hotelImgVO;
	ReviewAvgVO reviewAvgVO;
	RoomVO roomVO;
}
