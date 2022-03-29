package com.booqueen.user.hotel.vo;

import lombok.Data;

@Data
public class RecentSearchVO {

	private String userid;
	private String start_date;
	private String end_date;
	private Integer people;
	private String city;
	private String file_url;
	
}
