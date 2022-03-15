package com.booqueen.partner.message;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class InquiryVO {
	
	private int seqeunce;
	private String userid;
	private int serialnumber;
	private Date send_date;
	private String content;
	private boolean partner;
	private boolean closed;
	private int groupno;

}
