package com.booqueen.partner.reservation.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.partner.reservation.PagingVO;
import com.booqueen.partner.reservation.ReservationDetailVO;
import com.booqueen.partner.reservation.ReservationService;
import com.booqueen.partner.reservation.ReservationVO;
import com.booqueen.partner.reservation.SearchVO;

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
	public int getListCount() {
		return reservationDAO.getListCount();
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

}
