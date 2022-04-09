package com.booqueen.partner.reservation.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.partner.finance.InvoiceVO;
import com.booqueen.partner.reservation.PagingVO;
import com.booqueen.partner.reservation.ReservationDetailVO;
import com.booqueen.partner.reservation.ReservationService;
import com.booqueen.partner.reservation.ReservationVO;
import com.booqueen.partner.reservation.SearchVO;
import com.booqueen.partner.reservation.ReportUserVO;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationDAO reservationDAO;
	
	@Override
	public List<ReservationVO> selectReservationPagingByHotelSerial(int serialnumber, PagingVO paging) {
		return reservationDAO.selectReservationPagingByHotelSerial(serialnumber, paging);
	}
	
	@Override
	public ReservationDetailVO selectReservationDetailByRSVN(int reservation_number) {
		return reservationDAO.selectReservationDetailByRSVN(reservation_number);
	}

	@Override
	public int getListCount(int serialnumber) {
		return reservationDAO.getListCount(serialnumber);
	}

	@Override
	public List<ReservationVO> selectReservationListByHotelSerial(int serialnumber) {
		return reservationDAO.selectReservationListByHotelSerial(serialnumber);
	}

	@Override
	public List<ReservationVO> selectReservationListOnCondition(SearchVO search, PagingVO paging) {
		return reservationDAO.selectReservationListOnCondition(search, paging);
	}

	@Override
	public ReservationVO selectReservationDetailByUserId(ReservationVO vo) {
		return reservationDAO.selectReservationDetailByUserId(vo);
	}

	@Override
	public int updateCheckInStatus(ReservationVO reservation) {
		return reservationDAO.updateReservationStatus(reservation);
	}

	@Override
	public int updateCheckoutStatus(ReservationVO reservation) {
		return reservationDAO.updateReservationStatusToComplete(reservation);
	}

	@Override
	public List<ReservationVO> selectCheckInListByHotelSerial(int serialnumber) {
		return reservationDAO.selectCheckInListByHotelSerial(serialnumber);
	}

	@Override
	public ReservationVO selectReservationByRSVN(SearchVO search) {
		return reservationDAO.selectReservationByRSVN(search);
	}

	@Override
	public int updateReservationStatusToBilling(ReservationVO reservation) {
		return reservationDAO.updateReservationStatusToBilling(reservation);
	}

	@Override
	public int reportUser(ReportUserVO reportUser) {
		return reservationDAO.reportUser(reportUser);
	}

	@Override
	public ReportUserVO selectReportedUser(ReportUserVO search) {
		return reservationDAO.selectReportedUser(search);
	}

	@Override
	public List<InvoiceVO> selectInvoiceListByMonth(InvoiceVO invoice) {
		return reservationDAO.selectInvoiceListByMonth(invoice);
	}

	@Override
	public List<InvoiceVO> selectInvoiceListByHotelSerial(int serialnumber) {
		return reservationDAO.selectInvoiceListByHotelSerial(serialnumber);
	}

}
