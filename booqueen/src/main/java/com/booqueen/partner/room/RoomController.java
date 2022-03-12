package com.booqueen.partner.room;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelServiceVO;
import com.booqueen.partner.hotel.HotelVO;

@Controller
public class RoomController {
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private RoomService roomService;
	
	@RequestMapping(value = "/get-service.pdo", method = RequestMethod.GET)
	public String getFacilitiesPage(@ModelAttribute("hotel")HotelVO hotel, 
									@ModelAttribute("service")HotelServiceVO service, 
									@ModelAttribute("basic")FacilitiesBasicVO basic,
									@ModelAttribute("bath")FacilitiesBathVO bath,
									@ModelAttribute("media")FacilitiesMediaVO media,
									@ModelAttribute("view")FacilitiesViewVO view,
									@ModelAttribute("access")FacilitiesAccessVO access,
									@ModelAttribute("room_service")FacilitiesServiceVO room_service,
									Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				service = hotelService.getHotelServiceByHotelSerial(hotel.getSerialnumber());
				basic = roomService.getBasicInfoByHotelSerial(hotel.getSerialnumber());
				bath = roomService.getBathInfoByHotelSerial(hotel.getSerialnumber());
				media = roomService.getMediaInfoByHotelSerial(hotel.getSerialnumber());
				view = roomService.getViewInfoByHotelSerial(hotel.getSerialnumber());
				access = roomService.getAccessInfoByHotelSerial(hotel.getSerialnumber());
				room_service = roomService.getServiceInfoByHotelSerial(hotel.getSerialnumber());
				model.addAttribute("service", service);
				model.addAttribute("basic", basic);
				model.addAttribute("bath", bath);
				model.addAttribute("media", media);
				model.addAttribute("view", view);
				model.addAttribute("access", access);
				model.addAttribute("room_service", room_service);
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "set-service";
	}
	
	@RequestMapping(value = "/update-picture.pdo", method = RequestMethod.GET)
	public String getUpdatePictureView(HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "update-picture";
	}

}