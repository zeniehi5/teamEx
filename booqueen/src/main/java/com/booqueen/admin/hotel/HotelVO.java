package com.booqueen.admin.hotel;

import lombok.Data;

@Data
public class HotelVO {
	private Integer serialnumber;
	private String member_email;
	private String hotelname;
	private String address1;
	private String address2;
	private String city;
	private String telephone;
	private String manager;
	private Integer star;
	
}
