package com.booqueen.admin.payment.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.payment.PaymentService;
import com.booqueen.admin.payment.PaymentStatusVO;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private PaymentDAO paymentDAO;
	
	@Override
	public List<PaymentStatusVO> getPaymentStatusList() {
		return paymentDAO.getPaymentStatusList();
	}
	
	@Override
	public int updatePaymentStatus(PaymentStatusVO paymentStatusVO) {
		return paymentDAO.updatePaymentStatus(paymentStatusVO);
	}
	
	
}
