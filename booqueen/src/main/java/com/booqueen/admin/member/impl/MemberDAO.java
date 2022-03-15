package com.booqueen.admin.member.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("MemberDAO")
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}



	public com.booqueen.admin.member.MemberVO getAdminMember(com.booqueen.admin.member.MemberVO vo) {
		
		return sqlSessionTemplate.selectOne("MemberDAO.getAdminMember", vo);
	}
	
	
	public List<com.booqueen.user.member.MemberVO> getUserMember() {
		
		 List<com.booqueen.user.member.MemberVO> userList = sqlSessionTemplate.selectList("MemberDAO.selectUser");
		 return userList;
	}
	
	
}
