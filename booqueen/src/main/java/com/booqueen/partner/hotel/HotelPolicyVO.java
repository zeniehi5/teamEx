package com.booqueen.partner.hotel;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HotelPolicyVO {
	
	private Integer sequence;
	private Integer serialnumber;
	private String free_cancel_allowed;
	private Integer check_in_start;
	private Integer check_in_end;
	private Integer check_out_start;
	private Integer check_out_end;
	private Boolean kid_allowed;
	private Boolean pet_allowed;
	
}
