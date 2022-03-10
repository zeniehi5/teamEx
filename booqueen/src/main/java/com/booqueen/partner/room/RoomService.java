package com.booqueen.partner.room;

public interface RoomService {

	public void addRoom(RoomVO vo);
	
	public RoomVO getIdBySerial(int serial);
}