package com.booqueen.user.hotel.vo;

public class HotelMapVO {

	private Double wLatitude;
	private Double eLatitude;
	private Double sLongitude;
	private Double nLongitude;

	public HotelMapVO() {}
	
	public HotelMapVO(Double wLatitude, Double eLatitude, Double sLongitude, Double nLongitude) {
		super();
		this.wLatitude = wLatitude;
		this.eLatitude = eLatitude;
		this.sLongitude = sLongitude;
		this.nLongitude = nLongitude;
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

}
