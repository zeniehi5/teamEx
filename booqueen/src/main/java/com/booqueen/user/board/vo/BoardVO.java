package com.booqueen.user.board.vo;

import java.sql.Date;

public class BoardVO {

	private Integer board_seq;
	private String userid;
	private Integer serialnumber;
	private Date send_date;
	private String content;
	private boolean partner;
	private boolean closed;
	private Integer groupno;
	private boolean complete;

	public BoardVO() {
	}

	public BoardVO(Integer board_seq, String userid, Integer serialnumber, Date send_date, String content,
			boolean partner, boolean closed, Integer groupno, boolean complete) {
		super();
		this.board_seq = board_seq;
		this.userid = userid;
		this.serialnumber = serialnumber;
		this.send_date = send_date;
		this.content = content;
		this.partner = partner;
		this.closed = closed;
		this.groupno = groupno;
		this.setComplete(complete);
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

	public boolean getPartner() {
		return partner;
	}

	public void setPartner(boolean partner) {
		this.partner = partner;
	}

	public boolean getClosed() {
		return closed;
	}

	public void setClosed(boolean closed) {
		this.closed = closed;
	}

	public Integer getGroupno() {
		return groupno;
	}

	public void setGroupno(Integer groupno) {
		this.groupno = groupno;
	}

	public boolean isComplete() {
		return complete;
	}

	public void setComplete(boolean complete) {
		this.complete = complete;
	}

}