package com.booqueen.admin.payment;

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

import com.booqueen.admin.payment.impl.PaymentServiceImpl;

@Controller
public class PaymentController {
	
	@Autowired
	PaymentServiceImpl paymentService;
	
	@RequestMapping(value = "/payment.mdo", method=RequestMethod.GET)
	public String getPaymentStatus(HttpSession session, Model model) {
		
		List<PaymentStatusVO> paymentStatusList = paymentService.getPaymentStatusList();
		model.addAttribute("paymentStatusList", paymentStatusList);
		
		int non_payment_count = 0;
		int payment_count = 0;
		
		for (int i=0; i<paymentStatusList.size(); i++) {
			if (paymentStatusList.get(i).getUse_status() == 3) {
				non_payment_count += 1;
			} else if (paymentStatusList.get(i).getUse_status() == 4) {
				payment_count += 1;
			}
		}
		
		model.addAttribute("non_payment_count", non_payment_count);
		model.addAttribute("payment_count", payment_count);
		
		return "payment";
	}
	
	@RequestMapping(value = "/paymenStatusChange.mdo")
	public String paymenStatusChange(HttpSession session, HttpServletResponse response, Model model, PaymentStatusVO paymentStatusVO) throws Exception {
		
		int result = 0;
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		result = paymentService.updatePaymentStatus(paymentStatusVO);
		
		if (result == 1) {
			if (paymentStatusVO.getUse_status() == 4) {
				out.println("<script>alert('"+ paymentStatusVO.getHotelname() + "("+ paymentStatusVO.getSerialnumber() +"), " + paymentStatusVO.getPrice() + "원 지급 상태로 변경하였습니다.')</script>");
			} else if(paymentStatusVO.getUse_status() == 3) {
				out.println("<script>alert('"+ paymentStatusVO.getHotelname() + "("+ paymentStatusVO.getSerialnumber() +"), " + paymentStatusVO.getPrice() + "원 미지급 상태로 변경하였습니다.')</script>");
			}
			out.flush();
		} else {
			out.println("<script>alert('실패')</script>");
			out.flush();
		}
		
		List<PaymentStatusVO> paymentStatusList = paymentService.getPaymentStatusList();
		model.addAttribute("paymentStatusList", paymentStatusList);
		
		int non_payment_count = 0;
		int payment_count = 0;
		
		for (int i=0; i<paymentStatusList.size(); i++) {
			if (paymentStatusList.get(i).getUse_status() == 3) {
				non_payment_count += 1;
			} else if (paymentStatusList.get(i).getUse_status() == 4) {
				payment_count += 1;
			}
		}
		
		model.addAttribute("non_payment_count", non_payment_count);
		model.addAttribute("payment_count", payment_count);
		
		return "payment";
	}
	
	
	
	
	
	
	
	
	
	
	
}
