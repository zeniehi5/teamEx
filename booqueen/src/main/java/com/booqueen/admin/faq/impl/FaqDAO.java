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
		
		List<FaqVO> faqList = sqlSessionTemplate.selectList("FaqDAO.getFaq");
		
		return faqList; 
	}
}
