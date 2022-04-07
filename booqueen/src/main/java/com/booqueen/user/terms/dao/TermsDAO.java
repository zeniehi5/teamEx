package com.booqueen.user.terms.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.terms.TermsVO;

@Repository
public class TermsDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<TermsVO> getTermsList() {
		List<TermsVO> termsList = sqlSession.selectList("termsDAO.selectTerms");
		return termsList;
	}
	
}
