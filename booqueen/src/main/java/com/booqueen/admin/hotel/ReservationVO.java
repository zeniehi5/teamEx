package com.booqueen.admin.hotel;

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
	private int price;
	private String lastname;
	private String firstname;
	private String special_request;
	private String time_arrival;
	private boolean status;
	private String type;
	private int commission;

}
