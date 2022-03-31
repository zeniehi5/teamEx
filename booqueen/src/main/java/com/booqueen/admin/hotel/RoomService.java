package com.booqueen.admin.hotel;

import java.util.List;

import com.booqueen.partner.room.RoomVO;

public interface RoomService {

	List<RoomVO> selectRoomListByHotelSerial(int serialnumber);

	RoomDetailVO selectRoomDetailsByRoomId(int room_id);

}
