package com.booqueen.partner.message.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
