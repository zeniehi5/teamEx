package com.booqueen.admin.faq;

import java.util.List;

import com.booqueen.admin.terms.TermsVO;

public interface FaqService {
	
	public List<FaqVO> getFaqList();
	public FaqVO selectFaqVO(int seq);
	public int insertFaqVO(FaqVO faqVO);
	public int updateFaqVO(FaqVO faqVO);
	public int deleteFaqVO(int seq);
}
