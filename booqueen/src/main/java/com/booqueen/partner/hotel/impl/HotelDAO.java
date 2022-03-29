package com.booqueen.partner.hotel.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booqueen.partner.finance.InvoiceVO;
import com.booqueen.partner.hotel.HotelImageVO;
import com.booqueen.partner.hotel.HotelPaymentVO;
import com.booqueen.partner.hotel.HotelPolicyVO;
import com.booqueen.partner.hotel.HotelServiceVO;
import com.booqueen.partner.hotel.HotelVO;
import com.booqueen.partner.message.InquiryVO;
import com.booqueen.partner.reservation.PagingVO;
import com.booqueen.partner.room.FacilitiesAccessVO;
import com.booqueen.partner.room.FacilitiesBasicVO;
import com.booqueen.partner.room.FacilitiesBathVO;
import com.booqueen.partner.room.FacilitiesFoodVO;
import com.booqueen.partner.room.FacilitiesMediaVO;
import com.booqueen.partner.room.FacilitiesServiceVO;
import com.booqueen.partner.room.FacilitiesViewVO;

@Repository("hotelDAO")
public class HotelDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void add(HotelVO vo) {
		sqlSessionTemplate.insert("HotelDAO.addHotel", vo);
	}		// 반환값이 int? void?
	
	public HotelVO getHotel(HotelVO vo) {
		return sqlSessionTemplate.selectOne("HotelDAO.getHotel", vo);
	}

	public HotelVO getHotelByName(Object attribute) {
		return sqlSessionTemplate.selectOne("HotelDAO.getHotelByName", attribute);
	}
	
	public void setService(HotelServiceVO vo) {
		sqlSessionTemplate.insert("HotelDAO.setService", vo);
	}

	public void setFacilitiesBasic(FacilitiesBasicVO vo) {
		sqlSessionTemplate.insert("HotelDAO.setFacilitiesBasic", vo);		
	}

	public void setFacilitiesBath(FacilitiesBathVO vo) {
		sqlSessionTemplate.insert("HotelDAO.setFacilitiesBath", vo);
	}

	public void setFacilitiesMedia(FacilitiesMediaVO vo) {
		sqlSessionTemplate.insert("HotelDAO.setFacilitiesMedia", vo);
	}

	public void setFacilitiesFood(FacilitiesFoodVO vo) {
		sqlSessionTemplate.insert("HotelDAO.setFacilitiesFood", vo);
	}

	public void setFacilitiesService(FacilitiesServiceVO vo) {
		sqlSessionTemplate.insert("HotelDAO.setFacilitiesService", vo);		
	}

	public void setFacilitiesView(FacilitiesViewVO vo) {
		sqlSessionTemplate.insert("HotelDAO.setFacilitiesView", vo);		
	}

	public void setFacilitiesAccess(FacilitiesAccessVO vo) {
		sqlSessionTemplate.insert("HotelDAO.setFacilitiesAccess", vo);
	}

	public void setHotelPolicy(HotelPolicyVO vo) {
		sqlSessionTemplate.insert("HotelDAO.setHotelPolicy", vo);	
	}

	public void setHotelPayment(HotelPaymentVO vo) {
		sqlSessionTemplate.insert("HotelDAO.setHotelPayment", vo);
	}

	public HotelVO getHotelByMemberEmail(String email) {
		return sqlSessionTemplate.selectOne("HotelDAO.getHotelByMemberEmail", email);
	}

	public void updateCancellationPolicy(HotelPolicyVO vo) {
		sqlSessionTemplate.update("HotelDAO.updateCancellationPolicy", vo);
	}

	public void updateKidPolicy(HotelPolicyVO vo) {
		sqlSessionTemplate.update("HotelDAO.updateKidPolicy", vo);
	}

	public void updatePetPolicy(HotelPolicyVO vo) {
		sqlSessionTemplate.update("HotelDAO.updatePetPolicy", vo);
	}

	public void updateTimePolicy(HotelPolicyVO vo) {
		sqlSessionTemplate.update("HotelDAO.updateTimePolicy", vo);
	}

	public void updateWifiPolicy(HotelServiceVO vo) {
		sqlSessionTemplate.update("HotelDAO.updateWifiPolicy", vo);
	}

	public void updateSmokingPolicy(HotelServiceVO vo) {
		sqlSessionTemplate.update("HotelDAO.updateSmokingPolicy", vo);
	}

	public HotelServiceVO getHotelServiceByHotelSerial(int serialnumber) {
		return sqlSessionTemplate.selectOne("HotelDAO.getHotelServiceByHotelSerial", serialnumber);
	}

	public List<InquiryVO> selectInquiryByHotelSerial(int serialnumber, PagingVO paging) {
		int offset = (paging.getCurrentPage() -1) * paging.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, paging.getBoardLimit());
		return sqlSessionTemplate.selectList("HotelDAO.selectInquiryByHotelSerial", serialnumber, rowBounds);
	}
	
	public void setHotelImage(HotelImageVO vo) {
		sqlSessionTemplate.insert("HotelDAO.setHotelImage", vo);
  }

	public HotelImageVO selectHotelImgByHotelSerial(int serialnumber) {
		return sqlSessionTemplate.selectOne("HotelDAO.selectHotelImgByHotelSerial", serialnumber);
	}

	public List<InvoiceVO> selectInvoiceByHotelSerial(int serialnumber, PagingVO paging) {
		int offset = (paging.getCurrentPage() - 1) * paging.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, paging.getBoardLimit());
		return sqlSessionTemplate.selectList("HotelDAO.selectInvoiceByHotelSerial", serialnumber, rowBounds);
	}

	public int getListCount(int serialnumber) {
		return sqlSessionTemplate.selectOne("HotelDAO.getListCount", serialnumber);
	}
	
}