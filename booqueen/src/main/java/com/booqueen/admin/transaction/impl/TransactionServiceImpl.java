package com.booqueen.admin.transaction.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.reservation.ReservationVO;
import com.booqueen.admin.transaction.TransactionService;

@Service
public class TransactionServiceImpl implements TransactionService {
	
	@Autowired
	TransactionDAO transactionDAO;
	
	@Override
	public List<ReservationVO> selectTransactionHistory() {
		return transactionDAO.selectTransactionHistory();
	}
	
	@Override
	public List<ReservationVO> selectTransactionGraph() {
		return transactionDAO.selectTransactionGraph();
	}
	
	@Override
	public List<ReservationVO> selectTransactionDetail(int serialnumber) {
		return transactionDAO.selectTransactionDetail(serialnumber);
	}
	
	@Override
	public List<ReservationVO> selectTransactionDetailInfo(int serialnumber) {
		return transactionDAO.selectTransactionDetailInfo(serialnumber);
	}

}
