package com.booqueen.partner.calendar;

import com.booqueen.partner.room.RoomAvailableVO;

public interface CalendarService {

	int partnerScheduleUpdate(RoomAvailableVO vo);

	int insertAvailableRoom(RoomAvailableVO vo);
}
