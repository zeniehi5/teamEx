package com.booqueen.admin.member;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {
	private String gender;
	private Integer female_count;
	private Integer male_count;
	
	private String name;
	private String userid;
	private String phone1;
	private String phone2;
	private String phone3;
	private String birth_year;
	private String birth_month;
	private String birth_day;

//	private String profile_data;

	private Integer reservation_number;
	private String hotelname;
	private Date checkin_date;
	private Date checkout_date;
	private Integer price;
	private Integer use_status;

	
}
