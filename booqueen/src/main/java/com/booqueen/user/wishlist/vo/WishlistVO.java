package com.booqueen.user.wishlist.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class WishlistVO {
	private String userid;
	private Integer serialnumber;
	private String hotelname;
	private String address1;
	private String address2;
	private Integer star;
	private String hotelimgpath;
	private double score;
	private String city;
	private String reviewcount;
		
}
