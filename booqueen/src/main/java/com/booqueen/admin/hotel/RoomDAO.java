package com.booqueen.admin.hotel;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.room.RoomVO;

@Repository("RoomDAOAdmin")
public class RoomDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<RoomVO> selectRoomListByHotelSerial(int serialnumber) {
		return sqlSessionTemplate.selectList("RoomDAOAdmin.selectRoomListByHotelSerial", serialnumber);
	}

	public RoomDetailVO selectRoomDetailsByRoomId(int room_id) {
		return sqlSessionTemplate.selectOne("RoomDAOAdmin.selectRoomDetailsByRoomId", room_id);
	}
	
	

}
