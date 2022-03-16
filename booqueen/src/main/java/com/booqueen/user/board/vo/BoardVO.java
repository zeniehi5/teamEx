package com.booqueen.user.board.vo;

import java.sql.Date;

public class BoardVO {

	private Integer board_seq;
	private String userid;
	private Integer serialnumber;
	private Date send_date;
	private String content;
	private Boolean partner;
	private Integer closed;
	private Integer groupno;

	public BoardVO() {
	}

	public BoardVO(Integer board_seq, String userid, Integer serialnumber, Date send_date, String content,
			Boolean partner, Integer closed, Integer groupno) {
		super();
		this.board_seq = board_seq;
		this.userid = userid;
		this.serialnumber = serialnumber;
		this.send_date = send_date;
		this.content = content;
		this.partner = partner;
		this.closed = closed;
		this.groupno = groupno;
	}

	public Integer getBoard_seq() {
		return board_seq;
	}

	public void setBoard_seq(Integer board_seq) {
		this.board_seq = board_seq;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Boolean getPartner() {
		return partner;
	}

	public void setPartner(Boolean partner) {
		this.partner = partner;
	}

	public Integer getClosed() {
		return closed;
	}

	public void setClosed(Integer closed) {
		this.closed = closed;
	}

	public Integer getGroupno() {
		return groupno;
	}

	public void setGroupno(Integer groupno) {
		this.groupno = groupno;
	}

}