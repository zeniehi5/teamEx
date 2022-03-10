<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원가입</title>
	<link rel="stylesheet" href="${contextPath}/resources/user/css/signup.css">
	<link rel="stylesheet" href="${contextPath}/resources/user/css/test.css">
	
</head>
<body>
	<jsp:include page="/WEB-INF/user/member/header.jsp"/>

	<div class="container">
		<div class="signup-top">
			<div class="signup-title">
				<span>부퀸닷컴에 오신 것을 환영합니다 !</span>
				<div class="title">회원가입</div>
			</div>
			<!-- <button class="settings-avatar">
				<span class="avatar">
					<div class="my-avatar"></div>
					<span class="edit-icon"><i class="bi-camera"></i></span>
				</span>
			</button> -->
		</div>

		<form class="signup-table" enctype="multipart/form-data" action="${contextPath}/member/register.do" method="post">

			<!-- 이메일 주소 또는 아이디 -->
			<div class="signup-row">
				<div class="signup-container">
					<div class="container-label"><h2>아이디</h2></div>
					<div class="container-element">
						<div class="element">
							<input type="text" placeholder="booqueen@bq.com" name="userid">
						</div>
					</div>
				</div>
			</div>

			<!-- 비밀번호 -->
			<div class="signup-row">
				<div class="signup-container">
					<div class="container-label"><h2>비밀번호</h2></div>
					<div class="container-element">
						<div class="element">
								<input type="password" placeholder="" id="password" name="passwd">
						</div>
					</div>
				</div>
			</div>

			<!-- 이름 -->
			<div class="signup-row">
				<div class="signup-container">
					<div class="container-label"><h2>이름</h2></div>
					<div class="container-element">
						<div class="element">
								<input type="text" placeholder="이름" id="name" name="name">
						</div>
					</div>
				</div>
			</div>

			<!-- 성별 -->
			<div class="signup-row">
				<div class="signup-container">
					<div class="container-label"><h2>성별</h2></div>
					<div class="container-element">
						<div class="element element-gender">
							<select id="gender" name="gender">
								<option value="gender-default">선택</option>
								<option value="남성">남성</option>
								<option value="여성">여성</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 전화번호 -->
			<div class="signup-row">
				<div class="signup-container">
					<div class="container-label"><h2>전화번호</h2></div>
					<div class="container-element">
						<div class="element element-phone">
							<select id="phone1" name="phone1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="012">016</option>
								<option value="012">017</option>
								<option value="012">018</option>
								<option value="012">019</option>
							</select>
							<div class="hyphen">-</div>
							<input type="text" placeholder="0000" id="phone2" maxlength="4" name="phone2">
							<div class="hyphen">-</div>
							<input type="text" placeholder="0000" id="phone3" maxlength="4" name="phone3">
						</div>
					</div>
				</div>
			</div>

			<!-- 생년월일 -->
			<div class="signup-row signup-row-last">
				<div class="signup-container">
					<div class="container-label"><h2>생년월일</h2></div>
					<div class="container-element">
						<div class="element element-birth">
							<input type="text" placeholder="YYYY" id="birth-year" maxlength="4" name="birth_year">
							<input type="text" placeholder="MM" id="birth-month" maxlength="2" name="birth_month">
							<input type="text" placeholder="DD" id="birth-day" maxlength="2" name="birth_day">
						</div>
					</div>
				</div>
			</div>

			<div class="signup-hr"><div></div></div>
			<div class="signup-button">
				<button type="submit" class="signup-btn">회원 가입하기</button>
			</div>
			

			<!-- image -->

		</form>
		
	</div>

	<!-- <div id="footers"></div> -->
</body>
</html>