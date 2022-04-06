package com.booqueen.partner.analysis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.partner.hotel.HotelVO;

@Service
public class AnalysisServiceImpl implements AnalysisService {
	
	@Autowired
	private AnalysisDAO analysisDAO;

	@Override
	public AnalysisVO selectTotalRevenue(int serialnumber) {
		return analysisDAO.selectTotalRevenue(serialnumber);
	}

	@Override
	public AnalysisVO selectEstimatedRevenue(int serialnumber) {
		return analysisDAO.selectEstimatedRevenue(serialnumber);
	}

	@Override
	public AnalysisVO selectDaysofStays(int serialnumber) {
		return analysisDAO.selectDaysofStays(serialnumber);
	}

	@Override
	public AnalysisVO selectEstimatedDaysofStays(int serialnumber) {
		return analysisDAO.selectEstimatedDaysofStays(serialnumber);
	}

	@Override
	public int selectTransactionCountByMonth(HotelVO hotel) {
		return analysisDAO.selectTransactionCountByMonth(hotel);
	}

}
