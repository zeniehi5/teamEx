package com.booqueen.partner.message.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.message.InquiryVO;
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

	public int insertInquiryAnswer(InquiryVO inquiry) {
		return sqlSessionTemplate.insert("messageDAO.insertInquiryAnswer", inquiry);
	}

	public int updateInquiryQuestion(InquiryVO inquiry) {
		return sqlSessionTemplate.update("messageDAO.updateInquiryQuestion", inquiry);
	}

	public int selectMessageCount(int serialnumber) {
		return sqlSessionTemplate.selectOne("messageDAO.selectMessageCount", serialnumber);
	}

}
