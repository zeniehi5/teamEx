package com.booqueen.partner.hotel;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.booqueen.partner.common.S3Service;
import com.booqueen.partner.message.MessageService;
import com.booqueen.partner.reservation.ReservationService;
import com.booqueen.partner.reservation.ReservationVO;
import com.booqueen.partner.review.ReviewService;
import com.booqueen.partner.room.FacilitiesAccessVO;
import com.booqueen.partner.room.FacilitiesBasicVO;
import com.booqueen.partner.room.FacilitiesBathVO;
import com.booqueen.partner.room.FacilitiesFoodVO;
import com.booqueen.partner.room.FacilitiesMediaVO;
import com.booqueen.partner.room.FacilitiesServiceVO;
import com.booqueen.partner.room.FacilitiesViewVO;
import com.booqueen.partner.room.RoomService;
import com.booqueen.partner.room.RoomVO;
import com.booqueen.user.chat.vo.ChatVO;
import com.booqueen.user.review.vo.ReviewVO;

@Controller
public class HotelController {

	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private S3Service s3service;
	
	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value = "/basic.pdo", method = RequestMethod.POST)
	public String setBasicInfo(HotelVO vo, HttpSession session) {
			session.setAttribute("hotelname", vo.getHotelname());
			session.setAttribute("star", vo.getStar());
			session.setAttribute("manager", vo.getManager());
			session.setAttribute("telephone", vo.getTelephone());
			session.setAttribute("address1", vo.getAddress1());
			session.setAttribute("address2", vo.getAddress2());
			session.setAttribute("city", vo.getCity());
			session.setAttribute("postalcode", vo.getPostalcode());
			session.setAttribute("latitude", vo.getLatitude());
			session.setAttribute("longitude", vo.getLongitude());
			System.out.println(vo.toString());
			hotelService.addHotel(vo);
			return "createroom";	
	}
	
	@RequestMapping(value = "/room.pdo", method = RequestMethod.GET)
	public String insertRoom(HttpSession session) {
		HotelVO hotel = hotelService.findHotelByName(session.getAttribute("hotelname"));
		
		return "price";
	}
	
	@RequestMapping(value = "/price.pdo", method = RequestMethod.POST)
	public String setPrice(RoomVO vo, HttpSession session) {
		HotelVO searchhotel = hotelService.findHotelByName(session.getAttribute("hotelname"));
		String email = (String) session.getAttribute("email");
		if(searchhotel != null) {
			session.setAttribute("serialnumber", searchhotel.getSerialnumber());
			vo.setSerialnumber(searchhotel.getSerialnumber());
			roomService.addRoom(vo);
		}	
		session.setAttribute("type", vo.getType());
		session.setAttribute("smoking", vo.getSmoking());
		session.setAttribute("availablitiy", vo.getAvailable());
		session.setAttribute("price", vo.getPrice());
		return "service";
	}
	
	@RequestMapping(value= "/price.pdo", method = RequestMethod.GET)
	public String addRoom() {
		return "price";
	}
	
	@RequestMapping(value = "/service.pdo", method = RequestMethod.POST)
	public String setService(HotelServiceVO vo, HttpSession session) {
		vo.setSerialnumber((int) session.getAttribute("serialnumber"));
		System.out.println(vo.toString());
		try {
			hotelService.setHotelService(vo);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "facilities";
	}
	
	@RequestMapping(value = "/facilities.pdo", method = RequestMethod.POST)
	public String setFacilities(FacilitiesBasicVO basic, FacilitiesBathVO bath, 
			FacilitiesMediaVO media, FacilitiesFoodVO food, FacilitiesServiceVO service, 
			FacilitiesViewVO view, FacilitiesAccessVO access, HttpSession session, Model model) {
		int searchSerial = (int) session.getAttribute("serialnumber");
		RoomVO room = roomService.getIdBySerial(searchSerial);
		basic.setRoom_id(room.getRoom_id());
		bath.setRoom_id(room.getRoom_id());
		media.setRoom_id(room.getRoom_id());
		food.setRoom_id(room.getRoom_id());
		service.setRoom_id(room.getRoom_id());
		view.setRoom_id(room.getRoom_id());
		access.setRoom_id(room.getRoom_id());
		if(room != null) {
			hotelService.setFacilitiesBasic(basic);
			hotelService.setFacilitiesBath(bath);
			hotelService.setFacilitiesMedia(media);
			hotelService.setFacilitiesFood(food);
			hotelService.setFacilitiesService(service);
			hotelService.setFacilitiesView(view);
			hotelService.setFacilitiesAccess(access);
		}
		
		//이미 등록된 객실이 있는지 검색
		List<RoomVO> roomList = roomService.getRoomListByHotelSerial(searchSerial);
		model.addAttribute("room", roomList);
		
		return "add-room";		//객실 추가 화면으로 이동
	}
	
	@RequestMapping(value = "/uploadPic.pdo", method = RequestMethod.GET)
	public String uploadMainPic(HttpSession session, Model model) {
		HotelVO hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
		model.addAttribute("hotel", hotel);
		return "picture";
	}
	
	@GetMapping("picture.pdo")
	@ResponseBody
	public String pictureGet() {
		System.out.println("get 방식 요청");
		String message = "success";
		return message;
	}
	
	@PostMapping("picture.pdo")
	public String picturePost(MultipartFile[] uploadFile, HttpSession session) {
		String uploadFolder = "C:\\upload";
	    File uploadPath = new File(uploadFolder);
	    int count = 0;
	      
	    if(uploadPath.exists() == false) {
	    	uploadPath.mkdir();
	    }
	      
	    int length = uploadFile.length;
	    System.out.println("길이: " + length);
	    for(MultipartFile multipartFile : uploadFile) {
	    	String uploadFileName = multipartFile.getOriginalFilename();
	        uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
	        try {
	        	File saveFile = new File(uploadPath, uploadFileName);
	            multipartFile.transferTo(saveFile);
	            count++;
	            System.out.println(count);
	            if(count != 0) {
	    	    	try {
	    	    		InputStream is = multipartFile.getInputStream();
	    	    		String contentType = multipartFile.getContentType();
	    	    		long contentLength = multipartFile.getSize();
	    	    		s3service.upload(is, "hotel/" + (int) session.getAttribute("serialnumber") + "/" + uploadFileName, contentType, contentLength);
	    	    		System.out.println(count + ": 성공");
	    	    		System.out.println("https://booqueen.s3.ap-northeast-2.amazonaws.com/hotel/" + uploadFileName);
	    	    		
	    	    	} catch(Exception e) {
	    	    		e.printStackTrace();
	    	    	}
	    	    	HotelImageVO img = new HotelImageVO();
	    	    	img.setSerialnumber((int) session.getAttribute("serialnumber"));
	    	    	img.setFile_name(uploadFileName);
	    	    	img.setFile_url("https://booqueen.s3.ap-northeast-2.amazonaws.com/hotel/" + img.getSerialnumber() + "/" + uploadFileName);
	    	    	
	    	    	if(img != null) {
	    	    		hotelService.setHotelImage(img);
	    	    	}
	    	    }
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
	    }  
	    return "policy";
	}
	
	@PostMapping("policy.pdo")
	public String setHotelPolicy(Model model, HotelPolicyVO policy, HttpSession session) {
		if(session != null) {
			policy.setSerialnumber((int) session.getAttribute("serialnumber"));
			try {
				hotelService.setHotelPolicy(policy);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		List<RoomVO> room = roomService.getRoomByHotelSerial(policy.getSerialnumber());
		model.addAttribute("room", room);
		return "payment";
	}
	
	//결제정보 입력 화면
	@RequestMapping(value = "/setpayment.pdo", method = RequestMethod.GET)
	public String getPaymentPage(HotelVO hotel, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "payment";
	}
	
	@PostMapping("payment.pdo")
	public String setPaymentMethod(HotelPaymentVO payment, HttpSession session) {
		if(session != null) {
			payment.setSerialnumber((int) session.getAttribute("serialnumber"));
			try {
				hotelService.setPaymentMethod(payment);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return "thankyou";
	}
	
	@RequestMapping(value = "/.pdo", method = RequestMethod.GET)
	public String finishRegister() {
		return "thankyou";
	}
	
	@GetMapping("main.pdo")
	public String getMain(@ModelAttribute("hotel")HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				System.out.println(hotel.getSerialnumber());
				List<ReservationVO> reservation = reservationService.selectReservationListByHotelSerial(hotel.getSerialnumber());
				List<ChatVO> messageList = messageService.selectMessageListByHotelSerial(hotel.getSerialnumber());
				List<ReviewVO> reviewList = reviewService.selectReviewListByHotelSerial(hotel.getSerialnumber());
				
				//체크인 중인 호텔 목록
				List<ReservationVO> checkInList = reservationService.selectCheckInListByHotelSerial(hotel.getSerialnumber());
				
				System.out.println("list: "+ reservation.toString());
				
				model.addAttribute("checkin", checkInList);
				model.addAttribute("messageList", messageList);
				model.addAttribute("hotel", hotel);
				model.addAttribute("reservation", reservation);
				model.addAttribute("review", reviewList);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}		
		return "home";
	}
	
	@RequestMapping(value = "/set-policies.pdo", method = RequestMethod.GET)
	public String getPoliciesPage(@ModelAttribute("hotel")HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "set-policies";
	}
	
	@RequestMapping(value = "/update-policies.pdo", method = RequestMethod.POST)
	public String updateCancellationPolicies(HotelVO hotel, HotelPolicyVO policy, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				policy.setSerialnumber(hotel.getSerialnumber());
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println(policy.toString());
		try {
			hotelService.updateCancellationPolicy(policy);
			response.setCharacterEncoding("UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script type='text/javascript'>");
			writer.println("alert('취소 및 선결제 정책을 성공적으로 수정하였습니다.');");
	        writer.println("</script>");
	        writer.flush();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "set-policies";
	}
	
	@RequestMapping(value = "/update-kid-policies.pdo", method = RequestMethod.POST)
	public String updateKidPolicies(HotelVO hotel, HotelPolicyVO policy, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				policy.setSerialnumber(hotel.getSerialnumber());
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		try {
			hotelService.updateKidPolicy(policy);
			response.setCharacterEncoding("UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script type='text/javascript'>");
			writer.println("alert('아동 정책을 성공적으로 수정하였습니다.');");
	        writer.println("</script>");
	        writer.flush();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "set-policies";
	}
	
	@RequestMapping(value = "/update-pet-policies.pdo", method = RequestMethod.POST)
	public String updatePetPolicies(HotelVO hotel, HotelPolicyVO policy, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				policy.setSerialnumber(hotel.getSerialnumber());
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		try {
			hotelService.updatePetPolicy(policy);
			response.setCharacterEncoding("UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script type='text/javascript'>");
			writer.println("alert('반려동물 정책을 성공적으로 수정하였습니다.');");
	        writer.println("</script>");
	        writer.flush();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "set-policies";
	}
	
	@RequestMapping(value = "/update-time-policies.pdo", method = RequestMethod.POST)
	public String updateTimePolicies(HotelVO hotel, HotelPolicyVO policy, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				policy.setSerialnumber(hotel.getSerialnumber());
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		try {
			hotelService.updateTimePolicy(policy);
			response.setCharacterEncoding("UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script type='text/javascript'>");
			writer.println("alert('체크인/체크아웃 시간을 성공적으로 수정하였습니다.');");
	        writer.println("</script>");
	        writer.flush();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "set-policies";	
	}
	
	@RequestMapping(value = "/update-wifi-policies.pdo", method = RequestMethod.POST)
	public String updateWifiPolicies(HotelVO hotel, HotelServiceVO service, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				service.setSerialnumber(hotel.getSerialnumber());
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		try {
			hotelService.updateWifiPolicy(service);
			response.setCharacterEncoding("UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script type='text/javascript'>");
			writer.println("alert('인터넷 사용 정책을 성공적으로 수정하였습니다.');");
	        writer.println("</script>");
	        writer.flush();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "set-policies";	
	}
	
	@RequestMapping(value = "/update-smoking-policies.pdo", method = RequestMethod.POST)
	public String updateSmokingPolicies(HotelVO hotel, HotelServiceVO service, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				service.setSerialnumber(hotel.getSerialnumber());
				model.addAttribute("hotel", hotel);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		try {
			hotelService.updateSmokingPolicy(service);
			response.setCharacterEncoding("UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script type='text/javascript'>");
			writer.println("alert('흡연 정책을 성공적으로 수정하였습니다.');");
	        writer.println("</script>");
	        writer.flush();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "set-policies";	
	}
	
	@RequestMapping(value = "/update-service.pdo", method = RequestMethod.POST)
	public String updateHotelService(@RequestParam("room_id")int room_id,
									HotelVO hotel, HotelServiceVO service, FacilitiesBasicVO basic, 
									FacilitiesBathVO bath, FacilitiesMediaVO media, FacilitiesViewVO view,
									FacilitiesAccessVO access, FacilitiesServiceVO room_service, 
									HttpServletResponse response, HttpSession session, Model model) {
 		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if(hotel != null) {
				//hotel_service 수정값 저장
				service.setSerialnumber(hotel.getSerialnumber());
				roomService.updateHotelService(service);
				//room_faclities_basic 수정값 저장
				roomService.updateFaciliteisBasic(basic);
				//room_facilities_access 수정값 저장
				roomService.updateFacilitiesAccess(access);
				//room_facilities_media 수정값 저장
				roomService.updateFacilitiesMedia(media);
				//room_facilities_view 수정값 저장
				roomService.updateFacilitiesView(view);
				//room_facilities_bath 수정값 저장
				roomService.updateFacilitiesBath(bath);
				//room_facilities_service 수정값 저장
				roomService.updateFacilitiesService(room_service);
				//alert
				response.setCharacterEncoding("UTF-8");
				PrintWriter writer = response.getWriter();
				writer.println("<script type='text/javascript'>");
				writer.println("alert('시설 및 서비스에 관한 정보를 성공적으로 수정하였습니다.');");
		        writer.println("</script>");
		        writer.flush();
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
 		//객실 목록
 		List<RoomVO> roomList = roomService.getRoomByHotelSerial(hotel.getSerialnumber());
 		model.addAttribute("roomList", roomList);
		model.addAttribute("hotel", hotel);
		return "manage";

 		
	}
}