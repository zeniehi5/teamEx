package com.booqueen.admin.faq.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.faq.FaqService;
import com.booqueen.admin.faq.FaqVO;

@Service
public class FaqServiceImpl implements FaqService {
	
	@Autowired
	private FaqDAO faqDAO;
	
	@Override
	public List<FaqVO> getFaqList() {
		return faqDAO.getFaqList();
	}
	
	@Override
	public FaqVO selectFaqVO(int seq) {
		return faqDAO.selectFaqVO(seq);
	}
	
	@Override
	public int insertFaqVO(FaqVO faqVO) {
		return faqDAO.insertFaqVO(faqVO);
	}
	
	@Override
	public int updateFaqVO(FaqVO faqVO) {
		return faqDAO.updateFaqVO(faqVO);
	}
	
	@Override
	public int deleteFaqVO(int seq) {
		return faqDAO.deleteFaqVO(seq);
	}
	
}
