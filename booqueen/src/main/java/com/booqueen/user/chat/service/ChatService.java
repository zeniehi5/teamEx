package com.booqueen.user.chat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.user.chat.dao.ChatDAO;
import com.booqueen.user.chat.vo.ChatVO;

@Service
public class ChatService {
	
	@Autowired
	ChatDAO chatDAO;
	
	public List<ChatVO> getChatList(ChatVO vo){
		return chatDAO.getChatList(vo);
	}
	
	public List<ChatVO> insertChat(ChatVO vo) {
		chatDAO.insertChat(vo);
		return chatDAO.getChatList(vo);
	}
}
