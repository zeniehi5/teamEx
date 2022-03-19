package com.booqueen.partner.room;

import java.io.File;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.booqueen.partner.common.S3Service;
import com.booqueen.partner.hotel.HotelImageVO;
import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelServiceVO;
import com.booqueen.partner.hotel.HotelVO;

@Controller
public class RoomController {
	
	@Autowired
	private S3Service s3Service;

	@Autowired
	private HotelService hotelService;

	@Autowired
	private RoomService roomService;

	@RequestMapping(value = "/get-service.pdo", method = RequestMethod.GET)
	public String getFacilitiesPage(@ModelAttribute("hotel") HotelVO hotel,
			@ModelAttribute("service") HotelServiceVO service, @ModelAttribute("basic") FacilitiesBasicVO basic,
			@ModelAttribute("bath") FacilitiesBathVO bath, @ModelAttribute("media") FacilitiesMediaVO media,
			@ModelAttribute("view") FacilitiesViewVO view, @ModelAttribute("access") FacilitiesAccessVO access,
			@ModelAttribute("room_service") FacilitiesServiceVO room_service, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if (hotel != null) {
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
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "set-service";
	}

	@RequestMapping(value = "/update-picture.pdo", method = RequestMethod.GET)
	public String getUpdatePictureView(HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if (hotel != null) {
				List<HotelImageVO> image = roomService.selectImageBySerial(hotel.getSerialnumber());
				System.out.println(image.toString());
				model.addAttribute("hotel", hotel);
				model.addAttribute("image", image);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "update-picture";
	}

	@RequestMapping(value = "/remove-picture.pdo", method = RequestMethod.GET)
	public String removePicture(HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if (hotel != null) {
				List<HotelImageVO> image = roomService.deleteImageBySerial(hotel.getSerialnumber());
				System.out.println(image.toString());
				model.addAttribute("hotel", hotel);
				model.addAttribute("image", image);
    	    }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "update-picture";
	}
	
	@RequestMapping(value = "/remove-picture.pdo", method = RequestMethod.POST)
	public String removepictureS3(MultipartFile[] deleteFile, HttpSession session) {
		
		for(MultipartFile multipartFile : deleteFile) {
			String deleteFileName = multipartFile.getOriginalFilename();
			deleteFileName = deleteFileName.substring(deleteFileName.lastIndexOf("\\")+1);
			try {
				s3Service.delete("hotel/" + (int) session.getAttribute("serialnumber") + "/" + deleteFileName);
				System.out.println("https://booqueen.s3.ap-northeast-2.amazonaws.com/hotel/" + deleteFileName);
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		return "upadte-picture";
	}

}