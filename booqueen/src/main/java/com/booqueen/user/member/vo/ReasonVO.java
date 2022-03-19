package com.booqueen.user.member.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ReasonVO {
	private Integer seq;
	private String userid;
	private String reason;
	private Date left_date;
}
