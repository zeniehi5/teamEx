package com.booqueen.admin.member.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.admin.member.MemberService;
import com.booqueen.admin.member.MemberVO;
import com.booqueen.admin.member.UserAgeGroupVO;
import com.booqueen.admin.member.UserVO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public MemberVO getAdminMember(MemberVO vo) {
		return memberDAO.getAdminMember(vo);
	}

	@Override
	public List<com.booqueen.user.member.MemberVO> getUserMember() {
		return memberDAO.getUserMember();
	}
	
	@Override
	public List<UserAgeGroupVO> selectUserAgeGroupList() {
		return memberDAO.selectUserAgeGroupList();
	}
	
	@Override
	public List<UserVO> getUserGender() {
		return memberDAO.getUserGender();
	}

	
}
