package com.booqueen.partner.room.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.hotel.HotelImageVO;
import com.booqueen.partner.hotel.HotelServiceVO;
import com.booqueen.partner.room.FacilitiesAccessVO;
import com.booqueen.partner.room.FacilitiesBasicVO;
import com.booqueen.partner.room.FacilitiesBathVO;
import com.booqueen.partner.room.FacilitiesMediaVO;
import com.booqueen.partner.room.FacilitiesServiceVO;
import com.booqueen.partner.room.FacilitiesViewVO;
import com.booqueen.partner.room.RoomAvailableVO;
import com.booqueen.partner.room.RoomVO;
import com.booqueen.partner.room.UpdateImageVO;

@Repository("roomDAO")
public class RoomDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

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

	public void updateHotelService(HotelServiceVO service) {
		sqlSessionTemplate.update("RoomDAO.updateHotelService", service);
	}

	public void updateFacilitiesBasic(FacilitiesBasicVO basic) {
		sqlSessionTemplate.update("RoomDAO.updateFacilitiesBasic", basic);
	}

	public void updateFacilitiesAccess(FacilitiesAccessVO access) {
		sqlSessionTemplate.update("RoomDAO.updateFacilitiesAccess", access);
	}

	public void updateFacilitiesMedia(FacilitiesMediaVO media) {
		sqlSessionTemplate.update("RoomDAO.updateFacilitiesMedia", media);
	}

	public void updateFacilitiesView(FacilitiesViewVO view) {
		sqlSessionTemplate.update("RoomDAO.updateFacilitiesView", view);
	}

	public void updateFacilitiesBath(FacilitiesBathVO bath) {
		sqlSessionTemplate.update("RoomDAO.updateFacilitiesBath", bath);
	}

	public void updateFacilitiesService(FacilitiesServiceVO service) {
		sqlSessionTemplate.update("RoomDAO.updateFacilitiesService", service);
	}

	public List<RoomVO> getRoomByHotelSerial(int serialnumber) {
		return sqlSessionTemplate.selectList("RoomDAO.getRoomByHotelSerial", serialnumber);
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
	public HotelImageVO selectImageBySerial(int serialnumber){
		return sqlSessionTemplate.selectOne("RoomDAO.selectImageBySerial", serialnumber);
	}

	public List<HotelImageVO> deleteImageBySerial(int serialnumber) {
		return sqlSessionTemplate.selectList("RoomDAO.deleteImageBySerial", serialnumber);
	}

	public void insertRoomImage(UpdateImageVO vo) {
		sqlSessionTemplate.insert("RoomDAO.insertRoomImage", vo);
	}
	public List<UpdateImageVO> selectRoomImageBySerial(int serialnumber){
		return sqlSessionTemplate.selectList("RoomDAO.selectRoomImageBySerial", serialnumber);
	}
	public List<UpdateImageVO> selectTypeBySerial(int serialnumber){
		return sqlSessionTemplate.selectList("RoomDAO.selectTypeBySerial", serialnumber);
	}
	public List<RoomVO> selectRoom_idBySerial(RoomVO vo) {
		return sqlSessionTemplate.selectList("RoomDAO.selectRoom_idBySerial");
	}

	public List<RoomVO> selectRoomListByHotelSerial(int serialnumber) {
		return sqlSessionTemplate.selectList("RoomDAO.selectRoomListByHotelSerial", serialnumber);
	}

	public RoomVO getRoomAvailableByRoomType(RoomVO room) {
		return sqlSessionTemplate.selectOne("RoomDAO.getRoomAvailableByRoomType", room);
	}
	
	public RoomAvailableVO selectRoomIdByType(RoomAvailableVO vo) {
		return sqlSessionTemplate.selectOne("RoomDAO.selectRoomIdByType", vo);
	}

	public List<RoomVO> getRoomListByHotelSerial(int searchSerial) {
		return sqlSessionTemplate.selectList("RoomDAO.getRoomListByHotelSerial", searchSerial);
	}

	public RoomVO getRoomIdByRoomType(RoomVO search) {
		return sqlSessionTemplate.selectOne("RoomDAO.getRoomIdByRoomType", search);
	}

	public int deleteRoomFromAvailable(RoomAvailableVO roomAvailable) {
		return sqlSessionTemplate.delete("RoomDAO.deleteRoomFromAvailable", roomAvailable);
	}

	public RoomVO selectRoomByRoomType(RoomVO room) {
		return sqlSessionTemplate.selectOne("RoomDAO.selectRoomByRoomType", room);
	}
}