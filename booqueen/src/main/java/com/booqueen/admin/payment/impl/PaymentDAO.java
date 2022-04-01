package com.booqueen.admin.payment.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.payment.PaymentStatusVO;

@Repository
public class PaymentDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	public List<PaymentStatusVO> getPaymentStatusList() {
		List<PaymentStatusVO> paymentStatusList = sqlSessionTemplate.selectList("PaymentStatusDAO.getPaymentStatusList");
		 return paymentStatusList;
	}
	
	public int updatePaymentStatus(PaymentStatusVO paymentStatusVO) {
		return sqlSessionTemplate.update("PaymentStatusDAO.updatePaymentStatus", paymentStatusVO);
	}
	
}
