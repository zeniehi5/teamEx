package com.booqueen.admin.partner.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.hotel.HotelVO;
import com.booqueen.admin.partner.PartnerVO;

@Repository("PartnerDAO")
public class PartnerDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	public List<com.booqueen.admin.partner.PartnerVO> getPartnerMember() {
		
		List<com.booqueen.admin.partner.PartnerVO> partnerList = sqlSessionTemplate.selectList("PartnerDAO.selectPartner");
		 return partnerList;
	}
	public int blockPartner(PartnerVO vo) throws DataAccessException{
		return sqlSessionTemplate.update("PartnerDAO.blockPartner", vo);
	}

	public List<PartnerVO> selectBlockPartnerList() {
		return sqlSessionTemplate.selectList("PartnerDAO.selectBlockPartnerList");
	}

	public int unblockPartner(PartnerVO vo) throws DataAccessException{
		return sqlSessionTemplate.update("PartnerDAO.unblockPartner", vo);
	}

	public List<HotelVO> selectHotelByEmail(String email) {
		
		return sqlSessionTemplate.selectList("PartnerDAO.selectHotelByEmail", email);
	}

	public PartnerVO selectPartnerByEmail(String email) {
		
		return sqlSessionTemplate.selectOne("PartnerDAO.selectPartnerByEmail", email);
	}
}
