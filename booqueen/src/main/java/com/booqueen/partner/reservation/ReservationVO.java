package com.booqueen.partner.reservation;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReservationVO {
	
	private String lastname;
	private String firstname;
	private Date checkin_date;
	private Date checkout_date;
	private String type;
	private Date reservation_date;
	private String status;
	private int price;
	private double commission;
	private int reservation_number;
	
}
