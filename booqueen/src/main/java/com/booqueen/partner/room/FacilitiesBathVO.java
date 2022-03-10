package com.booqueen.partner.room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FacilitiesBathVO {
	
	private int sequence;
	private int room_id;
	private boolean restroom;
	private boolean bathtub;
	private boolean bidet;
	private boolean bathrobe;
	private boolean amenities;
	private boolean hair_dryer;
	private boolean spabath;
	private boolean public_bathroom;
	private boolean slipper;

}
