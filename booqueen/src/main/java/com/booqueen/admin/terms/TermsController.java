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
	private TermsServiceImpl termsServiceImpl;
	
	@RequestMapping(value = "/terms.mdo", method=RequestMethod.GET)
	public String terms(HttpSession session, Model model) {
		List<TermsVO> termsList = termsServiceImpl.getTermsList();
		if(termsList != null) {
			model.addAttribute("termsList", termsList);
		}
		return "terms";
	}
	
	@RequestMapping(value = "/termsUpload.mdo", method=RequestMethod.GET)
	public String termsUpload(HttpSession session) {
		return "termsUpload";
	}
	
	@RequestMapping(value = "/insertTerms.mdo", method = RequestMethod.POST)
	public String insertTerms(TermsVO vo, HttpServletResponse response, Model model) throws IOException {
		
		int result = 0;
		result = termsServiceImpl.insertTerms(vo);
		List<TermsVO> termsList = termsServiceImpl.getTermsList();
		response.setContentType("text/html; charset=utf-8");
	      PrintWriter out = response.getWriter();
	      
	      if(result == 0) {
	         out.println("<script>alert('이용약관 등록에 실패하였습니다. 다시 시도해 주시기 바랍니다.')</script>");
	         out.flush();
	         return "redirect:/termsUpload.mdo";
	      } else {
	         out.println("<script>alert('신규 이용약관을 성공적으로 등록하였습니다.')</script>");
	         out.flush();
	         model.addAttribute("termsList", termsList);
	         return "terms";
	      }
	}
	
	@RequestMapping(value = "/termsCorrection.mdo", method=RequestMethod.GET)
	public String getTerms(@RequestParam("seq")int seq, Model model, HttpSession session) {
		
		TermsVO vo = termsServiceImpl.getTerms(seq);
		model.addAttribute("termsVO", vo);
		
		return "termsCorrection";
	}
	
	@RequestMapping(value = "/updateTerms.mdo", method=RequestMethod.POST)
	public String updateTerms(Model model, TermsVO vo, HttpServletResponse response) throws Exception {
		
		int result = 0;
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		result = termsServiceImpl.updateTerms(vo);
		
		if (result > 0) {
			out.println("<script>alert('이용약관이 성공적으로 수정되었습니다.')</script>");
			out.flush();
			List<TermsVO> termsList = termsServiceImpl.getTermsList();
			if (termsList != null) {
				model.addAttribute("termsList", termsList);
			}
			return "terms";
		} else 
			out.println("<script>alert('이용약관 수정에 실패하였습니다. 다시 시도해 주시기 바랍니다.')</script>");
			out.flush();
		return "redirect:termsCorrection.mdo";
	}
	
	@RequestMapping(value = "/deleteTerms.mdo", method=RequestMethod.GET)
	public String deleteTerms(@RequestParam("seq") String seq, HttpServletResponse response, Model model) throws Exception {
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		int seq_parse = Integer.parseInt(seq);
		int result = termsServiceImpl.deleteTerms(seq_parse);
		
		if (result > 0) {
			out.println("<script>alert('이용약관이 성공적으로 삭제되었습니다.')</script>");
		} else {
			out.println("<script>alert('이용약관 삭제에 실패하였습니다. 다시 시도해 주시기 바랍니다.')</script>");
		}
		out.flush();
		
		List<TermsVO> termsList = termsServiceImpl.getTermsList();
		model.addAttribute("termsList", termsList);
		
		return "terms";
	}
	
}
