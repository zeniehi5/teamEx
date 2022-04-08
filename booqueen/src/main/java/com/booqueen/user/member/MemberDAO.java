package com.booqueen.user.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.faq.FaqVO;
import com.booqueen.user.member.vo.MemberProfileVO;
import com.booqueen.user.member.vo.ReasonVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public MemberVO getMember(MemberVO vo) throws DataAccessException{
		return (MemberVO) sqlSession.selectOne("sql.sel", vo);
	}
	
	public MemberVO getMemberByUserid(String userid) throws DataAccessException{
		return (MemberVO) sqlSession.selectOne("sql.selectMemberByUserid", userid);
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
	
	public int deleteProfile(MemberProfileVO vo) throws DataAccessException{
		return sqlSession.delete("com.booqueen.user.member.dao.memberProfilemapper.deleteProfile", vo);
	}
	
	public int changePasswd(MemberVO vo) throws DataAccessException{
	    return sqlSession.update("sql.changePasswd", vo);
	}
	 
	public MemberVO selectMemberByKakao(MemberVO vo) throws DataAccessException{
		return (MemberVO) sqlSession.selectOne("sql.selectMemberByKakao", vo);
	}
	
	public int insertMemberByKakao(MemberVO vo) throws DataAccessException{
		return sqlSession.insert("sql.insertMemberByKakao", vo);
	}
	
	public int insertReason(ReasonVO vo) throws DataAccessException{
		return sqlSession.insert("com.booqueen.user.member.dao.reasonmapper.insertReason", vo);
	}
	
	public List<FaqVO> getFaqList() {
		List<FaqVO> faqList = sqlSession.selectList("faqDAO.getFaqList");
		return faqList; 
	}
}
 