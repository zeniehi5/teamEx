package com.booqueen.admin.member;

import lombok.Data;

@Data
public class BlockUserVO {
	private int sequence;
	private String userid;
	private String name;
	private int serialnumber;
	private String hotelname;
	private String whyblock;
	private boolean active;
}
