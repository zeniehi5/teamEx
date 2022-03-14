package com.booqueen.user.hotel.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.user.hotel.dao.HotelDAO;
import com.booqueen.user.hotel.vo.HotelImgVO;
import com.booqueen.user.hotel.vo.HotelMapVO;
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
	
	public List<HotelVO> getHotelListByStar(HashMap<String, Object> map) {
		return hotelDAO.getHotelListByStar(map);
	}
	
	public HotelVO getHotelBySerialnumber(Integer serialNumber) {
		return hotelDAO.getHotelBySerialnumber(serialNumber);
	}
	
	public HotelImgVO getHotelImg(Integer serialnumber) {
		return hotelDAO.getHotelImg(serialnumber);
	}
	
	public List<HotelVO> selectHotelByMap(HotelMapVO vo) {
		return hotelDAO.selectHotelByMap(vo);
	}
	
	public static boolean isEmpty(Object obj) {
        if (obj == null) { return true; }
        if ((obj instanceof String) && (((String)obj).trim().length() == 0)) { return true; } 
        if (obj instanceof Map) { return ((Map<?, ?>)obj).isEmpty(); }
        if (obj instanceof List) { return ((List<?>)obj).isEmpty(); }
        if (obj instanceof Object[]) { return (((Object[])obj).length == 0); } 

        return false;
    }
	
	public static boolean isNotEmpty(Object obj) {
		return !isEmpty(obj);
	}
	
	
}
