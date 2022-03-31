package com.booqueen.user.payment.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.user.payment.vo.PaymentVO;


@Repository
public class PaymentDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertReservation(PaymentVO paymentVO) throws DataAccessException{
		return sqlSession.insert("com.booqueen.user.payment.dao.paymentmapper.insertPayment", paymentVO);
	}
	
	public PaymentVO selectPayment(String merchant) throws DataAccessException{
		return sqlSession.selectOne("com.booqueen.user.payment.dao.paymentmapper.selectPayment", merchant);
	}
	
	public int updatePayment(PaymentVO paymentVO) throws DataAccessException{
		return sqlSession.update("com.booqueen.user.payment.dao.paymentmapper.updatePayment", paymentVO);
	}
	
}
