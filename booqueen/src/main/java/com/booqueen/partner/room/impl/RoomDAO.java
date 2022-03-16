package com.booqueen.partner.room.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.room.FacilitiesAccessVO;
import com.booqueen.partner.room.FacilitiesBasicVO;
import com.booqueen.partner.room.FacilitiesBathVO;
import com.booqueen.partner.room.FacilitiesMediaVO;
import com.booqueen.partner.room.FacilitiesServiceVO;
import com.booqueen.partner.room.FacilitiesViewVO;
import com.booqueen.partner.room.RoomAvailableVO;
import com.booqueen.partner.room.RoomVO;

@Repository("roomDAO")
public class RoomDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void addRoom(RoomVO vo) {
		sqlSessionTemplate.insert("RoomDAO.addRoom", vo);
	}
	
	public RoomVO getIdBySerial(int serial) {
		return sqlSessionTemplate.selectOne("RoomDAO.getIdBySerial", serial);
	}

	public FacilitiesBasicVO getBasicInfoByHotelSerial(int serial) {
		return sqlSessionTemplate.selectOne("RoomDAO.getBasicInfoByHotelSerial", serial);
	}

	public FacilitiesBathVO getBathInfoByHotelSerial(int serial) {
		return sqlSessionTemplate.selectOne("RoomDAO.getBathInfoByHotelSerial", serial);
	}

	public FacilitiesMediaVO getMediaInfoByHotelSerial(int serial) {
		return sqlSessionTemplate.selectOne("RoomDAO.getMediaInfoByHotelSerial", serial);
	}

	public FacilitiesViewVO getViewInfoByHotelSerial(int serial) {
		return sqlSessionTemplate.selectOne("RoomDAO.getViewInfoByHotelSerial", serial);
	}

	public FacilitiesAccessVO getAccessInfoByHotelSerial(int serial) {
		return sqlSessionTemplate.selectOne("RoomDAO.getAccessInfoByHotelSerial", serial);
	}

	public FacilitiesServiceVO getServiceInfoByHotelSerial(int serial) {
		return sqlSessionTemplate.selectOne("RoomDAO.getServiceInfoByHotelSerial", serial);
	}

	public void updateHotelService(HashMap<String, Object> attribute) {
		sqlSessionTemplate.update("RoomDAO.updateHotelService", attribute);
	}

	public void updateFacilitiesBasic(HashMap<String, Object> attribute) {
		sqlSessionTemplate.update("RoomDAO.updateFacilitiesBasic", attribute);
	}

	public void updateFacilitiesAccess(HashMap<String, Object> attribute) {
		sqlSessionTemplate.update("RoomDAO.updateFacilitiesAccess", attribute);
	}

	public void updateFacilitiesMedia(HashMap<String, Object> attribute) {
		sqlSessionTemplate.update("RoomDAO.updateFacilitiesMedia", attribute);
	}

	public void updateFacilitiesView(HashMap<String, Object> attribute) {
		sqlSessionTemplate.update("RoomDAO.updateFacilitiesView", attribute);
	}

	public void updateFacilitiesBath(HashMap<String, Object> attribute) {
		sqlSessionTemplate.update("RoomDAO.updateFacilitiesBath", attribute);
	}

	public void updateFacilitiesService(HashMap<String, Object> attribute) {
		sqlSessionTemplate.update("RoomDAO.updateFacilitiesService", attribute);
	}

	public RoomVO getRoomByHotelSerial(int serialnumber) {
		return sqlSessionTemplate.selectOne("RoomDAO.getRoomByHotelSerial", serialnumber);
	}

	public void insertRoomPrice(HashMap<String, Object> setPrice) {
		sqlSessionTemplate.insert("RoomDAO.insertRoomPrice", setPrice);
	}

	public void insertRoomAvailable(HashMap<String, Object> setPrice) {
		sqlSessionTemplate.insert("RoomDAO.insertRoomAvailable", setPrice);
	}

	public List<RoomAvailableVO> selectRoomAvailable(int room_id) {
		return sqlSessionTemplate.selectList("RoomDAO.selectRoomAvailable", room_id);
	}

}