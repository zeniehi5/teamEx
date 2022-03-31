package com.booqueen.partner.calendar;


import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelVO;
import com.booqueen.partner.room.RoomAvailableVO;
import com.booqueen.partner.room.RoomService;
import com.booqueen.partner.room.RoomVO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;


@Controller
public class CalendarController {
	
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private CalendarService calendarService;
	
	@RequestMapping("/calendar.pdo")
	public String getMonthlyCalendar(
									Model model, HttpSession session,DateVO vo) {
		
		HotelVO hotel = hotelService.getHotelByMemberEmail((String) session.getAttribute("email"));
		if(hotel != null) {
			List<RoomVO> roomList = roomService.getRoomByHotelSerial(hotel.getSerialnumber());
			System.out.println(roomList.toString());
	
			//예약 내역 가져오기
			List<RoomAvailableVO> available = new ArrayList<RoomAvailableVO>();
			List<RoomAvailableVO> availableReal = new ArrayList<RoomAvailableVO>();
			for(RoomVO room : roomList) {
			
				available = roomService.selectRoomAvailable(room.getRoom_id());
				for(RoomAvailableVO availVo :available) {
					availVo.setType(room.getType());
					DateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");	
					String openDate = sdFormat.format(availVo.getOpen_date());
					
					//일별 비교 
					String formatDate = openDate.substring(8);
					System.out.println("formatDate.substring(0,1) : "+formatDate.substring(0,1));
					
					if(formatDate.substring(0,1).equals("0")) {
						System.out.println("formatDate  : "+ formatDate);
						
						System.out.println("formatDate.substring(1,2) : "+formatDate.substring(1,2));
						
						availVo.setDay(formatDate.substring(1,2));
					}else {
						availVo.setDay(formatDate);
					}
					
					//월별 비교
					String formatMonth = openDate.substring(5,7);
					if(formatMonth.substring(0,1).equals("0")) {
						System.out.println("formatMonth  : "+ formatMonth);
						
						System.out.println("formatMonth.substring(1,2) : "+formatMonth.substring(1,2));
						int realMonth =Integer.parseInt(formatMonth.substring(1,2));
						availVo.setMonth(realMonth);
					}else {
						int realMonth =Integer.parseInt(formatMonth.substring(1,2));
						availVo.setMonth(realMonth);
					}
					
					//년별 비교
					String formatYear= openDate.substring(0,4);
					int realYear = Integer.parseInt(formatYear);
					availVo.setYear(realYear);
					
					
					availableReal.add(availVo);
				}

			}
	
			model.addAttribute("roomList", roomList);
			model.addAttribute("hotel", hotel);
			model.addAttribute("available", availableReal);
			System.out.println(available.toString());
				
	//////////////////////////////////////////////////////////////////
			
			
			Calendar cal = Calendar.getInstance();
			DateVO calendarData;
			//검색 날짜
			if(vo.getDate().equals("")&&vo.getMonth().equals("")){
				vo= new DateVO(String.valueOf(cal.get(Calendar.YEAR)),String.valueOf(cal.get(Calendar.MONTH)),String.valueOf(cal.get(Calendar.DATE)),null);
			}
			//검색 날짜 end

			Map<String, Integer> today_info =  vo.today_info(vo);
			List<DateVO> dateList = new ArrayList<DateVO>();
			
			//실질적인 달력 데이터 리스트에 데이터 삽입 시작.
			//일단 시작 인덱스까지 아무것도 없는 데이터 삽입
			for(int i=1; i<today_info.get("start"); i++){
				calendarData= new DateVO(null, null, null, null);
				dateList.add(calendarData);
			}
			
			//날짜 삽입
			for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
				if(i==today_info.get("today")){
					calendarData= new DateVO(String.valueOf(vo.getYear()), String.valueOf(vo.getMonth()), String.valueOf(i), "today");
				}else{
					calendarData= new DateVO(String.valueOf(vo.getYear()), String.valueOf(vo.getMonth()), String.valueOf(i), "normal_date");
				}
				dateList.add(calendarData);
			}

			//달력 빈곳 빈 데이터로 삽입
			int index = 7-dateList.size()%7;
			
			if(dateList.size()%7!=0){
				
				for (int i = 0; i < index; i++) {
					calendarData= new DateVO(null, null, null, null);
					dateList.add(calendarData);
				}
			}
		
			
			
/////////////////////////////////////////////////////////////////////////
			
			System.out.println(dateList);
					//배열에 담음
			model.addAttribute("dateList", dateList);		//날짜 데이터 배열
			model.addAttribute("today_info", today_info);
			
			
			

		}
		return "calendar";
	}
	
	@PostMapping("partnerScheduleUpdate.pdo")
	@ResponseBody
	public String partnerScheduleUpdate(@RequestBody RoomAvailableVO vo) throws ParseException{
		
		Date openDate = Date.valueOf(vo.getOpenDate());
		Date closeDate = Date.valueOf(vo.getCloseDate());

		vo.setOpen_date(openDate);
		vo.setClose_date(closeDate);
		
		int num = calendarService.partnerScheduleUpdate(vo);
		
		Gson gson = new Gson();
		JsonObject jsonObject = new JsonObject();
		String res ="";
			if(num ==0) {
				jsonObject.addProperty("msg", "FAIL");
				res = gson.toJson(jsonObject);
				
			}else {
				jsonObject.addProperty("msg", "SUCCESS");
				 res = gson.toJson(jsonObject);
				
			}
		return res;		
	}
	
	@RequestMapping(value = "/getRoomAvailable.pdo", method=RequestMethod.POST)
	@ResponseBody
	public String getRoomAvailable(@RequestBody RoomVO room, HttpSession session, Model model) {
		HotelVO hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
		room.setSerialnumber(hotel.getSerialnumber());
		RoomVO result = roomService.getRoomAvailableByRoomType(room);
		System.out.println(result.toString());
//		if(result != null) {
//			model.addAttribute("result", result);
//		}
		Gson gson = new Gson();
		String roomVo = gson.toJson(result);
		return roomVo;
	}
	
	@RequestMapping(value = "/insertAvailableRoom.pdo", method = RequestMethod.POST)
	@ResponseBody
	public String insertAvailableRoom(@RequestBody RoomAvailableVO vo, HttpSession session) throws ParseException {
		
		HotelVO hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
		
//		System.out.println(vo.toString());
//		String start[] = vo.getOpenDate().split("-");
//		String end[] = vo.getCloseDate().split("-");
//		int startCount = Integer.parseInt(start[2]);
//		int lastCount = Integer.parseInt(end[2]);
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date startDate = dateFormat.parse(vo.getOpenDate());
		java.util.Date endDate = dateFormat.parse(vo.getCloseDate());
		
		System.out.println("startDate : " + startDate);
		System.out.println("endDate : " + endDate);
		
		long calDate = endDate.getTime() - startDate.getTime();
		long calDateDays = calDate / (24 * 60 * 60 * 1000);
		calDateDays = Math.abs(calDateDays);
		
		System.out.println(calDateDays);
		
		String startReal = dateFormat.format(startDate);
		String endReal = dateFormat.format(endDate);		
		
		RoomVO search = new RoomVO();
		search.setSerialnumber(hotel.getSerialnumber());
		search.setType(vo.getType());
		
		RoomVO searchReal = roomService.getRoomIdByRoomType(search);
		vo.setRoom_id(searchReal.getRoom_id());
		System.out.println(searchReal.toString());
		
        int updateCount = 0;
        
        for(int i = 1; i < calDateDays + 1; i++) {
        	vo.setOpen_date(Date.valueOf(LocalDate.parse(startReal).plusDays(i-1).toString()));
        	vo.setClose_date(Date.valueOf(LocalDate.parse(startReal).plusDays(i).toString()));
        	System.out.println("for문 내에서 vo: " + vo.toString());
        	int insertNumber = calendarService.insertAvailableRoom(vo);
        	if(insertNumber != 0) {
        		updateCount++;
        	}
        }
        
        System.out.println("updateCount : " + updateCount);
        
        
        
//        for(int i = 0; i < compare; i++) {
//        	vo.setOpen_date(Date.valueOf(LocalDate.parse(vo.getOpenDate())));
//        	vo.setClose_date(Date.valueOf(LocalDate.parse(vo.getOpenDate()).plusDays(1).toString()));
//        	calendarService.insertAvailableRoom(vo);
//        	
//        }
        
//        for(int i = 0; i < lastCount - startCount; i++) {
//        	RoomAvailableVO insert = new RoomAvailableVO();
//        	insert.setOpen_date(Date.valueOf(LocalDate.parse(vo.getOpenDate())));
//        	insert.setClose_date(Date.valueOf(LocalDate.parse(vo.getOpenDate()).plusDays(1).toString()));
//        	insert.setAvailable(vo.getAvailable());
//        	insert.setStandard_price(vo.getStandard_price());
//        	insert.setNon_refundable_price(vo.getNon_refundable_price());
//        	insert.setType(vo.getType());
//        	insert.setRoom_id(vo.getRoom_id());
//        	int insertNumber = calendarService.insertAvailableRoom(insert);
//        	if(insertNumber != 0) {
//        		updateCount++;
//        	}
//        }
		
		//Date openDate = Date.valueOf(vo.getOpenDate());
		//Date closeDate = Date.valueOf(vo.getCloseDate());
		//vo.setClose_date(closeDate);
		
		
		
		Gson gson = new Gson();
		JsonObject jsonObject = new JsonObject();
		String result = "";
			if(updateCount == 0) {
				jsonObject.addProperty("msg", "FAIL");
				result = gson.toJson(jsonObject);
				
			}else {
				jsonObject.addProperty("msg", "SUCCESS");
				 result = gson.toJson(jsonObject);
				
			}
		return result;	
	}
	
//	@RequestMapping(value = "/update-calendar.pdo", method = RequestMethod.POST)
//	public String updateCalendar(Model model, RoomVO room, RoomPriceVO price, HttpSession session) {
//		HotelVO hotel = hotelService.getHotelByMemberEmail((String) session.getAttribute("email"));
//		HashMap<String, Object> setPrice = new HashMap<>();
//		
//		//날짜 형식 변환
//		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy년 MM월 dd일");
//		LocalDate start_date = LocalDate.parse(price.getOpen_date_start(), formatter);
//		LocalDate end_date = LocalDate.parse(price.getOpen_date_end(), formatter);
//		
//		
//		for(int i = 0; i < ChronoUnit.DAYS.between(start_date, end_date) + 1; i++) {
//			LocalDate open_date = start_date.plusDays(i);
//			room = roomService.getRoomByHotelSerial(hotel.getSerialnumber());
//			setPrice.put("room_id", room.getRoom_id());
//			setPrice.put("open_date", open_date);
//			setPrice.put("available", price.getAvailable());
//			setPrice.put("standard_price", price.getStandard_price());
//			setPrice.put("non_refundable_price", price.getNon_refundable_price());
//			roomService.insertRoomAvailable(setPrice);
//		}
//		
//		model.addAttribute("hotel", hotel);
//		model.addAttribute("room", room);
//		return "calendar";
//	}

}