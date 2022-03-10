package com.booqueen.partner.room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FacilitiesServiceVO {
	
	private int sequence;
	private int room_id;
	private boolean lounge;
	private boolean alarm_clock;
	private boolean morning_call;
	private boolean towel;
	private boolean bathing_sheet;

}
