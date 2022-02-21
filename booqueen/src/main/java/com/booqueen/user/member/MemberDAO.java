package com.booqueen.user.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public MemberVO getMember(MemberVO vo) throws DataAccessException{
		return (MemberVO) sqlSession.selectOne("sql.sel", vo);
	}
	
	public int insertMember(MemberVO vo) throws DataAccessException{
		return sqlSession.insert("sql.insertMember", vo);
	}
	
	public int updateMember(MemberVO vo) throws DataAccessException{
		return sqlSession.update("sql.updateMember", vo);
	}

	public int deleteMember(MemberVO vo) throws DataAccessException{
		return sqlSession.delete("sql.deleteMember", vo);
	}
}
 