package com.booqueen.admin.faq;

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

import com.booqueen.admin.faq.impl.FaqServiceImpl;

@Controller
public class FaqController {

	@Autowired
	FaqServiceImpl faqServiceImpl;
	
	@RequestMapping(value = "/faq.mdo", method=RequestMethod.GET)
	public String fap(HttpSession session, Model model) {
		
		List<FaqVO> faqList = faqServiceImpl.getFaqList();
		model.addAttribute("faqList", faqList);
		
		return "faq";
	}
	
	@RequestMapping(value = "/faqCorrection.mdo", method=RequestMethod.GET)
	public String faqCorrection(HttpSession session, @RequestParam("seq") String seq, Model model) {
		
		int seq_int = Integer.parseInt(seq);
		FaqVO faqVO = faqServiceImpl.selectFaqVO(seq_int);
		model.addAttribute("faqVO", faqVO);
		
		return "faqCorrection";
	}
	
	@RequestMapping(value = "/faqUpload.mdo", method=RequestMethod.GET)
	public String faqUpload(HttpSession session) {
		return "faqUpload";
	}
	
	@RequestMapping(value = "/insertFaq.mdo", method=RequestMethod.POST)
	public String faqUpload(HttpSession session, HttpServletResponse response, FaqVO faqVO, Model model) throws Exception {
		
		int result = 0;
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if (faqVO.getCategory() == "선택" || (faqVO.getCategory()).equals("선택")) {
			out.println("<script>alert('카테고리를 선택해 주세요.')</script>");
			out.flush();
			model.addAttribute("faqVO", faqVO);
			return "faqUpload";
		} else {
			result = faqServiceImpl.insertFaqVO(faqVO);
			if (result > 0) {
				out.println("<script>alert('FAQ 가 성공적으로 등록되었습니다.')</script>");
				out.flush();
			}
			List<FaqVO> faqList = faqServiceImpl.getFaqList();
			model.addAttribute("faqList", faqList);
			
			return "faq";
		}
		
	}
	
	@RequestMapping(value = "/updateFaq.mdo", method=RequestMethod.POST)
	public String faqUpdate(HttpSession seeion, HttpServletResponse response, FaqVO faqVO, Model model) throws Exception {
		
		int result = 0;
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if (faqVO.getCategory() == "선택" || (faqVO.getCategory()).equals("선택")) {
			out.println("<script>alert('카테고리를 선택해 주세요.')</script>");
			out.flush();
			model.addAttribute("faqVO", faqVO);
			return "faqCorrection";
		} else {
			result = faqServiceImpl.updateFaqVO(faqVO);
			if (result > 0) {
				out.println("<script>alert('FAQ가 성공적으로 수정되었습니다.')</script>");
				out.flush();
			}
			List<FaqVO> faqList = faqServiceImpl.getFaqList();
			model.addAttribute("faqList", faqList);
			
			return "faq";
		}
	}
	
	@RequestMapping(value = "/deleteFaq.mdo", method=RequestMethod.GET)
	public String faqDelete(HttpSession session, HttpServletResponse response, @RequestParam("seq") String seq, Model model) throws Exception {
		
		int seq_int = Integer.parseInt(seq);
		int result = 0;
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		result = faqServiceImpl.deleteFaqVO(seq_int);
		
		if (result > 0) {
			out.println("<script>alert('"+ result +"개의 FAQ가 성공적으로 삭제되었습니다.')</script>");
		} else {
			out.println("<script>alert('FAQ 삭제에 실패하였습니다. 다시 시도해 주세요.')</script>");
		}
		out.flush();
		
		List<FaqVO> faqList = faqServiceImpl.getFaqList();
		model.addAttribute("faqList", faqList);
		
		return "faq";
	}
	
}
