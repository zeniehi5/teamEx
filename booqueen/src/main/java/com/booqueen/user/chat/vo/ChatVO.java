package com.booqueen.user.chat.vo;

import java.sql.Date;
import java.sql.Time;


public class ChatVO {
	private Integer chat_seq; 
	private String userid;
	private Integer serialnumber;
	private Date send_date;
	private Time send_time;
	private String content;
	private boolean partner;
	
	public ChatVO() {}
	
	public ChatVO(Integer chat_seq, String userid, Integer serialnumber, Date send_date, Time send_time, String content,
			boolean partner) {
		super();
		this.chat_seq = chat_seq;
		this.userid = userid;
		this.serialnumber = serialnumber;
		this.send_date = send_date;
		this.send_time = send_time;
		this.content = content;
		this.partner = partner;
	}

	public Integer getChat_seq() {
		return chat_seq;
	}
	public void setChat_seq(Integer chat_seq) {
		this.chat_seq = chat_seq;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Integer getSerialnumber() {
		return serialnumber;
	}
	public void setSerialnumber(Integer serialnumber) {
		this.serialnumber = serialnumber;
	}
	public Date getSend_date() {
		return send_date;
	}
	public void setSend_date(Date send_date) {
		this.send_date = send_date;
	}
	public Time getSend_time() {
		return send_time;
	}
	public void setSend_time(Time send_time) {
		this.send_time = send_time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public boolean isPartner() {
		return partner;
	}
	public void setPartner(boolean partner) {
		this.partner = partner;
	}
	
	
}
