package com.booqueen.partner.analysis;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AnalysisDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public AnalysisVO selectTotalRevenue(int serialnumber) {
		return sqlSessionTemplate.selectOne("analysisDAO.selectTotalRevenue", serialnumber);
	}
	
	public AnalysisVO selectEstimatedRevenue(int serialnumber) {
		return sqlSessionTemplate.selectOne("analysisDAO.selectEstimatedRevenue", serialnumber);
	}
	
	public AnalysisVO selectDaysofStays(int serialnumber) {
		return sqlSessionTemplate.selectOne("analysisDAO.selectDaysofStays", serialnumber);
	}
	
	public AnalysisVO selectEstimatedDaysofStays(int serialnumber) {
		return sqlSessionTemplate.selectOne("analysisDAO.selectEstimatedDaysofStays", serialnumber);
	}

}
