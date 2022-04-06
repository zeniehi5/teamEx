package com.booqueen.admin.terms;

import java.util.Date;

import lombok.Data;

@Data
public class TermsVO {
	private int seq;
	private String code;
	private String category;
	private String title;
	private String contents;
	private String[] sub_contents;
	private Date date;
}
