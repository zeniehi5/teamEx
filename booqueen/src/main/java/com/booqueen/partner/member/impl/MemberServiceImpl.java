package com.booqueen.partner.member.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		System.out.println("받아온 이메일값: " + vo.getEmail());
		return memberDAO.getMember(vo);
	}

	@Override
	public MemberVO getPassword(MemberVO vo) {
		System.out.println("받아온 이메일값: " + vo.getEmail());
		System.out.println("받아온 비밀번호값: " + vo.getPassword());
		return memberDAO.getPassword(vo);
	}

	@Override
	public void addMember(MemberVO vo) {
		System.out.println("받아온 이메일값: " + vo.getEmail());
		System.out.println("받아온 비밀번호값: " + vo.getPassword());
		System.out.println("받아온 성: " + vo.getLastName());
		System.out.println("받아온 이름: " + vo.getFirstName());
		System.out.println("받아온 전화번호: " + vo.getTelephone());
		memberDAO.register(vo);
	}

}
