package com.booqueen.admin.transaction;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.booqueen.admin.reservation.ReservationVO;
import com.booqueen.admin.transaction.impl.TransactionServiceImpl;

@Controller
public class TransactionController {
	
	@Autowired
	TransactionServiceImpl transactionServiceImpl;
	
	@RequestMapping(value = "/transactionHistory.mdo", method=RequestMethod.GET)
	public String selectTransactionHistory(Model model) {
		
		List<ReservationVO> commissionList = transactionServiceImpl.selectTransactionHistory();
		model.addAttribute("commissionList", commissionList);
		
		Date now = new Date();
		model.addAttribute("now", now);
		
		List<ReservationVO> transactionGraph = transactionServiceImpl.selectTransactionGraph();
		model.addAttribute("transactionGraph", transactionGraph);
		
		return "transactionHistory";
	}
	
	@RequestMapping(value = "/transactionDetail.mdo", method=RequestMethod.GET)
	public String transactionDetail(HttpSession session, @RequestParam("serialnumber") String serialnumber, Model model) {
		
		int serialnumber_int = Integer.parseInt(serialnumber);
		List<ReservationVO> transactionList = transactionServiceImpl.selectTransactionDetail(serialnumber_int);
		model.addAttribute("transactionList", transactionList);
		
		List<ReservationVO> transactionVO = transactionServiceImpl.selectTransactionDetailInfo(serialnumber_int);
		model.addAttribute("transactionVO", transactionVO);
		
		return "transactionDetail";
	}
	
}
