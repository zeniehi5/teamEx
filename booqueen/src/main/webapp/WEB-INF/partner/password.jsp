<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/partner/css/password.css">
</head>
<body>
<form action="password.pdo" method="post">
	<div class="container">
		<header>
			<span id="logo">
				<a href="#"><img src="${contextPath}/resources/partner/images/logo.png" class="header_logo"></a>
			</span>
		</header>
	</div>
	<main class="contents">
		<h1>비밀번호를 입력하세요</h1>
		<h4>Booqueen.com 계정 (${email})의 비밀번호를 입력하세요.</h4>
		<br/>
		<h4>비밀번호</h4>
		<input type="hidden" name="email" value="${email}">
		<input type="password" name="password" id="password" class="text"><br/>
		<a href="#"><input type="submit" name="continue" id="continue" value="로그인"></a><br><br>
		<a href="${pageContext.request.contextPath}/register/Findpasswd.jsp" id="find">비밀번호를 잊으셨나요?</a><br><br>
      	<hr>
      	<br>
      	<h5>로그인하거나 회원으로 가입하시면 당사 <a href="#">이용약관</a>및 <a href="#">개인정보 보호 정책</a>에 동의하시는 것으로 간주됩니다.</h5>
		<br>
		<hr>
		<br>
		<h6>© All rights reserved. Booqueen.com 및 Booqueen.com 로고는 한국 및 또는 다른 국가에서 Booqueen.com, LP의 상표 또는 등록 상표입니다. 기타 모든 상표는 해당 소유권자의 자산입니다.</h6>
	</main>
</form>
</body>
</html>