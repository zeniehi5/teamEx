<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${contextPath}/resources/user/css/loginForm.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="/WEB-INF/user/member/header.jsp"/>
		<!-- 로그인 -->
			   <!-- The Modal -->
			   <div id="login" class="login">
		
		      <!-- Modal content -->
		      <div class="login-modal">
		         <form class="login-modal-content" action="login.do" method="post">
		            <div class="login-modal-top">
		               <h2>부퀸닷컴에 오신 것을 환영합니다.</h2>
		            </div>
		            <div class="login-modal-center">
		               <div class="login-modal-id">
		                  <div class="login-id"><span>아이디</span></div>
		                  <div class="login-input-id">
		                     <input type="text" placeholder="booqueen@bq.com" id="loginId" name="userid">
		                  </div>
		               </div>
		               <div class="login-modal-pw">
		                  <div class="login-pw"><span>비밀번호</span></div>
		                  <div class="login-input-pw">
		                     <input type="password" placeholder="" id="loginPw" name="passwd">
		                  </div>
		               </div>
		            </div>
		            <div class="login-modal-button">
		               <button type="submit" class="login-btn-real" id="loginBtnReal">로그인</button>
		            </div>
		         </form>
		      </div>
		   </div>
</body>
</html>