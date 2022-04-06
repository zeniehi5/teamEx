package com.booqueen.partner.reservation;

import lombok.Data;

@Data
public class ReportUserVO {

	private int sequence;
	private String userid;
	private String name;
	private int serialnumber;
	private String hotelname;
	private String whyblock;
	private boolean active;
}
