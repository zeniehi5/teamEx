package com.booqueen.user.hotel.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.booqueen.partner.hotel.HotelPolicyVO;
import com.booqueen.user.hotel.dao.HotelDAO;
import com.booqueen.user.hotel.vo.CityVO;
import com.booqueen.user.hotel.vo.HotelAvailableVO;
import com.booqueen.user.hotel.vo.HotelImgVO;
import com.booqueen.user.hotel.vo.HotelMapVO;
import com.booqueen.user.hotel.vo.HotelVO;
import com.booqueen.user.hotel.vo.RecentSearchVO;

@Service
public class HotelService {

	@Autowired
	HotelDAO hotelDAO;
	
	public List<HotelVO> getHotelListByCity(String city) {
		return hotelDAO.getHotelListByCity(city);
	}
	
	public List<HotelVO> getHotelListWithImgByCity(HotelAvailableVO vo) {
		return hotelDAO.getHotelListWithImgByCity(vo);
	}
	
	public List<HotelVO> getUnavailableHotelListWithImgByCity(HotelAvailableVO vo) {
		return hotelDAO.getUnavailableHotelListWithImgByCity(vo);
	}
	
	public List<HotelVO> getHotelListByStar(HashMap<String, Object> map) {
		return hotelDAO.getHotelListByStar(map);
	}
	
	public List<HotelVO> getUnavailableHotelListByStar(HashMap<String, Object> map) {
		return hotelDAO.getUnavailableHotelListByStar(map);
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
	
	public HotelPolicyVO selectHotelPolicy(Integer serialNumber) {
		return hotelDAO.selectHotelPolicy(serialNumber);
	}
	
	public List<String> getAutocompleteCity() {
		return hotelDAO.getAutocompleteCity();
	}
	
	public List<Integer> getHotelByDate(HotelAvailableVO hotelavailableVO) {
		return hotelDAO.getHotelByDate(hotelavailableVO);
	}
	
	public CityVO getCityLocation(String city) {
		return hotelDAO.getCityLocation(city);
	}
  
  // 최근 검색
	public int insertRecentSearch(RecentSearchVO recentSearchVO) {
		return hotelDAO.insertRecentSearch(recentSearchVO);
	}
	
	public List<RecentSearchVO> selectRecentSearch(String userid) {
		return hotelDAO.selectRecentSearch(userid);
	}
  
}
