package com.booqueen.partner.review;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewAvgVO {
	
	private Double scoreAvg = 0.0;
	private Double staffAvg = 0.0;
	private Double serviceAvg = 0.0;
	private Double cleannessAvg = 0.0;
	private Double comfortAvg = 0.0;
	private Double effectivenessAvg = 0.0;
	private Double placeAvg = 0.0; 
	private Integer count = 0;

}
