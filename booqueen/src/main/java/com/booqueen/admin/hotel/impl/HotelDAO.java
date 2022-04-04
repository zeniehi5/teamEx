package com.booqueen.admin.hotel.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.hotel.HotelDetailVO;
import com.booqueen.admin.reservation.ReservationVO;

@Repository("HotelDAO")
public class HotelDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	public List<com.booqueen.admin.hotel.HotelVO> getHotelMember() {
		List<com.booqueen.admin.hotel.HotelVO> hotelList = sqlSessionTemplate.selectList("HotelDAO.selectHotel");
		 return hotelList;
	}

	public HotelDetailVO selectHotelDetail(int serialnumber) {
		return sqlSessionTemplate.selectOne("HotelDAO.selectHotelDetail", serialnumber);
	}
	
}
