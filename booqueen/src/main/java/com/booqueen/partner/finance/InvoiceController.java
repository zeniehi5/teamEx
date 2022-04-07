package com.booqueen.partner.finance;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelVO;
import com.booqueen.partner.reservation.Pagination;
import com.booqueen.partner.reservation.PagingVO;
import com.booqueen.partner.reservation.ReservationService;
import com.booqueen.partner.reservation.ReservationVO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Controller
public class InvoiceController {
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping(value = "/invoice.pdo", method = RequestMethod.GET)
	public String getInvoice(@RequestParam(value="currentPage", required=false, defaultValue="1")int currentPage, 
							@ModelAttribute("hotel")HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			
			
			if(hotel != null) {
				int listCount = hotelService.getListCount(hotel.getSerialnumber());
				
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
	
	@RequestMapping(value = "/chargeBillingStateMent.pdo", method = RequestMethod.POST)
	@ResponseBody
	public String chargeBillingStateMent(@RequestBody ReservationVO reservation) {
		
		int updateNumber = reservationService.updateReservationStatusToBilling(reservation);
		
		Gson gson = new Gson();
		JsonObject jsonObject = new JsonObject();
		String result = "";
		
		if(updateNumber == 0) {
			jsonObject.addProperty("message", "FAIL");
			result = gson.toJson(jsonObject);
		} else {
			jsonObject.addProperty("message", "SUCCESS");
			result = gson.toJson(jsonObject);
		}
		
		return result;
	}
	
	@RequestMapping(value = "/searchInvoiceByMonth.pdo", method = RequestMethod.POST)
	@ResponseBody
	public String searchInvoiceByMonth(@RequestBody InvoiceVO invoice) {
		String result = "";
		System.out.println(invoice.toString());
		
		Gson gson = new Gson();
		JsonObject jsonObject= new JsonObject();
		
		jsonObject.addProperty("message", "SUCCESS");
		result = gson.toJson(jsonObject);
		return result;
	}

}
