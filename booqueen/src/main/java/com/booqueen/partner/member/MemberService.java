package com.booqueen.partner.member;

import com.booqueen.partner.hotel.HotelVO;

public interface MemberService {

	public MemberVO getMember(MemberVO vo);

	public MemberVO getPassword(MemberVO vo);

	public void addMember(MemberVO vo);

	public void changePassword(MemberVO vo);

	public HotelVO selectSameHotelName(HotelVO vo);


}