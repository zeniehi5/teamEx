package com.booqueen.user.email.vo;

public class EmailVO {
	
	private Integer reservation_number;
	private String checkin_date;
	private String checkout_date;
	private Integer price;
	private Integer pincode;
	private String hotelname;
	private Integer count_room;
	private Integer check_in_start;
	private Integer check_in_end;
	private Integer check_out_start;
	private Integer check_out_end;
	private String city;
	private String address1;
	private String address2;
	private String telephone;
	private String member_email;
	private String type;
	private String email;
	private String firstname;
	private String lastname;
	private String merchant;
	
	public EmailVO() { }
	public EmailVO(Integer reservation_number, String checkin_date, String checkout_date, Integer price,
			Integer pincode, String hotelname, Integer count_room, Integer check_in_start, Integer check_in_end,
			Integer check_out_start, Integer check_out_end, String city, String address1, String address2,
			String telephone, String member_email, String type, String email, String firstname, String lastname, String merchant) {
		super();
		this.reservation_number = reservation_number;
		this.checkin_date = checkin_date;
		this.checkout_date = checkout_date;
		this.price = price;
		this.pincode = pincode;
		this.hotelname = hotelname;
		this.count_room = count_room;
		this.check_in_start = check_in_start;
		this.check_in_end = check_in_end;
		this.check_out_start = check_out_start;
		this.check_out_end = check_out_end;
		this.city = city;
		this.address1 = address1;
		this.address2 = address2;
		this.telephone = telephone;
		this.member_email = member_email;
		this.type = type;
		this.email = email;
		this.firstname = firstname;
		this.lastname = lastname;
		this.merchant = merchant;
	}
	
	public Integer getReservation_number() {
		return reservation_number;
	}
	public void setReservation_number(Integer reservation_number) {
		this.reservation_number = reservation_number;
	}
	public String getCheckin_date() {
		return checkin_date;
	}
	public void setCheckin_date(String checkin_date) {
		this.checkin_date = checkin_date;
	}
	public String getCheckout_date() {
		return checkout_date;
	}
	public void setCheckout_date(String checkout_date) {
		this.checkout_date = checkout_date;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getPincode() {
		return pincode;
	}
	public void setPincode(Integer pincode) {
		this.pincode = pincode;
	}
	public String getHotelname() {
		return hotelname;
	}
	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}
	public Integer getCount_room() {
		return count_room;
	}
	public void setCount_room(Integer count_room) {
		this.count_room = count_room;
	}
	public Integer getCheck_in_start() {
		return check_in_start;
	}
	public void setCheck_in_start(Integer check_in_start) {
		this.check_in_start = check_in_start;
	}
	public Integer getCheck_in_end() {
		return check_in_end;
	}
	public void setCheck_in_end(Integer check_in_end) {
		this.check_in_end = check_in_end;
	}
	public Integer getCheck_out_start() {
		return check_out_start;
	}
	public void setCheck_out_start(Integer check_out_start) {
		this.check_out_start = check_out_start;
	}
	public Integer getCheck_out_end() {
		return check_out_end;
	}
	public void setCheck_out_end(Integer check_out_end) {
		this.check_out_end = check_out_end;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getMerchant() {
		return merchant;
	}
	public void setMerchant(String merchant) {
		this.merchant = merchant;
	}
}
