package com.booqueen.admin.member;

import java.util.List;

public interface MemberService {

	public MemberVO getAdminMember(MemberVO vo);
	
	public List<com.booqueen.user.member.MemberVO> getUserMember();
}
