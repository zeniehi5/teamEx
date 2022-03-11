package com.booqueen.partner.member;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {
	
	private String email;
	private String password;
	private String confirmpass;
	private String lastname;
	private String firstname;
	private String telephone;
	private int active;
	
}