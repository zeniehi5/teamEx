package com.booqueen.partner.analysis;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelVO;

@Controller
public class AnalysisController {
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private AnalysisService analysisService;
	
	@RequestMapping(value = "/analysis.pdo", method = RequestMethod.GET)
	public String getAnalysisPage(HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				//이용완료된 예약건 매출
				AnalysisVO analysis = analysisService.selectTotalRevenue(hotel.getSerialnumber());				
				//예상되는 이번달 매출
				AnalysisVO estimatedRevenue = analysisService.selectEstimatedRevenue(hotel.getSerialnumber());
				//이용완료된 예약건의 총 숙박일 수
				AnalysisVO totalStays = analysisService.selectDaysofStays(hotel.getSerialnumber());
				//이번달 예약건의 총 숙박일 수
				AnalysisVO estimatedStays = analysisService.selectEstimatedDaysofStays(hotel.getSerialnumber());
				model.addAttribute("analysis", analysis);
				model.addAttribute("estimated", estimatedRevenue);
				model.addAttribute("stays", totalStays);
				model.addAttribute("estimatedStays", estimatedStays);
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "analysis";
	}

}
