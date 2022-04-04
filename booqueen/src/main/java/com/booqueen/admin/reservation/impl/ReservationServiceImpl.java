package com.booqueen.admin.reservation.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.reservation.ReservationService;
import com.booqueen.admin.reservation.ReservationVO;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	ReservationDAO reservationDAO;
	
	@Override
	public List<ReservationVO> selectReservationList() {
		return reservationDAO.selectReservationList();
	}
	
	@Override
	public ReservationVO selectReservationDetail(int reservation_number) {
		return reservationDAO.selectReservationDetail(reservation_number);
	}
	
}
