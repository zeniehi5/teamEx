package com.booqueen.user.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	MemberDAO memberDAO;
	
	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo);
	}
	
	public MemberVO getMemberByUserid(String userid) {
		return memberDAO.getMemberByUserid(userid);
	}
	
	public int insertMember(MemberVO vo) {
		return memberDAO.insertMember(vo);
	}
	
	public int updateMember(MemberVO vo) {
		return memberDAO.updateMember(vo);
	}
	
	public int deleteMember(MemberVO vo) {
		return memberDAO.deleteMember(vo);
	}
	
	public int changePasswd(MemberVO vo) {
		return memberDAO.changePasswd(vo);
	}
}
