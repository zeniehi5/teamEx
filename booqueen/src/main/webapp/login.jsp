<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booqueen.com · 로그인</title>
<link rel="stylesheet"
	href="${contextPath}/resources/partner/css/login.css">
</head>
<body>
	<form action="login.pdo" method="post">
		<div class="container">
			<header>
				<span id="logo"> <a href="${contextPath}/home.jsp"><img
						src="https://s3.ap-northeast-2.amazonaws.com/booqueen.com/Booqueen.com.png"></a>
				</span>
				<nav>
					<ul id="topMenu">
						<li><a href="${contextPath}/login.jsp">로그인</a></li>
						<li><a href="${contextPath}/register.jsp">회원가입</a></li>
					</ul>
				</nav>
			</header>
		</div>
		<main class="contents">
			<h2>로그인하여 숙소를 관리하세요</h2>
			<br />
			<h4>사용자명</h4>
			<input type="text" name="email" id="email" class="text"
				placeholder="&nbsp;&nbsp;&nbsp;'로그인 이름' 및 '로그인 ID와 동일"><br />
			<input type="submit" name="continue" id="continue" value="다음"><br />
			<br /> <a href="/web/partner/register/FindID.jsp" id="find">로그인할
				수 없나요?</a><br />
			<br />
			<hr>
			<br />
			<h5>
				숙소 운영 및 엑스트라넷에 관한 질문이 있으신가요? <a href="#">파트너 지원 센터</a>에서 자세한 사항을
				확인해보시기 바랍니다.
			</h5>
			<br />
			<br /> <input type="button" name="login" id="login" value="파트너 계정 등록"
				onClick="location.href='${pageContext.request.contextPath}/register.jsp'">
			<br />
			<br />
			<hr>
			<br />
			<h5>
				로그인하거나 회원으로 가입하시면 당사 <a href="#">이용약관</a>및 <a href="#">개인정보 보호
					정책</a>에 동의하시는 것으로 간주됩니다.
			</h5>
			<br />
			<hr>
			<br />
			<h6>© All rights reserved. Booqueen.com 및 Booqueen.com 로고는 한국 및
				또는 다른 국가에서 Booqueen.com, LP의 상표 또는 등록 상표입니다. 기타 모든 상표는 해당 소유권자의
				자산입니다.</h6>
		</main>

	</form>
</body>
</html>