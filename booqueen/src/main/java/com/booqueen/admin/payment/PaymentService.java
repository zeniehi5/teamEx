package com.booqueen.admin.payment;

import java.util.List;

public interface PaymentService {
	
	public List<PaymentStatusVO> getPaymentStatusList();
	public int updatePaymentStatus(PaymentStatusVO paymentStatusVO);
	
}
