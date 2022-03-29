package com.booqueen.partner.mail.test;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booqueen.partner.member.MemberVO;

@Controller

public class EmailController {
	
	@RequestMapping(value = "/sendMail.pdo", method = RequestMethod.GET)
	public String mailSender(HttpServletRequest request, HttpSession session, MemberVO vo)
			throws AddressException, MessagingException {

		String subject = (String) request.getParameter("subject"); // 메일 제목
		String message = (String) request.getParameter("message"); // 메일 내용

		// SMTP 서버 설정
		final String host = "smtp.gmail.com"; // 사용할 smtp host, naver라면 smtp.naver.com
		final String accountId = "#";
		final String accountPwd = "#";
		final int port = 465; // SMTP 포트

		String receiver = session.getAttribute("email").toString(); // 받는사람 이메일
		String sender = "xodnjs1009@gmail.com"; // 보내는사람 이메일

		// Property 정보 생성
		Properties props = System.getProperties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		// 사용자 인증
		Session mailsession = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(accountId, accountPwd);
			}
		});
		
		mailsession.setDebug(true);

		Message mimeMessage = new MimeMessage(mailsession); // MimeMesage 생성
		mimeMessage.setFrom(new InternetAddress(sender)); // 보내는 EMAIL (정확히 적어야 SMTP 서버에서 인증 실패되지 않음)
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(receiver));

		// Message Setting
		mimeMessage.setSubject(subject);

		String msgg = "";
		msgg = "<!DOCTYPE html>" + "<html lang='ko'>" + "<head>" + "<meta charset=\"UTF-8\">" + "<style type=text/css>"
				+ ".container{" + "    background-color:#003580;" + "    width: 1920px;" + "    height: 100px;"
				+ "}\r\n" + ".container header{\r\n" + "    display: inline;\r\n" + "    height: 150px;\r\n" + "}\r\n"
				+ ".container span a img{\r\n" + "    display: inline-block;\r\n" + "    width: 150px;\r\n"
				+ "    margin-left: 60px;\r\n" + "    margin-top: 30px;\r\n" + "    margin-bottom: -30px;\r\n" + "}\r\n"
				+ ".container nav li{\r\n" + "    display: inline;\r\n" + "    margin-right: 100px;\r\n"
				+ "    margin-bottom: 120px;\r\n" + "}\r\n" + "#continue{\r\n" + "    width: 60%;\r\n"
				+ "    height: 35pt;\r\n" + "    margin-top: 20pt;\r\n" + "    background-color: #0071c2;\r\n"
				+ "    border-color: #0071c2;\r\n" + "    color: white;\r\n" + "    font-size: 12pt;\r\n"
				+ "    border: none;\r\n" + "		cursor: pointer;\r\n" + "}\r\n" + "div p{\r\n"
				+ "	margin-top: 5px;\r\n" + "}\r\n" + ".mail{\r\n" + "	margin-left: 30%;\r\n"
				+ "	margin-top: 50px;\r\n" + "}\r\n" + ".footer{\r\n" + "	margin-top: 3%;\r\n" + "	width: 60%;\r\n"
				+ "}\r\n" + ".footer hr{\r\n" + "	width: auto;\r\n" + "	opacity: 30%;\r\n" + "}\r\n"
				+ ".footer p {\r\n" + "	text-align: center;\r\n" + "}" + "</style>"
				+ "<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\">" + "</script>"
				+ "</head>" + "<body>" + "<div class=\"container\">\r\n" + "            <header>\r\n"
				+ "                <span id=\"logo\">\r\n" + "                    <a href=\"#\">\r\n"
				+ "                        <img src=\"/https://s3.ap-northeast-2.amazonaws.com/booqueen.com/Booqueen.com.png\">\r\n"
				+ "                    </a>\r\n" + "                </span>           \r\n"
				+ "            </header> \r\n" + "        </div>"
				+ "<form action=\"http://localhost:8080/web/basic-info.pdo\" method=\"POST\">" + "<div class=\"mail\">"
				+ "<div>" + " <h2>내 이메일 주소 인증</h2>" + " <p>\"확인\"을 클릭하시면 이메일 인증 및 고객님의 모든 계정 생성이 완료됩니다.</p>"
				+ "<p>기존에 본 이메일 주소로 예약하셨던 내역도 그대로 이 계정에 저장됩니다.</p>" + "</div>" + "<div>"
				+ "<input type=\"submit\" id=\"continue\" value=\"확인\">" + "<script type=\"text/javascript\">"
				+ "document.getElementById(\"continue\").onclick=function(){location.href=\"http://localhost:8080/web/basic-info.pdo\";};"
				+ "</script>" + "</div>" + " <div class=\"footer\"> " + "<div>" + " <hr>"
				+ "<p>© All rights reserved. Booqueen.com </p>" + "<p>이 이메일은 Booqueen.com에 의해 발송되었습니다.</p>" + "</div>"
				+ "</div>" + "</div>" + "</form>" + "</body>" + "</html>";
		mimeMessage.setContent(msgg, "text/html; charset=utf-8");
		Transport.send(mimeMessage); // Transfer
		return "verify";
	}
}
