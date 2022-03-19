package com.booqueen.admin.transaction;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TransactionController {
	@RequestMapping(value = "/transactionDetail.mdo", method=RequestMethod.GET)
	public String transactionHistory(HttpSession session) {
		return "transactionDetail";
	}
}
