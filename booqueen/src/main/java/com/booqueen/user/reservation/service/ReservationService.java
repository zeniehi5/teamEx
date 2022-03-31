package com.booqueen.user.reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.booqueen.user.reservation.dao.ReservationDAO;
import com.booqueen.user.reservation.vo.ReservationVO;

@Service
public class ReservationService {

	@Autowired
	ReservationDAO reservationDAO;
	
	public int insertReservation(ReservationVO reservationVO){
		return reservationDAO.insertReservation(reservationVO);
	}
	
	public List<ReservationVO> selectReservation(String userid){
		return reservationDAO.selectReservation(userid);
	}
	
	public ReservationVO getReservation(Integer reservation_number){
		return reservationDAO.getReservation(reservation_number);
	}
	
	public int cancelReservation(ReservationVO reservationVO){
		return reservationDAO.cancelReservation(reservationVO);
	}
	
	public List<ReservationVO> selectReservationByMerchant(String merchant) {
		return reservationDAO.selectReservationByMerchant(merchant);
	}

	public int deleteDuplicatedReservation() {
		return reservationDAO.deleteDuplicatedReservation();
	}
	
}
