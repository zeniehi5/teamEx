package com.booqueen.admin.member.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.member.MemberVO;
@Repository("MemberDAO")
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}



	public MemberVO getAdminMember(MemberVO vo) {
		
		return sqlSessionTemplate.selectOne("MemberDAO.getAdminMember", vo);
	}
	
	
	
}
