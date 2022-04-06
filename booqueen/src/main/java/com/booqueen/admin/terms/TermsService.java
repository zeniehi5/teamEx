package com.booqueen.admin.terms;

import java.util.List;

public interface TermsService {

	public List<TermsVO> termsList();
	public int insertTerms(TermsVO vo);

	

	int deleteTerms(int seq);

	
}
