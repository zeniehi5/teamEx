package com.booqueen.partner.finance;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelVO;
import com.booqueen.partner.reservation.Pagination;
import com.booqueen.partner.reservation.PagingVO;

@Controller
public class InvoiceController {
	
	@Autowired
	private HotelService hotelService;
	
	@RequestMapping(value = "/invoice.pdo", method = RequestMethod.GET)
	public String getInvoice(@RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage, 
							@ModelAttribute("hotel")HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			
			
			if(hotel != null) {
				int listCount = hotelService.getListCount(hotel.getSerialnumber());
				System.out.println(listCount);
				
				PagingVO paging =Pagination.getPagingVO(currentPage, listCount); 
						
				List<InvoiceVO> invoice = hotelService.selectInvoiceByHotelSerial(hotel.getSerialnumber(), paging);
				System.out.println(invoice.toString());
				
				model.addAttribute("paging", paging);
				model.addAttribute("hotel", hotel);
				model.addAttribute("invoice", invoice);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "invoice";
	}
	
	@RequestMapping(value = "/statement.pdo", method = RequestMethod.GET)
	public String getStatement(@ModelAttribute("hotel")HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "statement";
	}

}
