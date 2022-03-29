package com.booqueen.partner.hotel;

import java.util.List;

import com.booqueen.partner.message.InquiryVO;
import com.booqueen.partner.reservation.PagingVO;
import com.booqueen.partner.room.FacilitiesAccessVO;
import com.booqueen.partner.room.FacilitiesBasicVO;
import com.booqueen.partner.room.FacilitiesBathVO;
import com.booqueen.partner.room.FacilitiesFoodVO;
import com.booqueen.partner.room.FacilitiesMediaVO;
import com.booqueen.partner.room.FacilitiesServiceVO;
import com.booqueen.partner.room.FacilitiesViewVO;

public interface HotelService {
	
	public void addHotel(HotelVO vo);
	
	public HotelVO getHotel(HotelVO vo);

	public HotelVO findHotelByName(Object attribute);
	
	public void setHotelService(HotelServiceVO vo);

	public void setFacilitiesBasic(FacilitiesBasicVO vo);

	public void setFacilitiesBath(FacilitiesBathVO vo);

	public void setFacilitiesMedia(FacilitiesMediaVO vo);

	public void setFacilitiesFood(FacilitiesFoodVO vo);

	public void setFacilitiesService(FacilitiesServiceVO vo);

	public void setFacilitiesView(FacilitiesViewVO vo);

	public void setFacilitiesAccess(FacilitiesAccessVO vo);

	public void setHotelImage(HotelImageVO vo);

	public void setHotelPolicy(HotelPolicyVO vo);

	public void setPaymentMethod(HotelPaymentVO vo);

	public HotelVO getHotelByMemberEmail(String email);

	public void updateCancellationPolicy(HotelPolicyVO vo);

	public void updateKidPolicy(HotelPolicyVO vo);

	public void updatePetPolicy(HotelPolicyVO vo);

	public void updateTimePolicy(HotelPolicyVO vo);

	public void updateWifiPolicy(HotelServiceVO vo);

	public void updateSmokingPolicy(HotelServiceVO vo);

	public HotelServiceVO getHotelServiceByHotelSerial(int serialnumber);

	public List<InquiryVO> selectInquiryByHotelSerial(int serialnumber, PagingVO paging);

	public HotelImageVO selectHotelImgByHotelSerial(int serialnumber);
	
}