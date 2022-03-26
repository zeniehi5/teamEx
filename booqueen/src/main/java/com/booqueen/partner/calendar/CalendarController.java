package com.booqueen.partner.calendar;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelVO;
import com.booqueen.partner.room.RoomAvailableVO;
import com.booqueen.partner.room.RoomPriceVO;
import com.booqueen.partner.room.RoomService;
import com.booqueen.partner.room.RoomVO;

@Controller
public class CalendarController {
   
   @Autowired
   private HotelService hotelService;
   
   @Autowired
   private RoomService roomService;
   
   @RequestMapping(value = "/calendar.pdo", method = RequestMethod.GET)
   public String getMonthlyCalendar(Model model, RoomVO room, HttpSession session) {
      HotelVO hotel = hotelService.getHotelByMemberEmail((String) session.getAttribute("email"));
      if(hotel != null) {
         room = roomService.getRoomByHotelSerial(hotel.getSerialnumber());
         model.addAttribute("room", room);
         model.addAttribute("hotel", hotel);
         // 삁 빟  궡 뿭 媛  졇 삤湲 
         List<RoomAvailableVO> available = roomService.selectRoomAvailable(room.getRoom_id());
         model.addAttribute("available", available);
         System.out.println(available.toString());
      }
      return "calendar";
   }
   
   @RequestMapping(value = "/update-calendar.pdo", method = RequestMethod.POST)
   public String updateCalendar(Model model, RoomVO room, RoomPriceVO price, HttpSession session) {
      HotelVO hotel = hotelService.getHotelByMemberEmail((String) session.getAttribute("email"));
      HashMap<String, Object> setPrice = new HashMap<>();
      
      // 궇吏   삎 떇 蹂  솚
      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy 뀈 MM 썡 dd 씪");
      LocalDate start_date = LocalDate.parse(price.getOpen_date_start(), formatter);
      LocalDate end_date = LocalDate.parse(price.getOpen_date_end(), formatter);
      
      
      for(int i = 0; i < ChronoUnit.DAYS.between(start_date, end_date) + 1; i++) {
         LocalDate open_date = start_date.plusDays(i);
         room = roomService.getRoomByHotelSerial(hotel.getSerialnumber());
         setPrice.put("room_id", room.getRoom_id());
         setPrice.put("open_date", open_date);
         setPrice.put("available", price.getAvailable());
         setPrice.put("standard_price", price.getStandard_price());
         setPrice.put("non_refundable_price", price.getNon_refundable_price());
         roomService.insertRoomAvailable(setPrice);
      }
      
      model.addAttribute("hotel", hotel);
      model.addAttribute("room", room);
      return "calendar";
   }

}