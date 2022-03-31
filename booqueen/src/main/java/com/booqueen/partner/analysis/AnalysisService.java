package com.booqueen.partner.analysis;

public interface AnalysisService {

	AnalysisVO selectTotalRevenue(int serialnumber);
	
	AnalysisVO selectEstimatedRevenue(int serialnumber);
	
	AnalysisVO selectDaysofStays(int serialnumber);
	
	AnalysisVO selectEstimatedDaysofStays(int serialnumber);

}
