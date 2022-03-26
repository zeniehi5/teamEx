package com.booqueen.partner.room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UpdateImageVO {
	private int sequence;
	private int serialnumber;
	private String file_name;
	private String file_url;
	private String type;
	private int room_id;
}