package com.booqueen.partner.member.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.member.MemberVO;

@Repository("memberDAO")
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
		
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public MemberVO getMember(MemberVO vo) {
		System.out.println("Mybatis로 getMember() 기능 처리");
		return (MemberVO) sqlSessionTemplate.selectOne("MemberDAO.getMember", vo);
	}
	
	public MemberVO getPassword(MemberVO vo) {
		System.out.println("Mybatis로 getPassword() 기능 처리");
		return (MemberVO) sqlSessionTemplate.selectOne("MemberDAO.getPassword", vo);
	}

	public void register(MemberVO vo) {
		System.out.println("Mybatis로 register() 기능 처리");
		sqlSessionTemplate.insert("MemberDAO.insertMember", vo);
	}

}

