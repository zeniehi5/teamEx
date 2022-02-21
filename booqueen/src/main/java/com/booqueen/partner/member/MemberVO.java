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
	private String lastName;
	private String firstName;
	private String telephone;
	private int active;
	
}