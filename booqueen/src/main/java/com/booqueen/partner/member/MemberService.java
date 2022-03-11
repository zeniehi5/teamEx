package com.booqueen.partner.member;

public interface MemberService {
	
	public MemberVO getMember(MemberVO vo);
	
	public MemberVO getPassword(MemberVO vo);
	
	public void addMember(MemberVO vo);

	public void changePassword(MemberVO vo);

}