package com.booqueen.user.member;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {
	private String userid;
	private String passwd;
	private String name;
	private String gender;
	private String phone1;
	private String phone2;
	private String phone3;
	private String birth_year;
	private String birth_month;
	private String birth_day;
	private Date since;
	
	private String newPasswd;
	private String rePasswd;
	
	private String type;

}
