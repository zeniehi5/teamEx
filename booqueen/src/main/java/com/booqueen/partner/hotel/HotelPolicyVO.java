package com.booqueen.partner.hotel;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HotelPolicyVO {
	
	private int sequence;
	private int serialnumber;
	private String free_cancel_allowed;
	private int refund_policy;
	private int check_in_start;
	private int check_in_end;
	private int check_out_start;
	private int check_out_end;
	private boolean kid_allowed;
	private boolean pet_allowed;
	
}
