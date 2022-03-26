package com.booqueen.admin.hotel;

import lombok.Data;

@Data
public class HotelDetailVO {
	private int serialnumber;
	private String hotelname;
	private String member_email;
	private String address1;
	private String address2;
	private String city;
	private String telephone;
	private String manager;
	private String file_url;
}
