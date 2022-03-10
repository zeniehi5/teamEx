package com.booqueen.user.room.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.user.room.vo.RoomVO;

@Repository
public class RoomDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<RoomVO> getRoomFacilities(Integer serialnumber) throws DataAccessException{
		List<RoomVO> roomList = sqlSession.selectList("com.booqueen.user.room.dao.roomapper.selectRoomFacilities", serialnumber);
		return roomList;
	}
}
