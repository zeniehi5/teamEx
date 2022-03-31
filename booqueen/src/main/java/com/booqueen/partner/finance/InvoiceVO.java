package com.booqueen.partner.finance;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class InvoiceVO {
	
	private int reservation_number;
	private int room_id;
	private String userid;
	private Date checkin_date;
	private Date checkout_date;
	private Date reservation_date;
	private int price;
	private String lastname;
	private String firstname;
	private String special_request;
	private String time_arrival;
	private Boolean status;
	private String email;
	private int pincode;
	private int serialnumber;
	private String hotelname;
	private int count_room;
	private Date cancel_date;
	private String cancel_reasion;
	private String merchant;
	private String imp_uid;
	private int use_status;
	
	//option
	private int billing;	//수수료 제외한 청구 금액

}
