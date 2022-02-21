<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${contextPath}/resources/user/css/index-copy.css">
<link rel="stylesheet" href="${contextPath}/resources/user/css/header-member.css">	
<link rel="stylesheet" href="${contextPath}/resources/user/css/loginForm.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script src="https://kit.fontawesome.com/d2826a4f92.js" crossorigin="anonymous"></script>

</head>
<body>
	<c:choose>
		<c:when test="${isLogOn == true  && member != null}">
			<header
				class="bui-header bui-header--logo-large bui-u-hidden-print bui-header--rounded-tabs">
				<nav class="bui-header__bar">
					<div class="bui-header__main">
						<div class="bui-header__logo">
							<a href="${contextPath}/member/index.do"> <img
								src="${contextPath}/resources/user/images/logo1.png">
							</a>
						</div>
					</div>

					<div class="bui-group">

						<div class="bui-group__item">
							<a><i class="bi bi-question-circle"></i></a>
						</div>

						<div class="bui-group__item">
							<i class="bi bi-chat"></i>
						</div>

						<div class="bui-group__item">
							<i class="bi bi-bell"></i>
						</div>

						<div class="bui-group__item">
							<a class="bui-button bui-button--light bui-traveller-header__product-action" href="#">
								<button class="header-button">내 숙소 등록</button>
							</a>
						</div>

						<div id="dropdown" class="bui-group__item" onclick="dropDown()">
							<div class="bui-dropdown bui-dropdown--end">
								<a
									href="#"
									type="button"> <span class="bui-button__text">
										<div class="bui-avatar-block">
											<div
												class="bui-avatar bui-avatar--accent bui-avatar--outline-accent">
												<img class="bui-avatar__image"
													src="https://graph.facebook.com/v2.9/1770217623123662/picture?type=square&amp;height=64&amp;width=64">
											</div>
											<div class="bui-avatar-block__text">
												<span class="bui-avatar-block__title"
													id="profile-menu-trigger--title"> ${member.name} </span> <span
													class="bui-avatar-block__subtitle"
													id="profile-menu-trigger--content"> <span
													class="bui-f-color-complement"> ${member.userid} </span>
												</span>
											</div>
										</div>
								</span>
								</a>
							</div>
						</div>
					</div>
					<div class="header-dropdown-content" id="myAccount">
					<ul class="header-dropdown-menu-items">
						<li class="header-dropdown-menu-item">
							<a href="${contextPath}/mypage.do" class="header-dropdown-item">
								<span class="header-dropdown-menu-icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#6B6B6B" class="bi bi-person" viewBox="0 0 16 16">
										<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
									</svg>
								</span>
								<span class="header-dropdown-menu-text">계정 관리</span>
							</a>
						</li>
						<li class="header-dropdown-menu-item">
							<a href="#" class="header-dropdown-item">
								<span class="header-dropdown-menu-icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#6B6B6B" class="bi bi-building" viewBox="0 0 16 16">
										<path fill-rule="evenodd" d="M14.763.075A.5.5 0 0 1 15 .5v15a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5V14h-1v1.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V10a.5.5 0 0 1 .342-.474L6 7.64V4.5a.5.5 0 0 1 .276-.447l8-4a.5.5 0 0 1 .487.022zM6 8.694 1 10.36V15h5V8.694zM7 15h2v-1.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .5.5V15h2V1.309l-7 3.5V15z"/>
										<path d="M2 11h1v1H2v-1zm2 0h1v1H4v-1zm-2 2h1v1H2v-1zm2 0h1v1H4v-1zm4-4h1v1H8V9zm2 0h1v1h-1V9zm-2 2h1v1H8v-1zm2 0h1v1h-1v-1zm2-2h1v1h-1V9zm0 2h1v1h-1v-1zM8 7h1v1H8V7zm2 0h1v1h-1V7zm2 0h1v1h-1V7zM8 5h1v1H8V5zm2 0h1v1h-1V5zm2 0h1v1h-1V5zm0-2h1v1h-1V3z"/>
									</svg>
								</span>
								<span class="header-dropdown-menu-text">예약 & 이용후기</span>
							</a>
						</li>
						<li class="header-dropdown-menu-item">
							<a href="#" class="header-dropdown-item">
								<span class="header-dropdown-menu-icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#6B6B6B" class="bi bi-heart" viewBox="0 0 16 16">
										<path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
									</svg>
								</span>
								<span class="header-dropdown-menu-text">위시리스트</span>
							</a>
						</li>
						<li class="header-dropdown-menu-item">
							<a href="${contextPath}/logout.do" class="header-dropdown-item">
								<span class="header-dropdown-menu-icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#6B6B6B" class="bi bi-arrow-bar-left" viewBox="0 0 16 16">
										<path fill-rule="evenodd" d="M12.5 15a.5.5 0 0 1-.5-.5v-13a.5.5 0 0 1 1 0v13a.5.5 0 0 1-.5.5zM10 8a.5.5 0 0 1-.5.5H3.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L3.707 7.5H9.5a.5.5 0 0 1 .5.5z"/>
									</svg>
								</span>
								<span class="header-dropdown-menu-text">로그아웃</span>
							</a>
						</li>
					</ul>
				</div>
				</nav>
				
				
				
			</header>
		</c:when>
		<c:otherwise>
			<div class="header">
				<nav class="navbar">
				<a href="${contextPath}/member/index.do">
					<img src="${contextPath}/resources/user/images/logo1.png" class="logo"></a>
					<div class="nav-links">
						<div class="nav-top question">
							<a href="#"><span><i class="bi bi-question-circle"></i></span></a>
						</div>
						<div class="nav-top">
							<a href="#" class="register-btn">내 숙소 등록</a>
						</div>
						<div class="nav-top">
							<a href="${contextPath}/member/registerForm.do" class="signup-btn">가입하기</a>
						</div>
						<!-- 페이지 이동 -->
						<div class="nav-top">
							<a href="${contextPath}/member/loginForm.do" class="login-btn"
								id="loginBtn">로그인</a>
						</div>
						<!-- 창 띄우기 -->
					</div>
				</nav>
			</div>
		</c:otherwise>
	</c:choose>
	<script>
	function dropDown() {
		  var x = document.getElementById("myAccount");
		  if (x.style.display === "none") {
		    x.style.display = "block";
		  } else {
		    x.style.display = "none";
		  }
		}
	</script>		
</body>
</html>