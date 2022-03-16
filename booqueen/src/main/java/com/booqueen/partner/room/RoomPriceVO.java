package com.booqueen.partner.room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomPriceVO {
	
	private int sequence;
	private int room_id;
	private String open_date_start;
	private String open_date_end;
	private int standard_price;
	private int non_refundable_price;
	private int available;

}
