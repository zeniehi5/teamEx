package com.booqueen.user.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.user.board.service.BoardService;
import com.booqueen.user.board.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	/*
	@ResponseBody
	@RequestMapping(value="/getBoardList.do", method = RequestMethod.POST)
	public List<BoardVO> getBoardList(@RequestBody BoardVO vo) {
	
		List<BoardVO> boardList = boardService.getBoardList(vo);
		return boardList;
	}
	*/
	
	@ResponseBody
	@RequestMapping(value="/insertBoard.do", method = RequestMethod.POST)
	public int insertBoard(@RequestBody BoardVO vo) {
		
		int result = boardService.insertBoard(vo);
		
		return result;
	}
	
	
}
