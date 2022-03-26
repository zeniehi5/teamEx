package com.booqueen.user.room.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.user.hotel.vo.HotelAvailableVO;
import com.booqueen.user.reservation.vo.ReservationVO;
import com.booqueen.user.room.vo.RoomVO;

@Repository
public class RoomDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<RoomVO> getRoomFacilities(HotelAvailableVO hotelAvailableVO) throws DataAccessException{
		List<RoomVO> roomList = sqlSession.selectList("com.booqueen.user.room.dao.roomapper.selectRoomFacilities", hotelAvailableVO);
		return roomList;
	}
	
	public List<RoomVO> getRoomDetail(ReservationVO reservationVO) throws DataAccessException{
		List<RoomVO> roomList = sqlSession.selectList("com.booqueen.user.room.dao.roomapper.selectRoomDetail", reservationVO);
		return roomList;
	}
	
	public int deleteRoomAvailable(ReservationVO reservationVO) throws DataAccessException{
		return sqlSession.delete("com.booqueen.user.room.dao.roomapper.deleteRoomAvailable", reservationVO);
	}
	
	public int insertRoomAvailable(ReservationVO reservationVO) throws DataAccessException{
		return sqlSession.insert("com.booqueen.user.room.dao.roomapper.insertRoomAvailable", reservationVO);
	}
	
	
}
