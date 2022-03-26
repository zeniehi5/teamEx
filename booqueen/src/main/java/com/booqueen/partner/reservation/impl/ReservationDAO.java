package com.booqueen.partner.reservation.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.reservation.PagingVO;
import com.booqueen.partner.reservation.ReservationDetailVO;
import com.booqueen.partner.reservation.ReservationVO;
import com.booqueen.partner.reservation.SearchVO;

@Repository("reservationDAO")
public class ReservationDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public List<ReservationVO> selectReservationPagingByHotelSerial(int serialnumber, PagingVO paging) {
		int offset = (paging.getCurrentPage() - 1) * paging.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, paging.getBoardLimit());
		return sqlSessionTemplate.selectList("reservationDAO.selectReservationPagingByHotelSerial", serialnumber, rowBounds);
	}
	
	public List<ReservationVO> selectReservationListByHotelSerial(int serialnumber) {
		return sqlSessionTemplate.selectList("reservationDAO.selectReservationListByHotelSerial");
	}

	public ReservationDetailVO selectReservationDetailByRSVN(int reservation_number) {
		return sqlSessionTemplate.selectOne("reservationDAO.selectReservationDetailByRSVN", reservation_number);
	}

	public int getListCount() {
		return sqlSessionTemplate.selectOne("reservationDAO.getListCount");
	}

	public List<ReservationVO> selectReservationListOnCondition(SearchVO search, PagingVO paging) {
		int offset = (paging.getCurrentPage() -1) * paging.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, paging.getBoardLimit());
		return sqlSessionTemplate.selectList("reservationDAO.selectReservationListOnCondition", search, rowBounds);
	}

	public ReservationVO selectReservationDetailByUserId(ReservationVO vo) {
		return sqlSessionTemplate.selectOne("reservationDAO.selectReservationDetailByUserId", vo);
	}
	
}
