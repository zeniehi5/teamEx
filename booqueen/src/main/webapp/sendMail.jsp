<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="resources/js/jquery-1.12.0.js"></script>
</head>
<body>
	<form action="sendMail.pdo" method="POST">
		<header>
			<div class="container">

				<span id="logo"> <a href="#"> <img src="/images/logo.png">
				</a>
				</span>
			</div>
		</header>
		<main>
			<div class="mail">
				<div>
					<h2>내 이메일 주소 인증</h2>
					<p>방금 생성하신 계정의 이메일 주소 : ${email}</p>
					<p>"확인"을 클릭하시면 이메일 인증 및 고객님의 모든 계정 생성이 완료됩니다.</p>
					<p>기존에 본 이메일 주소로 예약하셨던 내역도 그대로 이 계정에 저장됩니다.</p>
				</div>
				<div>
					<input type="submit" id="continue" value="확인">
				</div>

				<div class="footer">
					<div>
						<hr>
						<p>© All rights reserved. Booqueen.com</p>
						<p>이 이메일은 Booqueen.com에 의해 발송되었습니다.</p>
					</div>
				</div>
			</div>
		</main>
		</form>
</body>
</html>

