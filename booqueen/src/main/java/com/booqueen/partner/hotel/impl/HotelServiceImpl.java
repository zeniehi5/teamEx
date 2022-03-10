package com.booqueen.partner.hotel.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.partner.hotel.HotelImageVO;
import com.booqueen.partner.hotel.HotelPaymentVO;
import com.booqueen.partner.hotel.HotelPolicyVO;
import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelServiceVO;
import com.booqueen.partner.hotel.HotelVO;
import com.booqueen.partner.room.FacilitiesAccessVO;
import com.booqueen.partner.room.FacilitiesBasicVO;
import com.booqueen.partner.room.FacilitiesBathVO;
import com.booqueen.partner.room.FacilitiesFoodVO;
import com.booqueen.partner.room.FacilitiesMediaVO;
import com.booqueen.partner.room.FacilitiesServiceVO;
import com.booqueen.partner.room.FacilitiesViewVO;

@Service("hotelService")
public class HotelServiceImpl implements HotelService {
	
	@Autowired
	private HotelDAO hotelDAO;

	@Override
	public void addHotel(HotelVO vo) {
		hotelDAO.add(vo);
	}

	@Override
	public HotelVO getHotel(HotelVO vo) {	
		return hotelDAO.getHotel(vo);
	}

	@Override
	public HotelVO findHotelByName(Object attribute) {
		return hotelDAO.getHotelByName(attribute);
	}

	@Override
	public void setHotelService(HotelServiceVO vo) {
		hotelDAO.setService(vo);
	}

	@Override
	public void setFacilitiesBasic(FacilitiesBasicVO vo) {
		hotelDAO.setFacilitiesBasic(vo);		
	}

	@Override
	public void setFacilitiesBath(FacilitiesBathVO vo) {
		hotelDAO.setFacilitiesBath(vo);		
	}

	@Override
	public void setFacilitiesMedia(FacilitiesMediaVO vo) {
		hotelDAO.setFacilitiesMedia(vo);		
	}

	@Override
	public void setFacilitiesFood(FacilitiesFoodVO vo) {
		hotelDAO.setFacilitiesFood(vo);		
	}

	@Override
	public void setFacilitiesService(FacilitiesServiceVO vo) {
		hotelDAO.setFacilitiesService(vo);		
	}

	@Override
	public void setFacilitiesView(FacilitiesViewVO vo) {
		hotelDAO.setFacilitiesView(vo);		
	}

	@Override
	public void setFacilitiesAccess(FacilitiesAccessVO vo) {
		hotelDAO.setFacilitiesAccess(vo);		
	}

	@Override
	public void setHotelImage(HotelImageVO vo) {
		hotelDAO.setHotelImage(vo);	
	}

	@Override
	public void setHotelPolicy(HotelPolicyVO vo) {
		hotelDAO.setHotelPolicy(vo);	
	}

	@Override
	public void setPaymentMethod(HotelPaymentVO vo) {
		hotelDAO.setHotelPayment(vo);
	}

	@Override
	public HotelVO getHotelByMemberEmail(String email) {
		return hotelDAO.getHotelByMemberEmail(email);
	}

	@Override
	public void updateCancellationPolicy(HotelPolicyVO vo) {
		hotelDAO.updateCancellationPolicy(vo);
	}

	@Override
	public void updateKidPolicy(HotelPolicyVO vo) {
		hotelDAO.updateKidPolicy(vo);
	}

	@Override
	public void updatePetPolicy(HotelPolicyVO vo) {
		hotelDAO.updatePetPolicy(vo);
	}

	@Override
	public void updateTimePolicy(HotelPolicyVO vo) {
		hotelDAO.updateTimePolicy(vo);
	}

	@Override
	public void updateWifiPolicy(HotelServiceVO vo) {
		hotelDAO.updateWifiPolicy(vo);
	}

	@Override
	public void updateSmokingPolicy(HotelServiceVO vo) {
		hotelDAO.updateSmokingPolicy(vo);
	}

}