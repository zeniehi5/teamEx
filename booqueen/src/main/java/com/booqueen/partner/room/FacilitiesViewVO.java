package com.booqueen.partner.room;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FacilitiesViewVO {
	
	private int sequence;
	private int room_id;
	private boolean balcony;
	private boolean terras;
	private boolean city_view;
	private boolean garden_view;
	private boolean lake_view;
	private boolean attractions_view;
	private boolean mountain_view;
	private boolean pool_view;
	private boolean river_view;
	private boolean ocean_view;

}
