package com.booqueen.partner.room.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.partner.room.RoomService;
import com.booqueen.partner.room.RoomVO;

@Service("roomService")
public class RoomServiceImpl implements RoomService {

	@Autowired
	private RoomDAO roomDAO;
	
	@Override
	public void addRoom(RoomVO vo) {
		roomDAO.addRoom(vo);
	}

	@Override
	public RoomVO getIdBySerial(int serial) {
		return roomDAO.getIdBySerial(serial);
	}

}