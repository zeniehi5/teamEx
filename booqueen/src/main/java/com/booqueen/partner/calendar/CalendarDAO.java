package com.booqueen.partner.calendar;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.room.RoomAvailableVO;

@Repository
public class CalendarDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int partnerScheduleUpdate(RoomAvailableVO vo) {
		return sqlSessionTemplate.update("RoomDAO.partnerScheduleUpdate",vo);
		
	}

	public int insertAvailableRoom(RoomAvailableVO vo) {
		return sqlSessionTemplate.insert("RoomDAO.insertAvailableRoom", vo);
	}
}
