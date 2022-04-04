package com.booqueen.admin.transaction.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.reservation.ReservationVO;

@Repository
public class TransactionDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<ReservationVO> selectTransactionHistory() {
		return sqlSessionTemplate.selectList("TransactionDAO.selectTransactionHistory");
	}
	
	public List<ReservationVO> selectTransactionGraph() {
		return sqlSessionTemplate.selectList("TransactionDAO.selectTransactionGraph");
	}
	
	public List<ReservationVO> selectTransactionDetail(int serialnumber) {
		return sqlSessionTemplate.selectList("TransactionDAO.selectTransactionDetail", serialnumber);
	}

}
