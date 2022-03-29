package com.booqueen.partner.message.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.partner.message.InquiryVO;
import com.booqueen.partner.message.MessageService;
import com.booqueen.user.chat.vo.ChatVO;

@Service
public class MessageServiceImpl implements MessageService {
	
	@Autowired
	private MessageDAO messageDAO;

	@Override
	public List<ChatVO> selectMessageListByHotelSerial(int serialnumber) {
		return messageDAO.selectMessageListByHotelSerical(serialnumber);
	}

	@Override
	public int insertInquiryAnswer(InquiryVO inquiry) {
		return messageDAO.insertInquiryAnswer(inquiry);
	}

	@Override
	public int updateInquiryQuestion(InquiryVO inquiry) {
		return messageDAO.updateInquiryQuestion(inquiry);
	}

	@Override
	public int selectMessageCount(int serialnumber) {
		return messageDAO.selectMessageCount(serialnumber);
	}

}
