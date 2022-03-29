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

		String subject = (String) request.getParameter("subject"); // 硫붿씪 �젣紐�
		String message = (String) request.getParameter("message"); // 硫붿씪 �궡�슜

		// SMTP �꽌踰� �꽕�젙
		final String host = "smtp.gmail.com"; // �궗�슜�븷 smtp host, naver�씪硫� smtp.naver.com
		final String accountId = "#";
		final String accountPwd = "#";
		final int port = 465; // SMTP �룷�듃

		String receiver = session.getAttribute("email").toString(); // 諛쏅뒗�궗�엺 �씠硫붿씪
		String sender = "xodnjs1009@gmail.com"; // 蹂대궡�뒗�궗�엺 �씠硫붿씪

		// Property �젙蹂� �깮�꽦
		Properties props = System.getProperties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		// �궗�슜�옄 �씤利�
		Session mailsession = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(accountId, accountPwd);
			}
		});
		mailsession.setDebug(true);

		Message mimeMessage = new MimeMessage(mailsession); // MimeMesage �깮�꽦
		mimeMessage.setFrom(new InternetAddress(sender)); // 蹂대궡�뒗 EMAIL (�젙�솗�엳 �쟻�뼱�빞 SMTP �꽌踰꾩뿉�꽌 �씤利� �떎�뙣�릺吏� �븡�쓬)
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
				+ "<div>" + " <h2>�궡 �씠硫붿씪 二쇱냼 �씤利�</h2>" + " <p>\"�솗�씤\"�쓣 �겢由��븯�떆硫� �씠硫붿씪 �씤利� 諛� 怨좉컼�떂�쓽 紐⑤뱺 怨꾩젙 �깮�꽦�씠 �셿猷뚮맗�땲�떎.</p>"
				+ "<p>湲곗〈�뿉 蹂� �씠硫붿씪 二쇱냼濡� �삁�빟�븯�뀲�뜕 �궡�뿭�룄 洹몃�濡� �씠 怨꾩젙�뿉 ���옣�맗�땲�떎.</p>" + "</div>" + "<div>"
				+ "<input type=\"submit\" id=\"continue\" value=\"�솗�씤\">" + "<script type=\"text/javascript\">"
				+ "document.getElementById(\"continue\").onclick=function(){location.href=\"http://localhost:8080/web/basic-info.pdo\";};"
				+ "</script>" + "</div>" + " <div class=\"footer\"> " + "<div>" + " <hr>"
				+ "<p>짤 All rights reserved. Booqueen.com </p>" + "<p>�씠 �씠硫붿씪�� Booqueen.com�뿉 �쓽�빐 諛쒖넚�릺�뿀�뒿�땲�떎.</p>" + "</div>"
				+ "</div>" + "</div>" + "</form>" + "</body>" + "</html>";
		mimeMessage.setContent(msgg, "text/html; charset=utf-8");
		Transport.send(mimeMessage); // Transfer
		return "basic-info";
	}
}
