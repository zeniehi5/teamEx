package com.booqueen.admin.terms;

import java.util.List;

public interface TermsService {

	public List<TermsVO> getTermsList();
	public int insertTerms(TermsVO vo);
	public int updateTerms(TermsVO vo);
	public TermsVO getTerms(int seq);
	public int deleteTerms(int seq);

	
}
