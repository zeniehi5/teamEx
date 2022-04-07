package com.booqueen.user.room.vo;

import lombok.Data;

@Data
public class RoomAvailableVO {

	private int available;
	private Integer room_id;
	private String open_date;
	private String close_date;
	private Integer standard_price;
}
