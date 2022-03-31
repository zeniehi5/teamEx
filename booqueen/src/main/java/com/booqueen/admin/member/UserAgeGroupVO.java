package com.booqueen.admin.member;

import lombok.Data;

@Data
public class UserAgeGroupVO {

	private Integer now_year;
	private Integer user_birth_year;
	private Integer age;
	
	private Integer twenty;
	private Integer thirty;
	private Integer forty;
	private Integer fifty;
	private Integer sixty;
	
}
