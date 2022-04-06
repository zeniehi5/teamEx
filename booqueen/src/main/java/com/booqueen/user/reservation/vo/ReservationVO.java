package com.booqueen.user.reservation.vo;

import lombok.Data;

@Data
public class ReservationVO {
	private String merchant;
	private Integer reservation_number;
	private Integer room_id;
	private Integer serialnumber;
	private String type;
	private String[] types;
	private Integer price;
	private int[] prices;
	private String[] prices_s;
	private Integer count_room;
	private int[] count_rooms;
	private String[] count_rooms_s;
	private String start_date;
	private String start_date_year;
	private String start_date_month;
	private String start_date_day;
	private String end_date;
	private String end_date_year;
	private String end_date_month;
	private String end_date_day;
	private Integer diffDays;
	private String start_day;
	private String end_day;
	private String lastname;
	private String firstname;
	private String email;
	private String request_text;
	private String arrive_time;
	private boolean status;
	private String userid;
	private Integer pincode;
	private String city;
	private Integer check_in_start;
	private Integer check_in_end;
	private Integer check_out_start;
	private Integer check_out_end;
	private String file_url;
	private String hotelname;
	private String star;
	private String address1;	
	private String address2;
	private String reservation_date;
	private String cancel_date;
	private String cancel_reason;
	private String imp_uid;
	private int total;
	private Integer review_deadline;
	private boolean review;
	private Integer count; // 호텔 예약 횟수
	private Integer use_status;
	private String telephone;
	private String member_email;
}
