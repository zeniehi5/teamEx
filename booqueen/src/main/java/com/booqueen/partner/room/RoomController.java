package com.booqueen.partner.room;

import java.io.File;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	public String getFacilitiesPage(@RequestParam("room_id")int room_id,
									@ModelAttribute("hotel") HotelVO hotel,
									@ModelAttribute("service") HotelServiceVO service, @ModelAttribute("basic") FacilitiesBasicVO basic,
									@ModelAttribute("bath") FacilitiesBathVO bath, @ModelAttribute("media") FacilitiesMediaVO media,
									@ModelAttribute("view") FacilitiesViewVO view, @ModelAttribute("access") FacilitiesAccessVO access,
									@ModelAttribute("room_service") FacilitiesServiceVO room_service, Model model, HttpSession session) {
		
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if (hotel != null) {
				service = hotelService.getHotelServiceByHotelSerial(hotel.getSerialnumber());
				basic = roomService.getBasicInfoByRoomId(room_id);
				bath = roomService.getBathInfoByRoomId(room_id);
				media = roomService.getMediaInfoByRoomId(room_id);
				view = roomService.getViewInfoByRoomId(room_id);
				access = roomService.getAccessInfoByRoomId(room_id);
				room_service = roomService.getServiceInfoByRoomId(room_id);
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
	public String getUpdatePictureView(HotelVO hotel, Model model, HttpSession session, UpdateImageVO img, RoomVO room) {

		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());

			if (hotel != null) {
				HotelImageVO image = roomService.selectImageBySerial(hotel.getSerialnumber());
				List<UpdateImageVO> room_image = roomService.selectRoomImageBySerial(hotel.getSerialnumber());
				List<UpdateImageVO> type = roomService.selectTypeBySerial(hotel.getSerialnumber());
				
				System.out.println(room.toString());

//				RoomVO room = new RoomVO();
//				room.setSerialnumber(hotel.getSerialnumber());
//				room.setType(null)
//				System.out.println(img.toString());
//				System.out.println(hotel.toString());
//				vo.setSerialnumber(vo.getSerialnumber());
//				vo.setType(vo.getType());		
//				vo.setRoom_id(vo.getRoom_id());
//				
//				
//				System.out.println(vo.getSerialnumber());
//				System.out.println(vo.getType());
//				System.out.println(vo.getRoom_id());
//				

//				System.out.println(img.getRoom_id());
//				System.out.println(image.toString());
//				System.out.println(room_image.toString());
				model.addAttribute("hotel", hotel);
				model.addAttribute("image", image);
				model.addAttribute("room_image", room_image);
				model.addAttribute("type", type);
//				model.addAttribute("room_id", vo);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "update-picture";
	}

	@RequestMapping(value = "/update-picture.pdo", method = RequestMethod.POST)
	public String updatepicturePost(HotelVO hotel, MultipartFile[] uploadFile, HttpSession session, Model model,
			RoomVO vo) {
		String uploadFolder = "C:\\upload";
		File uploadPath = new File(uploadFolder);
		System.out.println(vo.toString());
		UpdateImageVO img = new UpdateImageVO();
		
		int count = 0;

		if (uploadPath.exists() == false) {
			uploadPath.mkdir();
		}

		img.setRoom_id(vo.getRoom_id());
		img.setType(vo.getType());
		hotel = hotelService.getHotelByMemberEmail((String) session.getAttribute("email"));
		int length = uploadFile.length;
		System.out.println("���ε����� : " + length);
		for (MultipartFile multipartFile : uploadFile) {

			String uploadFileName = multipartFile.getOriginalFilename();
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);

			try {
				File saveFile = new File(uploadPath, uploadFileName);
				multipartFile.transferTo(saveFile);
				count++;

				if (count != 0) {
					try {
						InputStream is = multipartFile.getInputStream();
						String contentType = multipartFile.getContentType();
						long contentLength = multipartFile.getSize();
						s3Service.upload(is, "hotel/" + hotel.getSerialnumber() + "/" + uploadFileName, contentType,
								contentLength);
						System.out.println("https://booqueen.s3.ap-northeast-2.amazonaws.com/hotel/" + uploadFileName);

					} catch (Exception e) {
						e.printStackTrace();
					}
					System.out.println("1");

					img.setSerialnumber(hotel.getSerialnumber());
					img.setFile_name(uploadFileName);
					img.setFile_url("https://booqueen.s3.ap-northeast-2.amazonaws.com/hotel/" + img.getSerialnumber()
							+ "/" + uploadFileName);
					roomService.insertRoomImage(img);

					System.out.println(vo.toString());		

				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
//		int roomId = Integer.parseInt(room_id);

//		model.addAttribute("room_id", roomId);
		model.addAttribute("hotel", hotel);
		model.addAttribute("image", img);
		return "redirect:update-picture";
	}

	@RequestMapping(value = "/addHotel.pdo", method = RequestMethod.GET)
	public String addRoom(Model model, HotelVO hotel, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if (hotel != null) {
				model.addAttribute("hotel", hotel);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "index";
	}
// 언니언니언니
//	@RequestMapping(value = "/roomlist.pdo", method = RequestMethod.GET)
//	public String roomList(Model model, HotelVO hotel, HttpSession session) {
//		RoomVO room = null;
//		try {
//			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
//			if (hotel != null) {
//				room = roomService.getRoomByHotelSerial(hotel.getSerialnumber());
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		model.addAttribute("room", room);
//		return "price";
//	}

	@RequestMapping(value = "/remove-picture.pdo", method = RequestMethod.POST)
	public String removePicture(HotelVO hotel, Model model, HttpSession session, MultipartFile deleteFile) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if (hotel != null) {
				List<HotelImageVO> image = roomService.deleteImageBySerial(hotel.getSerialnumber());
//			System.out.println(image.toString());
				model.addAttribute("hotel", hotel);
				model.addAttribute("image", image);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "login";
	}

//	@RequestMapping(value = "/remove-picture.pdo", method = RequestMethod.POST)
//	public String removePicture(HotelVO hotel, Model model, @RequestParam("serialnumber") int serialnumber,
//			@RequestParam("file_name") String file_name) {
//		System.out.println("ȣ�ڸ�: " + file_name);
//
//		String key = "hotel/" + serialnumber + "/" + file_name;
//		System.out.println("s3��� : " + key);
//		try {
////			s3Service.delete(file_name);
////			System.out.println(file_name);
//			s3Service.delete(key);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return "login";
//	}
	
	@RequestMapping(value = "/roomlist.pdo", method = RequestMethod.GET)
	public String selectRoomList(HotelVO hotel, HttpSession session, Model model) {
		hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
		List<RoomVO> roomList = null;
		if(hotel != null) {
			roomList = roomService.selectRoomListByHotelSerial(hotel.getSerialnumber());
		}
		model.addAttribute("hotel", hotel);
		model.addAttribute("roomList", roomList);
		return "manage";
	}
}