package com.booqueen.partner.room.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.partner.hotel.HotelImageVO;
import com.booqueen.partner.room.FacilitiesAccessVO;
import com.booqueen.partner.room.FacilitiesBasicVO;
import com.booqueen.partner.room.FacilitiesBathVO;
import com.booqueen.partner.room.FacilitiesMediaVO;
import com.booqueen.partner.room.FacilitiesServiceVO;
import com.booqueen.partner.room.FacilitiesViewVO;
import com.booqueen.partner.room.RoomAvailableVO;
import com.booqueen.partner.room.RoomService;
import com.booqueen.partner.room.RoomVO;
import com.booqueen.partner.room.UpdateImageVO;

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

	@Override
	public FacilitiesBasicVO getBasicInfoByHotelSerial(int serial) {
		return roomDAO.getBasicInfoByHotelSerial(serial);
	}

	@Override
	public FacilitiesBathVO getBathInfoByHotelSerial(int serial) {
		return roomDAO.getBathInfoByHotelSerial(serial);
	}

	@Override
	public FacilitiesMediaVO getMediaInfoByHotelSerial(int serial) {
		return roomDAO.getMediaInfoByHotelSerial(serial);
	}

	@Override
	public FacilitiesViewVO getViewInfoByHotelSerial(int serial) {	
		return roomDAO.getViewInfoByHotelSerial(serial);
	}

	@Override
	public FacilitiesAccessVO getAccessInfoByHotelSerial(int serial) {	
		return roomDAO.getAccessInfoByHotelSerial(serial);
	}

	@Override
	public FacilitiesServiceVO getServiceInfoByHotelSerial(int serial) {
		return roomDAO.getServiceInfoByHotelSerial(serial);
	}

	@Override
	public void updateHotelService(HashMap<String, Object> attribute) {
		roomDAO.updateHotelService(attribute);
	}

	@Override
	public void updateFaciliteisBasic(HashMap<String, Object> attribute) {
		roomDAO.updateFacilitiesBasic(attribute);
	}

	@Override
	public void updateFacilitiesAccess(HashMap<String, Object> attribute) {
		roomDAO.updateFacilitiesAccess(attribute);
	}

	@Override
	public void updateFacilitiesMedia(HashMap<String, Object> attribute) {
		roomDAO.updateFacilitiesMedia(attribute);
	}

	@Override
	public void updateFacilitiesView(HashMap<String, Object> attribute) {
		roomDAO.updateFacilitiesView(attribute);
	}

	@Override
	public void updateFacilitiesBath(HashMap<String, Object> attribute) {
		roomDAO.updateFacilitiesBath(attribute);
	}

	@Override
	public void updateFacilitiesService(HashMap<String, Object> attribute) {
		roomDAO.updateFacilitiesService(attribute);
	}

	@Override
	public RoomVO getRoomByHotelSerial(int serialnumber) {
		return roomDAO.getRoomByHotelSerial(serialnumber);
	}
	

	@Override
	public void insertRoomAvailable(HashMap<String, Object> setPrice) {
		roomDAO.insertRoomAvailable(setPrice);
	}

	@Override
	public List<RoomAvailableVO> selectRoomAvailable(int room_id) {
		return roomDAO.selectRoomAvailable(room_id);
	}

	@Override
	public HotelImageVO selectImageBySerial(int serialnumber) {
		return roomDAO.selectImageBySerial(serialnumber);
	}

	@Override
	public List<HotelImageVO> deleteImageBySerial(int serialnumber) {
		return roomDAO.deleteImageBySerial(serialnumber);
	}
	@Override
	public void insertRoomImage(UpdateImageVO vo) {
		roomDAO.insertRoomImage(vo);	
	}

	@Override
	public List<UpdateImageVO> selectRoomImageBySerial(int serialnumber) {
		return roomDAO.selectRoomImageBySerial(serialnumber);
	}

	@Override
	public List<UpdateImageVO> selectTypeBySerial(int serialnumber) {
		return roomDAO.selectTypeBySerial(serialnumber);
	}

	@Override
	public List<RoomVO> selectRoom_idBySerial(RoomVO vo) {
		return roomDAO.selectRoom_idBySerial(vo);
	}



}