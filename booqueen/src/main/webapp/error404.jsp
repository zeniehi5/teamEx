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
	/* background-image: url(https:\2f\2f cc-prod.scene7.com\2fis\2fimage\2f CCProdAuthor\2f 404-1440x612_edge2?$pjpeg$\26jpegSize=100\26wid=599); */
	/* background-size: cover; */
}
.error-main-img {
	padding: 50px 80px;
	height: 526px;
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
</style>
<body>

	<jsp:include page="/WEB-INF/user/member/header.jsp"/>
	
	<div class="error-container">
		<div class="error-top">
			<div class="error-top-title">404 ERROR PAGE</div>
		</div>
		<div class="error-main">
			<div class="error-main-img">
				<div class="error-main-title">These are uncharted waters.</div>
				<div class="error-main-sub">Sorry, that page can't be found</div>
			</div>
		</div>
	</div>
</body>
</html>