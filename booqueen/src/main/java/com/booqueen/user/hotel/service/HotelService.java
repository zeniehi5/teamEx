package com.booqueen.user.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.user.hotel.dao.HotelDAO;
import com.booqueen.user.hotel.vo.HotelImgVO;
import com.booqueen.user.hotel.vo.HotelVO;

@Service
public class HotelService {

	@Autowired
	HotelDAO hotelDAO;
	
	public List<HotelVO> getHotelListByCity(String city) {
		return hotelDAO.getHotelListByCity(city);
	}
	
	public List<HotelVO> getHotelListWithImgByCity(String city) {
		return hotelDAO.getHotelListWithImgByCity(city);
	}
	
	public List<HotelVO> getHotelListByStar(String[] star) {
		return hotelDAO.getHotelListByStar(star);
	}
	
	public HotelVO getHotelBySerialnumber(Integer serialNumber) {
		return hotelDAO.getHotelBySerialnumber(serialNumber);
	}
	
	public HotelImgVO getHotelImg(Integer serialnumber) {
		return hotelDAO.getHotelImg(serialnumber);
	}
	
}
