package com.booqueen.admin.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booqueen.admin.member.impl.MemberServiceImpl;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl memberServiceImpl;
	
	@RequestMapping(value = "/userMember.mdo", method=RequestMethod.GET)
	public String userMember(Model model) {
	
		List<com.booqueen.user.member.MemberVO> userList = memberServiceImpl.getUserMember();
		model.addAttribute("userList", userList);
		
		Integer twenty = 0;
		Integer thirty = 0;
		Integer forty = 0;
		Integer fifty = 0;
		Integer sixty = 0;
		
		// age group
		List<UserAgeGroupVO> userAgeGroupList = memberServiceImpl.selectUserAgeGroupList();
		
		for (int i=0; i<userAgeGroupList.size(); i++) {
			if (userAgeGroupList.get(i).getAge() > 19 && userAgeGroupList.get(i).getAge() < 30) {
				twenty += 1;
			} else if (userAgeGroupList.get(i).getAge() > 29 && userAgeGroupList.get(i).getAge() < 40) {
				thirty += 1;
			} else if (userAgeGroupList.get(i).getAge() > 39 && userAgeGroupList.get(i).getAge() < 50) {
				forty += 1;
			} else if (userAgeGroupList.get(i).getAge() > 49 && userAgeGroupList.get(i).getAge() < 60) {
				fifty += 1;
			} else if (userAgeGroupList.get(i).getAge() > 59) {
				sixty += 1;
			}
		}
		
		UserAgeGroupVO userAgeGroupVO = new UserAgeGroupVO();
		userAgeGroupVO.setTwenty(twenty);
		userAgeGroupVO.setThirty(thirty);
		userAgeGroupVO.setForty(forty);
		userAgeGroupVO.setFifty(fifty);
		userAgeGroupVO.setSixty(sixty);
		model.addAttribute("userAgeGroup", userAgeGroupVO);
		
		// gender
		List<UserVO> getUserGender = memberServiceImpl.getUserGender();
		
		Integer female = 0;
		Integer male = 0;
		
		for (int i=0; i<getUserGender.size(); i++) {
			if (getUserGender.get(i).getGender().equals("여성") || getUserGender.get(i).getGender() == "여성") {
				female += 1;
			} else if (getUserGender.get(i).getGender().equals("female") || getUserGender.get(i).getGender() == "female") {
				female += 1;
			} else if (getUserGender.get(i).getGender().equals("남성") || getUserGender.get(i).getGender() == "남성") {
				male += 1;
			} else if (getUserGender.get(i).getGender().equals("male") || getUserGender.get(i).getGender() == "male") {
				male += 1;
			}
		}
		
		UserVO userVO = new UserVO();
		userVO.setFemale_count(female);
		userVO.setMale_count(male);
		
		model.addAttribute("getUserGender", userVO);
		
		return "userMember";
	}
	
}
