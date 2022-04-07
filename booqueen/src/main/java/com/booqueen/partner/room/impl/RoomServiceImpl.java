package com.booqueen.partner.room.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.partner.hotel.HotelImageVO;
import com.booqueen.partner.hotel.HotelServiceVO;
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
	public FacilitiesBasicVO getBasicInfoByRoomId(int room_id) {
		return roomDAO.getBasicInfoByHotelSerial(room_id);
	}

	@Override
	public FacilitiesBathVO getBathInfoByRoomId(int room_id) {
		return roomDAO.getBathInfoByHotelSerial(room_id);
	}

	@Override
	public FacilitiesMediaVO getMediaInfoByRoomId(int room_id) {
		return roomDAO.getMediaInfoByHotelSerial(room_id);
	}

	@Override
	public FacilitiesViewVO getViewInfoByRoomId(int room_id) {	
		return roomDAO.getViewInfoByHotelSerial(room_id);
	}

	@Override
	public FacilitiesAccessVO getAccessInfoByRoomId(int room_id) {	
		return roomDAO.getAccessInfoByHotelSerial(room_id);
	}

	@Override
	public FacilitiesServiceVO getServiceInfoByRoomId(int room_id) {
		return roomDAO.getServiceInfoByHotelSerial(room_id);
	}

	@Override
	public void updateHotelService(HotelServiceVO service) {
		roomDAO.updateHotelService(service);
	}

	@Override
	public void updateFaciliteisBasic(FacilitiesBasicVO basic) {
		roomDAO.updateFacilitiesBasic(basic);
	}

	@Override
	public void updateFacilitiesAccess(FacilitiesAccessVO access) {
		roomDAO.updateFacilitiesAccess(access);
	}

	@Override
	public void updateFacilitiesMedia(FacilitiesMediaVO media) {
		roomDAO.updateFacilitiesMedia(media);
	}

	@Override
	public void updateFacilitiesView(FacilitiesViewVO view) {
		roomDAO.updateFacilitiesView(view);
	}

	@Override
	public void updateFacilitiesBath(FacilitiesBathVO bath) {
		roomDAO.updateFacilitiesBath(bath);
	}

	@Override
	public void updateFacilitiesService(FacilitiesServiceVO service) {
		roomDAO.updateFacilitiesService(service);
	}

	@Override
	public List<RoomVO> getRoomByHotelSerial(int serialnumber) {
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
	public int insertRoomImage(UpdateImageVO vo) {
		return roomDAO.insertRoomImage(vo);	
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

	@Override
	public List<RoomVO> selectRoomListByHotelSerial(int serialnumber) {
		return roomDAO.selectRoomListByHotelSerial(serialnumber);
	}

	@Override
	public RoomVO getRoomAvailableByRoomType(RoomVO room) {
		return roomDAO.getRoomAvailableByRoomType(room);
	}

	@Override
	public RoomAvailableVO selectRoomIdByType(RoomAvailableVO vo) {
		return roomDAO.selectRoomIdByType(vo);
	}

	@Override
	public List<RoomVO> getRoomListByHotelSerial(int searchSerial) {
		return roomDAO.getRoomListByHotelSerial(searchSerial);
	}

	@Override
	public RoomVO getRoomIdByRoomType(RoomVO search) {
		return roomDAO.getRoomIdByRoomType(search);
	}

	@Override
	public int deleteRoomFromAvailable(RoomAvailableVO roomAvailable) {
		return roomDAO.deleteRoomFromAvailable(roomAvailable);
	}

	@Override
	public RoomVO selectRoomByRoomType(RoomVO room) {
		return roomDAO.selectRoomByRoomType(room);
	}

	@Override
	public int insertNewRoom(RoomVO room) {
		return roomDAO.insertNewRoom(room);
	}

	@Override
	public void insertRoomBasic(int room_id) {
		roomDAO.insertRoomBasic(room_id);
	}

	@Override
	public void insertRoomAccess(int room_id) {
		roomDAO.insertRoomAccess(room_id);
	}

	@Override
	public void insertRoomService(int room_id) {
		roomDAO.insertRoomService(room_id);
	}

	@Override
	public void insertRoomBath(int room_id) {
		roomDAO.insertRoomBath(room_id);
	}

	@Override
	public void insertRoomFood(int room_id) {
		roomDAO.insertRoomFood(room_id);
	}

	@Override
	public void insertRoomMedia(int room_id) {
		roomDAO.insertRoomMedia(room_id);
	}

	@Override
	public void insertRoomView(int room_id) {
		roomDAO.insertRoomView(room_id);
	}

}