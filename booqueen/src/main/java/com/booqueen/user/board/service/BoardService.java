package com.booqueen.user.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.user.board.dao.BoardDAO;
import com.booqueen.user.board.vo.BoardVO;

@Service
public class BoardService {
	
	@Autowired
	BoardDAO boardDAO;
	
	public List<BoardVO> getBoardList(Integer serialnumber) {
		return boardDAO.getBoardList(serialnumber);
	}

	public int insertBoard(BoardVO vo) {
		return boardDAO.insertBoard(vo);
	}
}
