package com.booqueen.user.room.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.user.hotel.vo.HotelAvailableVO;
import com.booqueen.user.reservation.vo.ReservationVO;
import com.booqueen.user.room.dao.RoomDAO;
import com.booqueen.user.room.vo.RoomAvailableVO;
import com.booqueen.user.room.vo.RoomVO;

@Service
public class RoomService {

	@Autowired
	RoomDAO roomDAO;

	public List<RoomVO> getRoomFacilities(HotelAvailableVO hotelAvailableVO) {
		return roomDAO.getRoomFacilities(hotelAvailableVO);
	}
	
	public List<RoomVO> getRoomDetail(ReservationVO reservationVO) {
		return roomDAO.getRoomDetail(reservationVO);
	}	
	
	public int deleteRoomAvailable(ReservationVO reservationVO) {
		return roomDAO.deleteRoomAvailable(reservationVO);
	}
	
	public String getDateDay(String date, String dateType) throws Exception {

		String day = "";

		SimpleDateFormat dateFormat = new SimpleDateFormat(dateType);
		Date nDate = dateFormat.parse(date);

		Calendar cal = Calendar.getInstance();
		cal.setTime(nDate);

		int dayNum = cal.get(Calendar.DAY_OF_WEEK);

		switch (dayNum) {
		case 1:
			day = "일";
			break;
		case 2:
			day = "월";
			break;
		case 3:
			day = "화";
			break;
		case 4:
			day = "수";
			break;
		case 5:
			day = "목";
			break;
		case 6:
			day = "금";
			break;
		case 7:
			day = "토";
			break;

		}

		return day;
	}
	
	public int insertRoomAvailable(ReservationVO reservationVO) {
		return roomDAO.insertRoomAvailable(reservationVO);
	}
	
	public int updateRoomAvailable(ReservationVO reservationVO) {
		return roomDAO.updateRoomAvailable(reservationVO);
	}
	
	public int updateRoomAvailablePlus(ReservationVO reservationVO) {
		return roomDAO.updateRoomAvailablePlus(reservationVO);
	}
	
	public RoomVO selectSimpleRoom(Integer room_id) {
		return roomDAO.selectSimpleRoom(room_id);
	}

	public List<RoomVO> selectRoomImgs(String type){
		return roomDAO.selectRoomImgs(type);
	}
	
	public List<RoomAvailableVO> selectRooms(Integer serialnumber){
		return roomDAO.selectRooms(serialnumber);
	}
	
	public List<RoomVO> selectRoomImgsBySerialnumber(Integer serialnumber){
		return roomDAO.selectRoomImgsBySerialnumber();
	}
}
