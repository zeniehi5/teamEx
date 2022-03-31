package com.booqueen.admin.hotel.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.hotel.RoomDAO;
import com.booqueen.admin.hotel.RoomDetailVO;
import com.booqueen.admin.hotel.RoomService;
import com.booqueen.partner.room.RoomVO;

@Service
public class RoomServiceImpl implements RoomService {

	@Autowired
	private RoomDAO roomDAO;
	
	@Override
	public List<RoomVO> selectRoomListByHotelSerial(int serialnumber) {
		return roomDAO.selectRoomListByHotelSerial(serialnumber);
	}

	@Override
	public RoomDetailVO selectRoomDetailsByRoomId(int room_id) {
		return roomDAO.selectRoomDetailsByRoomId(room_id);
	}

}
