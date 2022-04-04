package com.booqueen.partner.calendar;

import com.booqueen.partner.room.RoomAvailableVO;
import com.booqueen.partner.room.RoomVO;

public interface CalendarService {

	int partnerScheduleUpdate(RoomAvailableVO vo);

	int insertAvailableRoom(RoomAvailableVO vo);
	
	RoomAvailableVO selectRoomByRoomId(RoomAvailableVO selectedRoom);
}
