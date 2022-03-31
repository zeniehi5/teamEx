package com.booqueen.user.review.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewVO {
	private Integer serialnumber;
	private Integer score = 0;
	private Integer staff;
	private Integer service;
	private Integer cleanness;
	private Integer comfort;
	private Integer effectiveness;
	private Integer place;
	private String strength;
	private String weakness;
	private String title;
	private Integer seq_review;
	private String userid;
	private Date writing;
	private String username;
	private Integer reservation_number;
}
