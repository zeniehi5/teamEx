package com.booqueen.admin.faq.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.faq.FaqVO;

@Service 
public class FaqServiceImpl {
	
	@Autowired
	private FaqDAO faqDAO;
	
//	@Override
//	public List<FaqVO> getFaqList() {
//		return faqDAO.getFaqList();
//	}
}
