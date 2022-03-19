package com.booqueen.admin.partner;

import lombok.Data;

@Data
public class PartnerVO {

	private String email;
	private String lastname;
	private String firstname;
	private String telephone;
	private Integer active;
	private String whyblock;
}
