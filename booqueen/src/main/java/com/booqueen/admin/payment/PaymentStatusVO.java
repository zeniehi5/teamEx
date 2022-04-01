package com.booqueen.admin.payment;

import lombok.Data;

@Data
public class PaymentStatusVO {
	
	private Integer reservation_number;
	private Integer room_id;
	private String userid;
	private String checkin_date;
	private String checkout_date;
	private String reservation_date;
	private Integer price;
	private String lastname;
	private String firstname;
	private String special_request;
	private String time_arrival;
	private boolean status;
	private String email;
	private Integer pincode;
	private Integer serialnumber;
	private String hotelname;
	private Integer count_room;
	private String cancel_date;
	private String cancel_reason;
	private String merchant;
	private String imp_uid;
	private Integer use_status;
	private boolean review;
}
