package com.booqueen.admin.member.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.booqueen.admin.member.BlockUserVO;
import com.booqueen.admin.member.UserAgeGroupVO;
import com.booqueen.admin.member.UserVO;
import com.booqueen.user.member.vo.MemberProfileVO;

@Repository("MemberDAO")
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public com.booqueen.admin.member.MemberVO getAdminMember(com.booqueen.admin.member.MemberVO vo) {
		return sqlSessionTemplate.selectOne("MemberDAO.getAdminMember", vo);
	}
	
	public List<com.booqueen.user.member.vo.MemberVO> getUserMember() {
		 List<com.booqueen.user.member.vo.MemberVO> userList = sqlSessionTemplate.selectList("MemberDAO.selectUser");
		 return userList;
	}
	
	public List<UserAgeGroupVO> selectUserAgeGroupList() {
		return sqlSessionTemplate.selectList("UserAgeGroupDAO.selectUserAgeGroupList");
	}
	
	public List<UserVO> getUserGender() {
		return sqlSessionTemplate.selectList("UserDAO.getUserGender");
	}
	
	public List<UserVO> getUserInfoDetail(String userid) {
		return sqlSessionTemplate.selectList("UserDAO.getUserInfoDetail", userid);
	}
	
	public MemberProfileVO getProfileByUserid(String userid) throws DataAccessException{
		return (MemberProfileVO) sqlSessionTemplate.selectOne("com.booqueen.user.member.dao.memberProfilemapper.selectProfileByUserid", userid);
	}
	
	public List<BlockUserVO> selectBlockUserList() {
		List<BlockUserVO> blockUserList = sqlSessionTemplate.selectList("blockUserDAO.selectBlockUserList");
		return blockUserList;
	}
	
	public int  updateBlockUser(int sequence) {
		return sqlSessionTemplate.update("blockUserDAO.updateBlockUser", sequence);
	}
	
	public BlockUserVO selectBlockUserVO(int sequence) {
		return sqlSessionTemplate.selectOne("blockUserDAO.selectBlockUserVO", sequence);
	}
	
}
