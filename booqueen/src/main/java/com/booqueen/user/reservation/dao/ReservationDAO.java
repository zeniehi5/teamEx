package com.booqueen.user.reservation.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.user.reservation.vo.ReservationVO;

@Repository
public class ReservationDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertReservation(ReservationVO reservationVO) throws DataAccessException{
		return sqlSession.insert("com.booqueen.user.reservation.dao.reservationmapper.insertReservation", reservationVO);
	}
	
	public List<ReservationVO> selectReservation(String userid) throws DataAccessException{
		return sqlSession.selectList("com.booqueen.user.reservation.dao.reservationmapper.selectReservationList", userid);
	}
	
	public ReservationVO getReservation(Integer reservation_number) throws DataAccessException{
		return sqlSession.selectOne("com.booqueen.user.reservation.dao.reservationmapper.selectReservation", reservation_number);
	}
	
	public int cancelReservation(ReservationVO reservationVO) throws DataAccessException{
		return sqlSession.update("com.booqueen.user.reservation.dao.reservationmapper.cancelReservation", reservationVO);
	}
	
	public ReservationVO selectReservationByMerchant(String merchant) throws DataAccessException{
		return sqlSession.selectOne("com.booqueen.user.reservation.dao.reservationmapper.selectReservationByMerchant", merchant);
	}
	
	public int deleteDuplicatedReservation() throws DataAccessException{
		return sqlSession.delete("com.booqueen.user.reservation.dao.reservationmapper.deleteDuplicatedReservation");
	}
}
