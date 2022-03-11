package com.booqueen.user.review.vo;

import lombok.Data;

@Data
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
