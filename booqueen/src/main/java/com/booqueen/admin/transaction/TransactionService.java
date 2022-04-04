package com.booqueen.admin.transaction;

import java.util.List;

import com.booqueen.admin.reservation.ReservationVO;

public interface TransactionService {
	
	public List<ReservationVO> selectTransactionHistory();
	public List<ReservationVO> selectTransactionGraph();
	public List<ReservationVO> selectTransactionDetail(int serialnumber);
	
}
