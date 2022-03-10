package com.booqueen.partner.room.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.room.RoomVO;

@Repository("roomDAO")
public class RoomDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void addRoom(RoomVO vo) {
		sqlSessionTemplate.insert("RoomDAO.addRoom", vo);
	}
	
	public RoomVO getIdBySerial(int serial) {
		return sqlSessionTemplate.selectOne("RoomDAO.getIdBySerial", serial);
	}

}