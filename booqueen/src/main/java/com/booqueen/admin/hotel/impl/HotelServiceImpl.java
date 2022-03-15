package com.booqueen.admin.hotel.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.hotel.HotelService;

@Service("HotelService")
public class HotelServiceImpl implements HotelService {
	
	@Autowired
	private HotelDAO hotelDAO;
	
	@Override
	public List<com.booqueen.admin.hotel.HotelVO> getHotelMember(){
		return hotelDAO.getHotelMember();
	}

}
