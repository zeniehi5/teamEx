package com.booqueen.user.terms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.booqueen.admin.terms.TermsVO;
import com.booqueen.user.terms.service.TermsService;

@Controller
public class TermsController {
	
	@Autowired
	TermsService termsService;
	
	@RequestMapping(value = "/terms.do")
	public String getTerms(Model model) throws Exception {
		
		List<TermsVO> termsList = termsService.getTermsList();
		model.addAttribute("termsList", termsList);
		
		return "terms";
	}
	
}
