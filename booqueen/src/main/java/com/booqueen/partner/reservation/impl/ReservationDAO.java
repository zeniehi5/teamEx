package com.booqueen.partner.reservation.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.finance.InvoiceVO;
import com.booqueen.partner.reservation.PagingVO;
import com.booqueen.partner.reservation.ReservationDetailVO;
import com.booqueen.partner.reservation.ReservationVO;
import com.booqueen.partner.reservation.SearchVO;
import com.booqueen.partner.reservation.ReportUserVO;

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
		return sqlSessionTemplate.selectList("reservationDAO.selectReservationListByHotelSerial", serialnumber);
	}

	public ReservationDetailVO selectReservationDetailByRSVN(int reservation_number) {
		return sqlSessionTemplate.selectOne("reservationDAO.selectReservationDetailByRSVN", reservation_number);
	}

	public int getListCount(int serialnumber) {
		return sqlSessionTemplate.selectOne("reservationDAO.getListCount", serialnumber);
	}

	public List<ReservationVO> selectReservationListOnCondition(SearchVO search, PagingVO paging) {
		int offset = (paging.getCurrentPage() -1) * paging.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, paging.getBoardLimit());
		return sqlSessionTemplate.selectList("reservationDAO.selectReservationListOnCondition", search, rowBounds);
	}

	public ReservationVO selectReservationDetailByUserId(ReservationVO vo) {
		return sqlSessionTemplate.selectOne("reservationDAO.selectReservationDetailByUserId", vo);
	}

	public int updateReservationStatus(ReservationVO reservation) {
		return sqlSessionTemplate.update("reservationDAO.updateReservationStatus", reservation);
	}

	public int updateReservationStatusToComplete(ReservationVO reservation) {
		return sqlSessionTemplate.update("reservationDAO.updateReservationStatusToComplete", reservation);
	}

	public List<ReservationVO> selectCheckInListByHotelSerial(int serialnumber) {
		return sqlSessionTemplate.selectList("reservationDAO.selectCheckInListByHotelSerial", serialnumber);
	}

	public ReservationVO selectReservationByRSVN(SearchVO search) {
		return sqlSessionTemplate.selectOne("reservationDAO.selectReservationByRSVN", search);
	}
	
	public int updateReservationStatusToBilling(ReservationVO reservation) {
		return sqlSessionTemplate.update("reservationDAO.updateReservationStatusToBilling", reservation);
	}

	public int reportUser(ReportUserVO reportUser) {
		return sqlSessionTemplate.insert("reservationDAO.reportUser", reportUser);
	}

	public ReportUserVO selectReportedUser(ReportUserVO search) {
		return sqlSessionTemplate.selectOne("reservationDAO.selectReportedUser", search);
	}

	public List<InvoiceVO> selectInvoiceListByMonth(InvoiceVO invoice) {
		return sqlSessionTemplate.selectList("reservationDAO.selectInvoiceListByMonth", invoice);
	}
	
}
