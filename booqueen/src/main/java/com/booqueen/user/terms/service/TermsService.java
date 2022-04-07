package com.booqueen.user.terms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.terms.TermsVO;
import com.booqueen.user.terms.dao.TermsDAO;

@Service
public class TermsService {
	
	@Autowired
	TermsDAO termsDAO;
	
	public List<TermsVO> getTermsList() {
		return termsDAO.getTermsList();
	}

}
