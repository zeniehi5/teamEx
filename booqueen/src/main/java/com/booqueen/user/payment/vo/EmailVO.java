package com.booqueen.user.payment.vo;

import lombok.Data;

@Data
public class EmailVO {
	
	private Integer reservation_number;
	private String checkin_date;
	private String checkout_date;
	private Integer price;
	private Integer pincode;
	private String hotelname;
	private Integer count_room;
	private Integer check_in_start;
	private Integer check_in_end;
	private Integer check_out_start;
	private Integer check_out_end;
	private String city;
	private String address1;
	private String address2;
	private String telephone;
	private String member_email;
	private String type;
	private String email;
	private String firstname;
	private String lastname;
}
