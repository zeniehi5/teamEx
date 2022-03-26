package com.booqueen.partner.reservation;

import java.sql.Date;

import lombok.Data;

@Data
public class ReservationDetailVO {
	
	private String lastname;
	private String firstname;
	private Integer room_id;
	private Date checkin_date;
	private Date checkout_date;
	private String userid;
	private int price;
	private int reservation_number;
	private String special_request;
	private String time_arrival;
	private Double commission;
	private String type;
	private Date reservation_date;

}
