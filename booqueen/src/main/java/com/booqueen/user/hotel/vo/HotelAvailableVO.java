package com.booqueen.user.hotel.vo;

import lombok.Data;

@Data
public class HotelAvailableVO {
	private Integer serialnumber;
	private String city;
	private String start_date;
	private String end_date;
	private long diffDays;
	private String start_date_day;
	private String end_date_day;
}
