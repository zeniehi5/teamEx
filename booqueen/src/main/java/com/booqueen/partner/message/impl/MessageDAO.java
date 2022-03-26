package com.booqueen.partner.message.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.user.chat.vo.ChatVO;

@Repository("messageDAO")
public class MessageDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	List<ChatVO> selectMessageListByHotelSerical(int serialnumber) {
		return sqlSessionTemplate.selectList("messageDAO.selectMessageListByHotelSerial", serialnumber);
	}

}
