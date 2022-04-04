package com.booqueen.admin.reservation;

import java.util.List;

public interface ReservationService {
	
	public List<ReservationVO> selectReservationList();
	public ReservationVO selectReservationDetail(int reservation_number);
	
}
