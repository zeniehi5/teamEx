package com.booqueen.partner.analysis;

import com.booqueen.partner.hotel.HotelVO;

public interface AnalysisService {

	AnalysisVO selectTotalRevenue(int serialnumber);
	
	AnalysisVO selectEstimatedRevenue(int serialnumber);
	
	AnalysisVO selectDaysofStays(int serialnumber);
	
	AnalysisVO selectEstimatedDaysofStays(int serialnumber);

	int selectTransactionCountByMonth(HotelVO hotel);

}
