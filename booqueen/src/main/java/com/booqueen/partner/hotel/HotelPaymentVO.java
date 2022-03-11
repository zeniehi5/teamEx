package com.booqueen.partner.hotel;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HotelPaymentVO {
	
	private int sequence;
	private int serialnumber;
	private boolean unionpay;
	private boolean amex;
	private boolean master;
	private boolean jcb;
	private boolean bc;
	private boolean visa;
	private boolean maestro;
	private boolean kakaopay;
	private boolean payco;

}
