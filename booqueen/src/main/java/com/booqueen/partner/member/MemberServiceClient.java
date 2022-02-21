package com.booqueen.partner.member;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MemberServiceClient {
	
	public static void main(String[] args) {
		
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		
		MemberService memberService = (MemberService) container.getBean("memberService");
		
		MemberVO vo = new MemberVO();
		vo.setEmail("aaaa@aa.com");
		
		MemberVO member = memberService.getMember(vo);
		
		if(member != null) {
			System.out.println("DB email : " + member.getEmail());
			System.out.println("DB password : " + member.getPassword());
			System.out.println("DB lastname : " + member.getLastName());
			System.out.println("DB firstname : " + member.getFirstName());
			System.out.println("DB telephone : " + member.getTelephone());
			System.out.println("DB active : " + member.getActive());
		} else {
			System.out.println("¾ÈµÇ³×");
		}
		
		container.close();
	}

}
