package com.booqueen.partner.hotel;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HotelVO {

	private int serialnumber;
	private String member_email;
	private String hotelname;
	private String address1;
	private String address2;
	private String postalcode;
	private String city;
	private String telephone;
	private String star;
	private String manager;
	private int longitude;
	private int latitude;
	
}