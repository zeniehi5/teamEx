package com.booqueen.admin.terms;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.booqueen.admin.terms.impl.TermsServiceImpl;

@Controller
public class TermsController {

	@Autowired
	private TermsService termsService;
	@Autowired
	private TermsServiceImpl termsServiceImpl;
	
	@RequestMapping(value = "/insertTerms.mdo", method = RequestMethod.POST)
	public String insertTerms(TermsVO vo, HttpServletResponse response, Model model) throws IOException {
		
		int result = 0;
		result = termsService.insertTerms(vo);
		List<TermsVO> termsList = termsServiceImpl.termsList();
		response.setContentType("text/html; charset=utf-8");
	      PrintWriter out = response.getWriter();
	      
	      if(result == 0) {
	         out.println("<script>alert('다시 입력해주세요.')</script>");
	         out.flush();
	         return "redirect:/termsUpload.mdo";
	      } else {
	    	  
	         out.println("<script>alert('약관이 정상적으로 등록되었습니다.')</script>");
	         out.flush();
	         model.addAttribute("termsList", termsList);
	         return "terms";
	      }
	}
	@RequestMapping(value = "/termsCorrection.mdo", method=RequestMethod.GET)
	public String getTerms(@RequestParam("seq")int seq, Model model, HttpSession session) {
		
		
		TermsVO vo = termsServiceImpl.getTerms(seq);
		model.addAttribute("TermsVO", vo);
		return "termsCorrection";
	}
	@RequestMapping(value = "/updateTerms.mdo", method=RequestMethod.POST)
	public String updateTerms(Model model, TermsVO vo, HttpServletResponse response) throws Exception {
		int result = 0;
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		result = termsServiceImpl.updateTerms(vo);
		if(result == 1) {
			out.println("<script>alert('수정 완료')</script>");
			out.flush();
			List<TermsVO> termsList = termsServiceImpl.termsList();
			if(termsList != null) {
				
				model.addAttribute("termsList", termsList);
			}
			return "terms";
		} else 
			out.print("<script>alert('수정 완료')</script>");
			out.flush();
		return "redirect:termsCorrection.mdo";
	}
	
	@RequestMapping(value = "/deleteTerms.mdo", method=RequestMethod.GET)
	public String deleteTerms(@RequestParam("seq") String seq) throws Exception{
		
		int seq_parse = Integer.parseInt(seq);
		int deleteTerms = termsServiceImpl.deleteTerms(seq_parse);
		
		return "redirect:terms.mdo";
	}
	
}
