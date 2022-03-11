package com.booqueen.partner.hotel;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HotelImageVO {
	
	private int sequence;
	private int serialnumber;
	private String file_name;
	private String tag_name;
	private String file_url;

}
