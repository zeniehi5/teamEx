package com.booqueen.admin.faq.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.faq.FaqVO;

@Repository("faqDAO")
public class FaqDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	public List<FaqVO> getFaqList() {
		List<FaqVO> faqList = sqlSessionTemplate.selectList("faqDAO.getFaqList");
		return faqList; 
	}
	
	public FaqVO selectFaqVO(int seq) {
		return sqlSessionTemplate.selectOne("faqDAO.selectFaqVO", seq);
	}
	
	public int insertFaqVO(FaqVO faqVO) {
		return sqlSessionTemplate.insert("faqDAO.insertFaqVO", faqVO);
	}
	
	public int updateFaqVO(FaqVO faqVO) {
		return sqlSessionTemplate.update("faqDAO.updateFaqVO", faqVO);
	}
	
	public int deleteFaqVO(int seq) {
		return sqlSessionTemplate.delete("faqDAO.deleteFaqVO", seq);
	}
}
