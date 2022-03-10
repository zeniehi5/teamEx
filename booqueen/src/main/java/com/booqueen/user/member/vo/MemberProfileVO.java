package com.booqueen.user.member.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MemberProfileVO {
	private Integer profile_no;
	private String userid;
	private String profile_name;
	private double profile_size;
	private String profile_type;
	private String profile_data;
	private MultipartFile file;
}
