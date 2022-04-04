package com.booqueen.admin.hotel.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.hotel.HotelDetailVO;
import com.booqueen.admin.hotel.HotelService;
import com.booqueen.admin.reservation.ReservationVO;

@Service("HotelService")
public class HotelServiceImpl implements HotelService {
	
	@Autowired
	private HotelDAO hotelDAO;
	
	@Override
	public List<com.booqueen.admin.hotel.HotelVO> getHotelMember(){
		return hotelDAO.getHotelMember();
	}
	
	@Override
	public HotelDetailVO selectHotelDetail(int serialnumber) {
		return hotelDAO.selectHotelDetail(serialnumber);
	}
	

}
