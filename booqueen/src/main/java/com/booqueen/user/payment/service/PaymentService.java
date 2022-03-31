package com.booqueen.user.payment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.user.payment.dao.PaymentDAO;
import com.booqueen.user.payment.vo.PaymentVO;

@Service
public class PaymentService {

	@Autowired
	PaymentDAO paymentDAO;
	
	public int insertReservation(PaymentVO paymentVO) {
		return paymentDAO.insertReservation(paymentVO);
	}
	
	public PaymentVO selectPayment(String merchant) {
		return paymentDAO.selectPayment(merchant);
	}
	
	public int updatePayment(PaymentVO paymentVO) {
		return paymentDAO.updatePayment(paymentVO);
	}
}
