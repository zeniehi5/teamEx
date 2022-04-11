<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.error-container {
    height: 690px;
}
.error-top {
	height: 80px;
	min-height: auto;
	/* background-color: #ebf3ff; */
	background-color: #ebf3ff54;
	display: flex;
	align-items: center;
	width: 100%;
}
.error-top-title {
	width: 100%;
	text-align: center;
	color: #383838;
	font-size: 15px;
	font-weight: 700;
}
.error-main {
	background-image: url(https:\2f\2f cc-prod.scene7.com\2fis\2fimage\2f CCProdAuthor\2f 404-1440x612_edge2?$pjpeg$\26jpegSize=100\26wid=599);
	background-size: cover;
    height: 100%;
}
.error-main-img {
	padding: 78px 100px;
}
.error-main-title {
	font-size: 36px;
	font-weight: 700;
	letter-spacing: 0;
	line-height: 1.3;
	margin-bottom: 0;
	margin-top: 0;
	text-transform: none;
}
.error-main-sub {
	font-size: 20px;
	font-weight: 400;
	line-height: 1.5;
	font-style: italic;
}
.homepage-div {
    margin-top: 20px;
    font-size: 16px;
    font-weight: 600;
}
.homepage-btn {
	color: #1f4e8f;
	text-decoration: none;
}
.footer-top1 {
	margin-top: 0!important;
}
.section {
	display: none!important;
}
</style>
<body>

	<jsp:include page="/WEB-INF/user/member/header.jsp"/>
	
	<div class="error-container">
		<div class="error-top">
			<div class="error-top-title">500 ERROR PAGE</div>
		</div>
		<div class="error-main">
			<div class="error-main-img">
				<!-- Internal Server Error -->
				<div class="error-main-title">This page isn't working</div>
				<div class="error-main-sub">Sorry, currently unable to handle this request.</div>
				<div class="homepage-div"><a class="homepage-btn" href="${contextPath}/index.do">Go to homepage ></a></div>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/user/member/footer.jsp"/>
	
</body>
</html>