package com.booqueen.user.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.user.board.vo.BoardVO;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<BoardVO> getBoardList(Integer serialnumber) throws DataAccessException{
		List<BoardVO> boardList = sqlSession.selectList("com.booqueen.user.board.dao.boardmapper.selectboard", serialnumber);
		return boardList;
	}
	
	public int insertBoard(BoardVO vo) throws DataAccessException{
		int result = sqlSession.insert("com.booqueen.user.board.dao.boardmapper.insertBoard", vo);
		return result;
	}
	

}
