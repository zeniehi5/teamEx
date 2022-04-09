package com.booqueen.admin.reservation;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.booqueen.admin.reservation.impl.ReservationServiceImpl;

@Controller
public class ReservationController {
	
	@Autowired
	ReservationServiceImpl reservationServiceImpl;
	
	@RequestMapping(value = "/reservationStatus.mdo", method=RequestMethod.GET)
	public String reservationStatus(Model model, HttpSession session) {
		
		List<ReservationVO> reservation = reservationServiceImpl.selectReservationList();
		model.addAttribute("reservation", reservation);
		Date now = new Date();
		model.addAttribute("now", now);
		
		DateFormat dateFormat_ym = new SimpleDateFormat("yyyy-MM");
		String now_ym = dateFormat_ym.format(now);
		String reservation_ym;
		
		DateFormat dateFormat_ymd = new SimpleDateFormat("yyyy-MM-dd");
		String today = dateFormat_ymd.format(now);
		String reservation_today;
		
		String cancel_today;
		String complete;
		
		int total_reservation_month = 0;
		int total_reservation_day = 0;
		int total_reservation_cancel = 0;
		int total_complete = 0;
		
		for (int i=0; i<reservation.size(); i++) {
			// 금월 총 예약
			reservation_ym = dateFormat_ym.format(reservation.get(i).getReservation_date());
			if (reservation_ym.equals(now_ym) && reservation.get(i).getCancel_reason() == null) {
				total_reservation_month += 1;
			}
			// 금일 예약건 수
			reservation_today = dateFormat_ymd.format(reservation.get(i).getReservation_date());
			if (reservation_today.equals(today) && reservation.get(i).getCancel_reason() == null) {
				total_reservation_day += 1;
			}
			// 금일 예약취소
			if (reservation.get(i).getCancel_date() != null) {
				cancel_today = dateFormat_ymd.format(reservation.get(i).getCancel_date());
				if (cancel_today.equals(today) && reservation.get(i).getCancel_reason() != null) {
					total_reservation_cancel += 1;
				}
			}
			// 금월 이용완료
			complete = dateFormat_ym.format(reservation.get(i).getCheckout_date());
			if (complete.equals(now_ym) && reservation.get(i).getUse_status() >= 2) {
				total_complete += 1;
			}
		}
		model.addAttribute("total_reservation_month", total_reservation_month);
		model.addAttribute("total_reservation_day", total_reservation_day);
		model.addAttribute("total_reservation_cancel", total_reservation_cancel);
		model.addAttribute("total_complete", total_complete);
		
		return "reservationStatus";
	}
	
	@RequestMapping(value = "/reservationStatusDetail.mdo", method=RequestMethod.GET)
	public String reservationStatusDetail(HttpSession session, @RequestParam("reservation_number") String reservation_number, Model model) {
		
		int reservation_number_str = Integer.parseInt(reservation_number);
		ReservationVO reservationVO = reservationServiceImpl.selectReservationDetail(reservation_number_str);
		model.addAttribute("reservationVO", reservationVO);
		
		return "reservationStatusDetail";
	}
	
}
