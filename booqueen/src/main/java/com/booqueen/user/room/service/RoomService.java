package com.booqueen.user.room.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.user.room.dao.RoomDAO;
import com.booqueen.user.room.vo.RoomVO;

@Service
public class RoomService {

	@Autowired
	RoomDAO roomDAO;
	
	public List<RoomVO> getRoomFacilities(Integer serialnumber){
		return roomDAO.getRoomFacilities(serialnumber);
	}
	
}
