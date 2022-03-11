package com.booqueen.user.review.vo;

import com.booqueen.user.member.vo.MemberProfileVO;

import lombok.Data;

@Data
public class ReviewProfileVO {
	ReviewVO reviewVO;
	MemberProfileVO memberProfileVO;
}
