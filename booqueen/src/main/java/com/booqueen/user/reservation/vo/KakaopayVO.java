package com.booqueen.user.reservation.vo;

import lombok.Data;

@Data
public class KakaopayVO {
	private String pg;
	private String pay_method;
	private String merechat_uid;
	private Integer amount;
	private String buyer_email;
	private String buyer_name;
}
