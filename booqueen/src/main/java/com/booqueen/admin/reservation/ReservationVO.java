package com.booqueen.admin.reservation;

import java.sql.Date;

import lombok.Data;

@Data
public class ReservationVO {
	
	private int reservation_number;
	private int room_id;
	private String userid;
	private Date checkin_date;
	private Date checkout_date;
	private Date reservation_date;
	private Date cancel_date;
	private String cancel_reason;
	private int price;
	private String lastname;
	private String firstname;
	private String special_request;
	private String time_arrival;
	private boolean status;
	private String type;
	private int commission;
	private String hotelname;
	private int use_status;
	private int serialnumber;
	private Date commission_date;
	private int commission_count;
	private int count_room;
	private String name;
	private int reservation_count;
	
}
