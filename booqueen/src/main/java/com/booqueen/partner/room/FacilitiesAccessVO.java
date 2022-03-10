package com.booqueen.partner.room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FacilitiesAccessVO {
	
	private int sequence;
	private int room_id;
	private boolean ground_floor;
	private boolean wheelchair;
	private boolean elevator;
	private boolean stair_only;
	private boolean bathroom_handle;

}
