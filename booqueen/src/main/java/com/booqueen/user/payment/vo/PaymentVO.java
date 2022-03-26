package com.booqueen.user.payment.vo;

public class PaymentVO {
	private String imp_uid;
	private String userid;
	private Integer serialnumber;
	private Integer room_id;
	private String name;
	private String email;
	private String phone;
	private Integer price;
	private String order_merchant_serial;
	private String merchant;
	private String payment_status;
	private String cancel_reason;
	
	public PaymentVO() {
	}

	public PaymentVO(String imp_uid, String userid, Integer serialnumber, Integer room_id, String name, String email, String phone,
			Integer price, String order_merchant_serial, String merchant, String payment_status, String cancel_reason) {
		super();
		this.imp_uid = imp_uid;
		this.userid = userid;
		this.serialnumber = serialnumber;
		this.room_id = room_id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.price = price;
		this.order_merchant_serial = order_merchant_serial;
		this.merchant = merchant;
		this.payment_status = payment_status;
		this.cancel_reason = cancel_reason;
	}

	public Integer getSerialnumber() {
		return serialnumber;
	}

	public void setSerialnumber(Integer serialnumber) {
		this.serialnumber = serialnumber;
	}

	public Integer getRoom_id() {
		return room_id;
	}

	public void setRoom_id(Integer room_id) {
		this.room_id = room_id;
	}
	
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getOrder_merchant_serial() {
		return order_merchant_serial;
	}

	public void setOrder_merchant_serial(String order_merchant_serial) {
		this.order_merchant_serial = order_merchant_serial;
	}

	public String getMerchant() {
		return merchant;
	}

	public void setMerchant(String merchant) {
		this.merchant = merchant;
	}

	public String getImp_uid() {
		return imp_uid;
	}

	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}

	public String getPayment_status() {
		return payment_status;
	}

	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}

	public String getCancel_reason() {
		return cancel_reason;
	}

	public void setCancel_reason(String cancel_reason) {
		this.cancel_reason = cancel_reason;
	}
}
