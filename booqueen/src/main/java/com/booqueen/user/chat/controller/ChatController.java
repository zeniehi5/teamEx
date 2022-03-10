package com.booqueen.user.chat.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.user.chat.service.ChatService;
import com.booqueen.user.chat.vo.ChatVO;

@Controller
public class ChatController {

	@Autowired
	ChatService chatService;
	
	@ResponseBody
	@RequestMapping(value="/chat.do", method = RequestMethod.POST)
	public List<ChatVO> showChat(@RequestBody ChatVO vo) {
	
		List<ChatVO> chatList = chatService.getChatList(vo);
		
		return chatList;
	}
	
	@ResponseBody
	@RequestMapping(value="/insertChat.do", method = RequestMethod.POST)
	public List<ChatVO> insertChat(@RequestBody ChatVO vo) {
	
		List<ChatVO> chatList = chatService.insertChat(vo);
		return chatList;
	}
	
}
