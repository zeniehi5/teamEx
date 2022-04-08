package com.booqueen.user.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.faq.FaqVO;
import com.booqueen.user.member.vo.MemberProfileVO;
import com.booqueen.user.member.vo.ReasonVO;

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
	
	public int deleteProfile(MemberProfileVO vo) {
		return memberDAO.deleteProfile(vo);
	}
	
	public int changePasswd(MemberVO vo) {
		return memberDAO.changePasswd(vo);
	}
	
	public MemberVO selectMemberByKakao(MemberVO vo) {
		return memberDAO.selectMemberByKakao(vo);
	}
	
	public int insertMemberByKakao(MemberVO vo) {
		return memberDAO.insertMemberByKakao(vo);
	}
	
	public int insertReason(ReasonVO vo) {
		return memberDAO.insertReason(vo);
	}
	
	public List<FaqVO> getFaqList() {
		return memberDAO.getFaqList();
	}
}
