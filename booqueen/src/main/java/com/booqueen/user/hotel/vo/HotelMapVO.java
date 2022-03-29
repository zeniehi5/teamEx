package com.booqueen.user.hotel.vo;

public class HotelMapVO {

	private Double wLatitude;
	private Double eLatitude;
	private Double sLongitude;
	private Double nLongitude;
	private String start_date;
	private String end_date;
	private int[] room_id;
	
	public HotelMapVO() {}
	
	public HotelMapVO(Double wLatitude, Double eLatitude, Double sLongitude, Double nLongitude, String start_date, String end_date) {
		super();
		this.wLatitude = wLatitude;
		this.eLatitude = eLatitude;
		this.sLongitude = sLongitude;
		this.nLongitude = nLongitude;
		this.start_date = start_date;
		this.end_date = end_date;
	}
	
	public Double getwLatitude() {
		return wLatitude;
	}

	public void setwLatitude(Double wLatitude) {
		this.wLatitude = wLatitude;
	}

	public Double geteLatitude() {
		return eLatitude;
	}

	public void seteLatitude(Double eLatitude) {
		this.eLatitude = eLatitude;
	}

	public Double getsLongitude() {
		return sLongitude;
	}

	public void setsLongitude(Double sLongitude) {
		this.sLongitude = sLongitude;
	}

	public Double getnLongitude() {
		return nLongitude;
	}

	public void setnLongitude(Double nLongitude) {
		this.nLongitude = nLongitude;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	
	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public int[] getRoom_id() {
		return room_id;
	}

	public void setRoom_id(int[] room_id) {
		this.room_id = room_id;
	}
}
