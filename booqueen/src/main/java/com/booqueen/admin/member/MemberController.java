package com.booqueen.admin.member;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.booqueen.admin.member.impl.MemberServiceImpl;
import com.booqueen.user.member.vo.MemberProfileVO;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl memberServiceImpl;
	
	@RequestMapping(value = "/userMember.mdo", method=RequestMethod.GET)
	public String userMember(Model model) {
	
		List<com.booqueen.user.member.MemberVO> userList = memberServiceImpl.getUserMember();
		model.addAttribute("userList", userList);
		
		// 전날 가입자 수
		int today = Calendar.getInstance().get(Calendar.DATE); // 오늘 일
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		int user_since_day = 0;
		int joined_yesterday = 0;
		
		for (int i=0; i<userList.size(); i++) {
			user_since_day = Integer.parseInt(dateFormat.format(userList.get(i).getSince()).substring(8));
			if ((user_since_day+1) == today) {
				joined_yesterday += 1;
			}
		}
		
		model.addAttribute("joined_yesterday", joined_yesterday);
		
		
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
	
	public MemberProfileVO getProfile(String userid) throws Exception {
		MemberProfileVO profile = memberServiceImpl.getProfileByUserid(userid);
		return profile;
	}
	
	@RequestMapping(value = "/userMemberDetail.mdo", method=RequestMethod.GET)
	public String userMemberDetail(HttpSession session, @RequestParam("userid") String userid, Model model) throws Exception {
		
		List<UserVO> userVO = memberServiceImpl.getUserInfoDetail(userid);
		model.addAttribute("userVO", userVO);
		
		MemberProfileVO profile = getProfile(userid);
		model.addAttribute("profile", profile);
		
		return "userMemberDetail";
	}
	
}
