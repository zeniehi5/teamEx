package com.booqueen.admin.reservation.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.reservation.ReservationVO;

@Repository
public class ReservationDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<ReservationVO> selectReservationList() {
		return sqlSessionTemplate.selectList("ReservationDAO.selectReservationList");
	}
	
	public ReservationVO selectReservationDetail(int reservation_number) {
		return sqlSessionTemplate.selectOne("ReservationDAO.selectReservationDetail", reservation_number);
	}

}
