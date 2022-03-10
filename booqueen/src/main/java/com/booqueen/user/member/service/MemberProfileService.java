package com.booqueen.user.member.service;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booqueen.user.member.dao.MemberProfileDAO;
import com.booqueen.user.member.vo.MemberProfileVO;

@Service
public class MemberProfileService {

	@Autowired
	MemberProfileDAO memberProfileDAO;
	
	public void insertProfile(MemberProfileVO file) throws Exception {
		memberProfileDAO.deleteProfile(file);
		memberProfileDAO.insertProfile(file);
	}
	
	public void registerProfile(MemberProfileVO file) throws Exception {
		memberProfileDAO.insertProfile(file);
	}
	
	public MemberProfileVO getProfile(MemberProfileVO file) throws Exception {
		return memberProfileDAO.getProfile(file);
	}
	
	public MemberProfileVO getProfileByUserid(String userid) throws Exception {
		return memberProfileDAO.getProfileByUserid(userid);
	}
	
	public void deleteProfile(MemberProfileVO file) throws Exception {
		memberProfileDAO.deleteProfile(file);
	}
	
	public String encodeProfile(byte[] byteArray) throws Exception{
		byte[] imgByte = byteArray;
		byte[] byteEnc64 = Base64.encodeBase64(imgByte);
		String imgStr = new String(byteEnc64 , "UTF-8");
		return imgStr;
	}
	
}
