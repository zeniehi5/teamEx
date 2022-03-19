package com.booqueen.user.hotel.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.hotel.HotelPolicyVO;
import com.booqueen.user.hotel.vo.HotelAvailableVO;
import com.booqueen.user.hotel.vo.HotelImgVO;
import com.booqueen.user.hotel.vo.HotelMapVO;
import com.booqueen.user.hotel.vo.HotelVO;


@Repository
public class HotelDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<HotelVO> getHotelListByCity(String city) throws DataAccessException{
		List<HotelVO> hotelListByCity = sqlSession.selectList("com.booqueen.user.hotel.dao.hotelmapper.selectHotels", city);
		return hotelListByCity;
	}
	
	public List<HotelVO> getHotelListWithImgByCity(HotelAvailableVO vo) throws DataAccessException{
		List<HotelVO> hotelListWithImg = sqlSession.selectList("com.booqueen.user.hotel.dao.hotelmapper.selectHotelWithImg", vo);
		return hotelListWithImg;
	}
	
	public List<HotelVO> getUnavailableHotelListWithImgByCity(HotelAvailableVO vo) throws DataAccessException{
		List<HotelVO> hotelListWithImg = sqlSession.selectList("com.booqueen.user.hotel.dao.hotelmapper.selectUnavailableHotelWithImg", vo);
		return hotelListWithImg;
	}
	
	public List<HotelVO> getHotelListByStar(HashMap<String, Object> map) throws DataAccessException{
		List<HotelVO> hotelListByStar = sqlSession.selectList("com.booqueen.user.hotel.dao.hotelmapper.selectFilterByStar", map);
		return hotelListByStar;
	}
	
	public HotelVO getHotelBySerialnumber(Integer serialNumber) throws DataAccessException{
		HotelVO vo = sqlSession.selectOne("com.booqueen.user.hotel.dao.hotelmapper.selectHotel", serialNumber);
		return vo;
	}
	
	public HotelImgVO getHotelImg(Integer serialnumber) throws DataAccessException{
		HotelImgVO vo = sqlSession.selectOne("com.booqueen.user.hotel.dao.hotelmapper.selectHotelImg", serialnumber);
		return vo;
	}
	
	public List<HotelVO> selectHotelByMap(HotelMapVO vo) throws DataAccessException{
		List<HotelVO> hotelListByMap = sqlSession.selectList("com.booqueen.user.hotel.dao.hotelmapper.selectHotelByMap", vo);
		return hotelListByMap;
	}
	
	public HotelPolicyVO selectHotelPolicy(Integer serialNumber) throws DataAccessException{
		HotelPolicyVO vo = sqlSession.selectOne("com.booqueen.user.hotel.dao.hotelmapper.selectHotelPolicy", serialNumber);
		return vo;
	}
	
}
