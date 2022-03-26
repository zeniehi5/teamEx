package com.booqueen.admin.terms;

import java.util.List;

public interface TermsService {

	int insertTerms(TermsVO vo);

	List<TermsVO> termsList();

	int deleteTerms(int seq);

	
}
