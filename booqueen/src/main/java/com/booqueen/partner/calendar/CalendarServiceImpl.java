package com.booqueen.partner.calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.partner.room.RoomAvailableVO;
import com.booqueen.partner.room.RoomVO;

@Service
public class CalendarServiceImpl implements CalendarService {

	@Autowired
	private CalendarDAO calendarDAO;
	
	@Override
	public int partnerScheduleUpdate(RoomAvailableVO vo) {
		return calendarDAO.partnerScheduleUpdate(vo);
	}

	@Override
	public int insertAvailableRoom(RoomAvailableVO vo) {
		return calendarDAO.insertAvailableRoom(vo);
	}
	
	@Override
	public RoomAvailableVO selectRoomByRoomId(RoomAvailableVO vo) {
		
		return calendarDAO.selectRoomByRoomId(vo);
	}
}
