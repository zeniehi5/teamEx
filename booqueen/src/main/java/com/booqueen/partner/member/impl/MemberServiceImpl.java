package com.booqueen.partner.member.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.partner.hotel.HotelVO;
import com.booqueen.partner.member.MemberService;
import com.booqueen.partner.member.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	@Override
	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo);
	}

	@Override
	public MemberVO getPassword(MemberVO vo) {
		return memberDAO.getPassword(vo);
	}

	@Override
	public void addMember(MemberVO vo) {
		memberDAO.register(vo);
	}

	@Override
	public void changePassword(MemberVO vo) {
		memberDAO.changePassword(vo);
	}

	@Override
	public HotelVO selectSameHotelName(HotelVO vo) {
		return memberDAO.selectSameHotelName(vo);
	}

}
