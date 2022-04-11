<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="layoutSidenav_nav">
		<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<div class="nav">
					<div class="sb-sidenav-menu-heading">Interface</div>
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts2" aria-expanded="false" aria-controls="collapseLayouts">
						<span class="sb-nav-link-icon"><i class="fas fa-columns"></i></span>
						<span>회원 관리</span>
						<span class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></span>
					</a>
					<div class="collapse" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="${contextPath }/userMember.mdo">회원 목록</a>
							<a class="nav-link" href="${contextPath }/reportedUser.mdo">신고 회원 관리</a> 
						</nav>
					</div>
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts5" aria-expanded="false" aria-controls="collapseLayouts">
						<span class="sb-nav-link-icon"><i class="fas fa-columns"></i></span>
						<span>호텔 관리</span>
						<span class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></span>
					</a>
					<div class="collapse" id="collapseLayouts5" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="${contextPath }/hotelList.mdo">호텔 목록</a>
						</nav>
					</div>
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts3" aria-expanded="false" aria-controls="collapseLayouts">
						<span class="sb-nav-link-icon"><i class="fas fa-columns"></i></span>
						<span>파트너 관리</span>
						<span class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></span>
					</a>
					<div class="collapse" id="collapseLayouts3" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="${contextPath }/partnerMember.mdo">파트너 목록</a>
							<a class="nav-link" href="${contextPath }/blockPartner.mdo">차단된 파트너</a>
						</nav>
					</div>
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts4" aria-expanded="false" aria-controls="collapseLayouts">
						<span class="sb-nav-link-icon"><i class="fas fa-columns"></i></span>
						<span>사이트 관리</span>
						<span class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></span>
					</a>
					<div class="collapse" id="collapseLayouts4" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="${contextPath }/faq.mdo">문의 게시판</a>
							<a class="nav-link" href="${contextPath }/banner.mdo">추천 여행지(배너)</a>
							<a class="nav-link" href="${contextPath }/terms.mdo">이용 약관 관리</a>
						</nav>
					</div>
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
						<span class="sb-nav-link-icon"><i class="fas fa-columns"></i></span>
						<span>재무</span>
						<span class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></span>
					</a>
					<div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="${contextPath }/reservationStatus.mdo">예약 현황 관리</a>
							<a class="nav-link" href="${contextPath }/transactionHistory.mdo">거래 내역 리스트</a>
							<a class="nav-link" href="${contextPath }/payment.mdo">대금 지급 관리</a>
						</nav>
					</div>
				</div>
			</div>
			<div class="sb-sidenav-footer">
				<div class="small">Logged in as:</div>
				Booqueen.com
			</div>
		</nav>
	</div>
</body>
</html>