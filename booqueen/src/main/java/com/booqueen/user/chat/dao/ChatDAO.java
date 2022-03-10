package com.booqueen.user.chat.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.user.chat.vo.ChatVO;

@Repository
public class ChatDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<ChatVO> getChatList(ChatVO vo) throws DataAccessException{
		List<ChatVO> chatList = sqlSession.selectList("com.booqueen.user.chat.dao.chatmapper.selectchats", vo);
		return chatList;
	}
	
	public void insertChat(ChatVO vo) throws DataAccessException{
		sqlSession.insert("com.booqueen.user.chat.dao.chatmapper.insertchat", vo);
	}
}
