package com.booqueen.partner.calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.partner.room.RoomAvailableVO;

@Service
public class CalendarServiceImpl implements CalendarService {

	@Autowired
	private CalendarDAO calendarDAO;
	
	@Override
	public int partnerScheduleUpdate(RoomAvailableVO vo) {
		
		return calendarDAO.partnerScheduleUpdate(vo);
	}
}
