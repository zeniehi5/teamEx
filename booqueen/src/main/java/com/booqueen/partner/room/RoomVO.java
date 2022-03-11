package com.booqueen.partner.room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomVO {
	
	private int room_id;
	private int serialnumber;
	private String type;
	private int price;
	private int smoking;
	private int available;

}