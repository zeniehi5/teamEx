package com.booqueen.admin.terms.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.terms.TermsService;
import com.booqueen.admin.terms.TermsVO;

@Service
public class TermsServiceImpl implements TermsService {

	@Autowired
	private TermsDAO termsDAO;

	@Override
	public int insertTerms(TermsVO vo) {
		
		return termsDAO.insertTerms(vo);
	}
	
	
	@Override
	public List<com.booqueen.admin.terms.TermsVO> termsList() {
		return termsDAO.getTermsList();
	}


	public TermsVO getTerms(int seq) {
		
		return termsDAO.getTerms(seq);
	}


	public int updateTerms(TermsVO vo) {
		
		return termsDAO.updateTerms(vo);
	}


	public int deleteTerms(int seq) {
		
		return termsDAO.deleteTerms(seq);
	}

}
