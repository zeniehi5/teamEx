package com.booqueen.admin.terms.impl;



import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.terms.TermsVO;
import com.booqueen.partner.hotel.HotelImageVO;

@Repository("termsDAO")
public class TermsDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public List<com.booqueen.admin.terms.TermsVO> getTermsList() {
		List<com.booqueen.admin.terms.TermsVO> termsList = sqlSessionTemplate.selectList("termsDAO.selectTerms");
		return termsList;
	}
	
	public int insertTerms(TermsVO vo) {
		return sqlSessionTemplate.insert("termsDAO.insertTerms", vo);
	}
	
	public int updateTerms(TermsVO vo) throws DataAccessException{
		return sqlSessionTemplate.update("termsDAO.updateTerms", vo);
	}
	
	public TermsVO getTerms(int seq) {
		return sqlSessionTemplate.selectOne("termsDAO.getTerms", seq);
	}
	
	public int deleteTerms(int seq) throws DataAccessException{
		return sqlSessionTemplate.delete("termsDAO.deleteTerms", seq);
	}
	
}
