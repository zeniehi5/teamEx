package com.booqueen.user.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.user.member.vo.MemberProfileVO;

@Repository
public class MemberProfileDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public MemberProfileVO getProfile(MemberProfileVO file) throws DataAccessException{
		return (MemberProfileVO) sqlSession.selectOne("com.booqueen.user.member.dao.memberProfilemapper.selectProfile", file);
	}
	
	public MemberProfileVO getProfileByUserid(String userid) throws DataAccessException{
		return (MemberProfileVO) sqlSession.selectOne("com.booqueen.user.member.dao.memberProfilemapper.selectProfileByUserid", userid);
	}
	
	public int insertProfile(MemberProfileVO file) throws DataAccessException{
		return sqlSession.insert("com.booqueen.user.member.dao.memberProfilemapper.insertProfile", file);
	}
	
	public int deleteProfile(MemberProfileVO file) throws DataAccessException{
		return sqlSession.delete("com.booqueen.user.member.dao.memberProfilemapper.deleteProfile", file);
	}
	
	
}
