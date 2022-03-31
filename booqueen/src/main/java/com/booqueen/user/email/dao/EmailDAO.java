package com.booqueen.user.email.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.user.email.vo.EmailVO;

@Repository
public class EmailDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public EmailVO getReservationInfo(String merchant) throws DataAccessException{
		return sqlSession.selectOne("com.booqueen.user.email.dao.emailmapper.getReservationInfo", merchant);
	}
}
