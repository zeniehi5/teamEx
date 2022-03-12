<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>searchresults</title>
	<link rel="stylesheet" href="${contextPath}/resources/user/css/searchresults.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	<script src="https://kit.fontawesome.com/fdb0bc6f32.js" crossorigin="anonymous"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=29b5f78cb856dc4d592f3c3f87388524"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/user/member/header.jsp"/>

	<div class="container">
		<!-- ------------------------- 검색 지역 -------------------------  -->
		<div class="search-result">
			<ul class="search-info">
				<li class="search"><a href="#" class="home">홈</a></li>
				<li class="search">
					<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#000" class="bi bi-chevron-right arrow" viewBox="0 0 16 16">
						<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
					</svg>
					<a href="#" class="region">${hotelList.get(0).city }</a>
				</li>
				<li class="search">
					<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#000" class="bi bi-chevron-right arrow" viewBox="0 0 16 16">
						<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
					</svg>
					<a href="#" class="result">검색결과</a>
				</li>
			</ul>
		</div>

		<div class="main-container">
			<!-- ------------------------- 검색 필터 -------------------------  -->
			<div class="container-left">
				<div class="searchbox">
					<form action="${contextPath}/searchResult.do" class="searchbox-form">
						<div class="searchbox-search"><h2><span class="searchbox-title">검색</span></h2></div>
						<div class="searchbox-destination">
							<span class="label">여행지/숙소 이름:</span>
							<div class="searchbox-destination-field">
								<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
									<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
								</svg>
								<input type="search" class="searchbox-destination-input" value="${hotelList.get(0).city }" name="keyword">
							</div>
						</div>
						<div class="searchbox-date">
							<div class="checkin-checkout">
								<div class="checkin-date">
									<span class="label">체크인 날짜</span>
									<div class="checkin-field">
										<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-calendar bi-checkin" viewBox="0 0 16 16">
											<path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
										</svg>
										<div class="checkin-select">
											<input class="startdate" id="startdate" type="text" name="daterange" value="2022년 2월 14일 (월)" readonly />
										</div>
										<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-chevron-down chevron-down" viewBox="0 0 16 16">
											<path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
										</svg>
									</div>
								</div>
								<div class="checkout-date">
									<span class="label">체크아웃 날짜</span>
									<div class="checkout-field">
										<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-calendar bi-checkout" viewBox="0 0 16 16">
											<path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
										</svg>
										<div class="checkout-select">
											<input class="enddate" id="enddate" type="text" name="daterange" value="2022년 2월 15일 (화)" readonly />
										</div>
										<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-chevron-down chevron-down" viewBox="0 0 16 16">
											<path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
										</svg>
									</div>
								</div>
								<span class="label">2박 선택</span>
							</div>
							<div class="period">
								<div class="guest">
									<span class="guest-select">
										<span class="adults-count">성인 2명</span> · 
										<span class="children-count">아동 0명</span> · 
										<span class="rooms-count">객실 1개</span>
									</span>
									<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-chevron-down chevron-down" viewBox="0 0 16 16">
										<path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
									</svg>
								</div>
							</div>
						</div>
						
						<div class="searchbox-submit">
							<button class="submit-button" type="submit">
								<span class="submit-text">검색</span>
							</button>
						</div>
					</form>
				</div>
				<div class="map">
					<div class="map-back" style="background-image: url(${contextPath}/resources/user/images/searchresultmap.png)">
						<div class="map-pin"><i class="fas fa-map-marker-alt"></i></div>
						<button class="map-button" id="mapBtn1">
							<span class="map-text">지도에서 보기</span>
						</button>
					</div>
				</div>
				<div class="filter">
					<div class="filter-by"><h2>필터링 기준:</h2></div>
					<div class="filters-group">
						<div class="filters">
							<button class="filters-button" id="filterBudgetBtn">
								<span class="filters-title">
									<h3>내 예산(1박 기준)</h3>
								</span>
								<span class="filter-icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16">
										<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
									</svg>
								</span>
							</button>
							<div id="filterBudgetCheck">
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkbudget1">
									<label class="filter-text" for="checkbudget1">
										\0 - \50,000
									</label>
									<label class="filter-count" for="checkbudget1">
										9
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkbudget2">
									<label class="filter-text" for="checkbudget2">
										\50,000 - \100,000
									</label>
									<label class="filter-count" for="checkbudget2">
										9
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkbudget3">
									<label class="filter-text" for="checkbudget3">
										\100,000 - \150,000
									</label>
									<label class="filter-count" for="checkbudget3">
										9
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkbudget4">
									<label class="filter-text" for="checkbudget4">
										\150,000 - 200,000
									</label>
									<label class="filter-count" for="checkbudget4">
										9
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkbudget5">
									<label class="filter-text" for="checkbudget5">
										\200,000 +
									</label>
									<label class="filter-count" for="checkbudget5">
										9
									</label>
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div class="filters-group">
						<div class="filters">
							<button class="filters-button" id="filterGradeBtn">
								<span class="filters-title">
									<h3>성급</h3>
								</span>
								<span class="filter-icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16">
										<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
									</svg>
								</span>
							</button>
							<div id="filterGradeCheck">
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="1" id="checkGrade1" onchange="makeFilter(this);">
									<label class="filter-text" for="checkGrade1">
										1성급
									</label>
									<label class="filter-count" for="checkGrade1">
										2
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="2" id="checkGrade2" onchange="makeFilter(this);">
									<label class="filter-text" for="checkGrade2">
										2성급
									</label>
									<label class="filter-count" for="checkGrade2">
										2
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="3" id="checkGrade3" onchange="makeFilter(this);">
									<label class="filter-text" for="checkGrade3">
										3성급
									</label>
									<label class="filter-count" for="checkGrade3">
										26
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="4" id="checkGrade4" onchange="makeFilter(this);">
									<label class="filter-text" for="checkGrade4">
										4성급
									</label>
									<label class="filter-count" for="checkGrade4">
										27
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="5" id="checkGrade5" onchange="makeFilter(this);">
									<label class="filter-text" for="checkGrade5">
										5성급
									</label>
									<label class="filter-count" for="checkGrade5">
										19
									</label>
								</div>
								
							</div>
						</div>
					</div>
					
					<hr>
					<div class="filters-group">
						<div class="filters">
							<button class="filters-button" id="filterReviewBtn">
								<span class="filters-title">
									<h3>후기 평점</h3>
								</span>
								<span class="filter-icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16">
										<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
									</svg>
								</span>
							</button>
							<div id="filterReviewCheck">
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkReview1">
									<label class="filter-text" for="checkReview1">
										최고: 9 이상
									</label>
									<label class="filter-count" for="checkReview1">
										6
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkReview2">
									<label class="filter-text" for="checkReview2">
										매우 좋음: 8 이상
									</label>
									<label class="filter-count" for="checkReview2">
										60
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkReview3">
									<label class="filter-text" for="checkReview3">
										좋음: 7 이상
									</label>
									<label class="filter-count" for="checkReview3">
										79
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkReview4">
									<label class="filter-text" for="checkReview4">
										만족: 6 이상
									</label>
									<label class="filter-count" for="checkReview4">
										81
									</label>
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div class="filters-group">
						<div class="filters">
							<button class="filters-button" id="filterFacilitiesBtn">
								<span class="filters-title">
									<h3>호텔 시설</h3>
								</span>
								<span class="filter-icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16">
										<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
									</svg>
								</span>
							</button>
							<div id="filterFacilitiesCheck">
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkFacilities1">
									<label class="filter-text" for="checkFacilities1">
										조식
									</label>
									<label class="filter-count" for="checkFacilities1">
										85
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkFacilities2">
									<label class="filter-text" for="checkFacilities2">
										레스토랑
									</label>
									<label class="filter-count" for="checkFacilities2">
										48
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkFacilities3">
									<label class="filter-text" for="checkFacilities3">
										셔틀
									</label>
									<label class="filter-count" for="checkFacilities3">
										1
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkFacilities4">
									<label class="filter-text" for="checkFacilities4">
										수영장
									</label>
									<label class="filter-count" for="checkFacilities4">
										23
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkFacilities5">
									<label class="filter-text" for="checkFacilities5">
										24시간 프런트 데스크
									</label>
									<label class="filter-count" for="checkFacilities5">
										48
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkFacilities6">
									<label class="filter-text" for="checkFacilities6">
										wifi
									</label>
									<label class="filter-count" for="checkFacilities6">
										48
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkFacilities7">
									<label class="filter-text" for="checkFacilities7">
										피트니스 센터
									</label>
									<label class="filter-count" for="checkFacilities7">
										48
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkFacilities8">
									<label class="filter-text" for="checkFacilities8">
										흡연
									</label>
									<label class="filter-count" for="checkFacilities8">
										48
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkFacilities9">
									<label class="filter-text" for="checkFacilities9">
										라운지 바
									</label>
									<label class="filter-count" for="checkFacilities9">
										48
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkFacilities10">
									<label class="filter-text" for="checkFacilities10">
										스파
									</label>
									<label class="filter-count" for="checkFacilities10">
										48
									</label>
								</div>
								<div class="filter-checkbox">
									<input class="filter-checkbox-input" type="checkbox" value="" id="checkFacilities11">
									<label class="filter-text" for="checkFacilities11">
										주차
									</label>
									<label class="filter-count" for="checkFacilities11">
										48
									</label>
								</div>
							</div>
						</div>
					</div>
				</div> 
			</div>
			<!-- ------------------------- 호텔 목록 -------------------------  -->
			<div class="container-right">
				<div class="title">
					<h2>${hotelList.get(0).city }: 검색된 숙소 <span id="number_hotel">${fn:length(hotelList)}</span>개</h2>
					<button class="mini-map" id="mapBtn2" style="background-image: url(${contextPath}/resources/user/images/searchresultmap.png)";>
						<i class="fas fa-map-marker-alt"></i>
					</button>
				</div>
				<div class="content">
					<div class="orderby">
						<ul class="menubar">
							<li class="menuitem popularity"><a href="#">최다 예약</a></li>
							<li class="menuitem upsort"><a href="#">홈/아파트 먼저</a></li>
							<li class="menuitem price"><a href="#">요금(낮은 순)</a></li>
							<li class="menuitem review-price"><a href="#">최고평점 + 최저가</a></li>
							<li class="menuitem star-highest"><a href="#">성급(높은 순)</a></li>
							<li class="menuitem dropdown" onclick="myFunction()">
								<a href="#">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
										<path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
									</svg>
								</a>
								<div id="myDropdown" class="dropdown-content">
									<a href="#">성급(낮은 순)</a>
									<a href="#">성급 + 요금 순</a>
									<a href="#">도시 중심으로부터의 거리</a>
									<a href="#">고평점 후기가 많은 순</a>
									<a href="#">가장 가까운 해변까지의 거리</a>
									<a href="#">최다 예약</a>
								</div>
							</li>
						</ul>
					</div>

					<!-- 메인 -->
					<div class="hotel-list">
						<div class="ranking">
							<div class="ranking-content">
								<div class="ranking-text">
									파트너가 지불하는 수수료와 그 외 다른 요소에 따라 숙소의 검색 순위가 달라질 수 있습니다.
									<a href="#">더 알아보기</a>.
								</div>
								<div class="ranking-button">
									<button id="rankingBtn">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#6B6B6B" class="bi bi-x" viewBox="0 0 16 16">
											<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
										</svg>
									</button>
								</div>
							</div>
						</div>
						
						<div id="content_from_ajax">
						<c:forEach var="hotel" items="${hotelList}" varStatus="status">
						
						<!-- list start -->
						<a href="${contextPath}/hotelInfo.do?serialNumber=${hotel.serialnumber}" target="_blank">
						<div class="list">
							<div class="hotel-info">
								<div class="hotel-image">
									<a href="${contextPath}/hotelInfo.do?serialNumber=${hotel.serialnumber}" target="_blank">
									
									<c:if test="${!empty hotel.hotelImgVO.file_url }">
										<img class="s3-img" src="${hotel.hotelImgVO.file_url }">
									</c:if>
									<c:if test="${empty hotel.hotelImgVO.file_url }">
										<img class="s3-img" src="https://booqueen.s3.ap-northeast-2.amazonaws.com/hotel/default-hotel-img.png">
									</c:if>
									</a>
								</div>
								<div class="hotel-content">
									<div class="hotel-top">
										<div class="hotel-title">
											<div class="hotel-name">
												<a href="${contextPath}/hotelInfo.do?serialNumber=${hotel.serialnumber}" target="_blank"><h3>${hotel.hotelname }</h3></a>								
												<div class="star">
													<c:if test="${hotel.star+0 == '5'}">
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													</c:if>	
													<c:if test="${hotel.star+0 == '4'}">
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													</c:if>
													<c:if test="${hotel.star+0 == '3'}">
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													</c:if>
													<c:if test="${hotel.star+0 == '2'}">
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													</c:if>
													<c:if test="${hotel.star+0 == '1'}">
													<span>
														<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
															<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
														</svg>
													</span>
													</c:if>
												</div>
											</div>
											<div class="hotel-location">
												<a href="#">
													<span>
														<span class="hotel-address">${hotel.city }</span>
														<span class="hotel-map">지도에서 표시</span>
													</span>
												</a>
											</div>
										</div>
										<div class="reviews">
											<div class="review">
												<div class="review-title">좋음</div>
												<div class="review-subtitle">${hotel.reviewAvgVO.count }개 이용 후기</div>
											</div>
											<div class="grade">${hotel.reviewAvgVO.scoreAvg }</div>
										</div>
									</div>
									<div class="hotel-bottom">
										<div class="room">
											<div class="room-left">
												<div class="room-info">
													<div class="room-name">프리미어 트윈룸</div>
													<div class="bed-count">더블침대 2개</div>
													<div class="cancel">
														<div class="cancel1">무료취소 • 선결제 필요 없음</div>
														<div class="cancel2">나중에 취소 가능한 최저가를 지금 잡아놓으세요.</div>
													</div>
													<div class="left">우리 사이트에 이 요금으로 남은 객실 단 3개</div>
												</div>
											</div>
											<div class="room-right">
												<div class="price">
													<div class="option-info">1박, 성인 2명</div>
													<div class="option-price">
														<span class="fixed-price">\402,770</span>
														<span class="sale-price">\145,000</span>
													</div>
													<div class="price-info">세금 및 기타 요금 포함</div>
												</div>
												<div class="see-availability">
													<a href="#">
														<span class="move-detail">예약 가능 옵션 보기</span>
														<span>
															<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
																<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
															</svg>
														</span>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</a>
						<!-- list end -->
						</c:forEach>
						
						</div>
					</div>
				</div>

				<!-- 검색된 숙소, 번호 -->
				<div class="container-bottom">
					<div class="found-room">제주도: 검색된 숙소 456개</div>
					<div class="showing">
						<div class="pagination">
							<a href="#">&laquo;</a>
							<a class="active" href="#">1</a>
							<a href="#">2</a>
							<a href="#">3</a>
							<a href="#">4</a>
							<a href="#">5</a>
							<a href="#">6</a>
							<a href="#">&raquo;</a>
						</div>
						<div class="show-list">
							<span>1-25 페이지</span>
						</div>
					</div>
				</div>
			</div>

			
		</div>
	</div>

	<!-- The Modal -->
	<div id="modalMap" class="modal-map">

		<div class="close_map">&times;</div>
		<!-- Modal Content -->
		<div class="modal-content">
			
			<!-- Modal Filter -->
			<!--  
			<div class="map-filter">
				<div class="filter-left">
					<div class="filter-by"><h2>필터링 기준:</h2></div>

					<div class="filters-group">
						<div class="filters">
							<button class="filters-button">
								<span class="filters-title">
									<h3>내 예산(1박 기준)</h3>
								</span>
							</button>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckbudget1">
								<label class="filter-text" for="mapCheckbudget1">
									\0 - \50,000
								</label>
								<label class="filter-count" for="mapCheckbudget1">
									9
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckbudget2">
								<label class="filter-text" for="mapCheckbudget2">
									\50,000 - \100,000
								</label>
								<label class="filter-count" for="mapCheckbudget2">
									9
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckbudget3">
								<label class="filter-text" for="mapCheckbudget3">
									\100,000 - \150,000
								</label>
								<label class="filter-count" for="mapCheckbudget3">
									9
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckbudget4">
								<label class="filter-text" for="mapCheckbudget4">
									\150,000 - 200,000
								</label>
								<label class="filter-count" for="mapCheckbudget4">
									9
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckbudget5">
								<label class="filter-text" for="mapCheckbudget5">
									\200,000 +
								</label>
								<label class="filter-count" for="mapCheckbudget5">
									9
								</label>
							</div>
						</div>
					</div>
					<hr>
					
					<div class="filters-group">
						<div class="filters">
							<button class="filters-button">
								<span class="filters-title">
									<h3>성급</h3>
								</span>
							</button>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="1" id="mapCheckGrade1">
								<label class="filter-text" for="mapCheckGrade1">
									1성급
								</label>
								<label class="filter-count" for="mapCheckGrade1">
									2
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="2" id="mapCheckGrade2">
								<label class="filter-text" for="mapCheckGrade2">
									2성급
								</label>
								<label class="filter-count" for="mapCheckGrade2">
									2
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="3" id="mapCheckGrade3">
								<label class="filter-text" for="mapCheckGrade3">
									3성급
								</label>
								<label class="filter-count" for="mapCheckGrade3">
									26
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="4" id="mapCheckGrade4">
								<label class="filter-text" for="mapCheckGrade4">
									4성급
								</label>
								<label class="filter-count" for="mapCheckGrade4">
									27
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="5" id="mapCheckGrade5">
								<label class="filter-text" for="mapCheckGrade5">
									5성급
								</label>
								<label class="filter-count" for="mapCheckGrade5">
									19
								</label>
							</div>
						</div>
					</div>
					

					
				
					<hr>
					<div class="filters-group">
						<div class="filters">
							<button class="filters-button">
								<span class="filters-title">
									<h3>식사</h3>
								</span>
							</button>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckMeals1">
								<label class="filter-text" for="mapCheckMeals1">
									조식 포함
								</label>
								<label class="filter-count" for="mapCheckMeals1">
									43
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckMeals2">
								<label class="filter-text" for="mapCheckMeals2">
									바베큐
								</label>
								<label class="filter-count" for="mapCheckMeals2">
									42
								</label>
							</div>
							
						</div>
					</div>
					<hr>
					<div class="filters-group">
						<div class="filters">
							<button class="filters-button">
								<span class="filters-title">
									<h3>명소</h3>
								</span>
							</button>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckLandmark1">
								<label class="filter-text" for="mapCheckLandmark1">
									천제연폭포
								</label>
								<label class="filter-count" for="mapCheckLandmark1">
									9
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckLandmark2">
								<label class="filter-text" for="mapCheckLandmark2">
									정방폭포
								</label>
								<label class="filter-count" for="mapCheckLandmark2">
									2
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckLandmark3">
								<label class="filter-text" for="mapCheckLandmark3">
									성산일출봉
								</label>
								<label class="filter-count" for="mapCheckLandmark3">
									1
								</label>
							</div>
						</div>
					</div>
					<hr>
					<div class="filters-group">
						<div class="filters">
							<button class="filters-button">
								<span class="filters-title">
									<h3>후기 평점</h3>
								</span>
							</button>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckReview1">
								<label class="filter-text" for="mapCheckReview1">
									최고: 9 이상
								</label>
								<label class="filter-count" for="mapCheckReview1">
									6
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckReview2">
								<label class="filter-text" for="mapCheckReview2">
									매우 좋음: 8 이상
								</label>
								<label class="filter-count" for="mapCheckReview2">
									60
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckReview3">
								<label class="filter-text" for="mapCheckReview3">
									좋음: 7 이상
								</label>
								<label class="filter-count" for="mapCheckReview3">
									79
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckReview4">
								<label class="filter-text" for="mapCheckReview4">
									만족: 6 이상
								</label>
								<label class="filter-count" for="mapCheckReview4">
									81
								</label>
							</div>
						</div>
					</div>
					<hr>
					<div class="filters-group">
						<div class="filters">
							<button class="filters-button">
								<span class="filters-title">
									<h3>호텔 시설</h3>
								</span>
							</button>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckFacilities1">
								<label class="filter-text" for="mapCheckFacilities1">
									주차장
								</label>
								<label class="filter-count" for="mapCheckFacilities1">
									85
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckFacilities2">
								<label class="filter-text" for="mapCheckFacilities2">
									레스토랑
								</label>
								<label class="filter-count" for="mapCheckFacilities2">
									48
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckFacilities3">
								<label class="filter-text" for="mapCheckFacilities3">
									반려동물 허용
								</label>
								<label class="filter-count" for="mapCheckFacilities3">
									1
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckFacilities4">
								<label class="filter-text" for="mapCheckFacilities4">
									룸서비스
								</label>
								<label class="filter-count" for="mapCheckFacilities4">
									23
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckFacilities12">
								<label class="filter-text" for="mapCheckFacilities12">
									24시간 프런트 데스크
								</label>
								<label class="filter-count" for="mapCheckFacilities12">
									48
								</label>
							</div>
						</div>
					</div>
					<hr>
					<div class="filters-group">
						<div class="filters">
							<button class="filters-button">
								<span class="filters-title">
									<h3>객실 시설</h3>
								</span>
							</button>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckRoom1">
								<label class="filter-text" for="mapCheckRoom1">
									주방/간이 주방
								</label>
								<label class="filter-count" for="mapCheckRoom1">
									43
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckRoom2">
								<label class="filter-text" for="mapCheckRoom2">
									전용 욕실
								</label>
								<label class="filter-count" for="mapCheckRoom2">
									87
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckRoom3">
								<label class="filter-text" for="mapCheckRoom3">
									에어컨
								</label>
								<label class="filter-count" for="mapCheckRoom3">
									86
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckRoom4">
								<label class="filter-text" for="mapCheckRoom4">
									스파 욕조
								</label>
								<label class="filter-count" for="mapCheckRoom4">
									22
								</label>
							</div>
							<div class="filter-checkbox">
								<input class="filter-checkbox-input" type="checkbox" value="" id="mapCheckRoom5">
								<label class="filter-text" for="mapCheckRoom5">
									노트북 책상 있음
								</label>
								<label class="filter-count" for="mapCheckRoom5">
									36
								</label>
							</div>
						</div>
					</div>
					
					
					
	
				</div>

			</div>
			-->
			<!-- Modal List -->
			<div class="map-list">
				<!-- <div class="sorter-hotellist"> -->
				<div id="map_result"></div>
				<div class="map-sorter">
					<div class="map-dropdown">
						<button class="dropdown-btn" id="dropdownBtn">
							<span>저희가 추천하는 숙소</span>
							<i class="bi bi-chevron-expand"></i>
						</button>
						<div class="map-dropdown-content">
							<div class="map-dropdown-menu">
								<ul>
									<li class="dropdown-item">
										<button><span>최다 예약</span></button>
										<button><span>요금(낮은 순)</span></button>
										<button><span>최고 평점 + 최저가</span></button>
										<button><span>성급(높은 순)</span></button>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div id="map_hotel_list">
				<c:forEach var="hotel" items="${hotelList}" varStatus="status">
				<div class="map-hotel-list">
					<div class="map-hotel-card">
						<div class="map-hotel-save">
							<button class="map-save-icon">
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#000" class="bi bi-heart wishlist-heart" id="wishlist5" viewBox="0 0 16 16">
									<path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
								</svg>
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#c00" class="bi bi-heart-fill wishlist-heart-fill" id="wishlistFill5" viewBox="0 0 16 16">
									<path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
								</svg>
							</button>
						</div>
						
						<c:if test="${!empty hotel.hotelImgVO.file_url }">
							<div class="map-hotel-image" style="background-image: url(${hotel.hotelImgVO.file_url })"></div>
						</c:if>
						<c:if test="${empty hotel.hotelImgVO.file_url }">
							<div class="map-hotel-image" style="background-image: url(https://booqueen.s3.ap-northeast-2.amazonaws.com/hotel/default-hotel-img.png)"></div>
						</c:if>
						
						<div class="map-hotel-container">
							<div class="map-hotel-title">
								<a href="${contextPath}/hotelInfo.do?serialNumber=${hotel.serialnumber}" target="_blank"><span class="map-hotel-title-link">${hotel.hotelname }</span></a>
								<div class="map-stars">
									<span>
										<c:if test="${hotel.star+0 == '5'}">
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										</c:if>	
										<c:if test="${hotel.star+0 == '4'}">
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										</c:if>
										<c:if test="${hotel.star+0 == '3'}">
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										</c:if>
										<c:if test="${hotel.star+0 == '2'}">
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										</c:if>
										<c:if test="${hotel.star+0 == '1'}">
										<span>
											<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
												<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
											</svg>
										</span>
										</c:if>
									</span>		
								</div>
							</div>
							<div class="map-hotel-review">
								<div class="map-hotel-review-score">${hotel.reviewAvgVO.scoreAvg }</div>
								<div class="map-hotel-review-content">
									<div class="map-hotel-review-title">매우 좋음</div>
									<div class="map-hotel-review-text">${hotel.reviewAvgVO.count }개 이용 후기</div>
								</div>
							</div>
							<div class="map-hotel-content">
								<div class="map-hotel-content-info">
									<div class="map-hotel-content-info-name">디럭스 더블룸</div>
									<div class="map-hotel-content-info-configuration">침대 1개</div>
								</div>
								<div class="map-hotel-content-price">
									<div class="map-hotel-content-price-option">1박, 성인 2명</div>
									<div class="map-hotel-content-price-price">
										<span class="map-hotel-content-price-fixed">\88,000</span>
										<span class="map-hotel-content-price-sale">\79,200</span>
									</div>
									<div class="map-hotel-content-price-fees">
										세금 및 기타 요금 포함
									</div>
								</div>
								<div class="map-hotel-content-message">무료 취소</div>
								<div class="map-hotel-urgency-scarcity">우리 사이트에 이 요금으로 남은 옵션 단 3개</div>
							</div>

						</div>
						<div class="map-hotel-card-arrow">
							<i class="bi bi-chevron-right"></i>
						</div>
					</div>
				</div>
				</c:forEach>
				</div>
			</div>

			<!-- 접기  onclick="move()" map-show
			<div class="map-hide-button">
				<i class="bi bi-chevron-left" id="mapListCloseBtn"></i>
				<i class="bi bi-chevron-right" id="mapListOpenBtn"></i>
			</div>
-->
			<!-- Modal Map -->
			<div class="map-api" id="mapApi">

			</div>
		</div>
	</div>
	
	<div class="wrap-loading display-none">
    	<div><img src="${contextPath }/resources/user/images/spinner2.gif" /></div>
	</div>


<script>

var isEmpty = function(value){ 
	if( value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length ) ){ 
		return true 
	} else { 
		return false 
	}
};

var isNumber = function(value){
	let text = "";
	for(let i = 0; i < value*1; i++){
		text += "<span><svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='#febb02' class='bi bi-star-fill' viewBox='0 0 16 16'><path d='M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z'/></svg></span>";	
	}
	return text;
}


var starArr = new Array(); //필터 내용을 저장하는 배열
var cityArr = new Array();
var serviceArr = new Array();

function makeFilter(target) {     
 	 var ageVal = target.value; //check value
     var confirmCheck = target.checked; //check여부 확인
     
     if (confirmCheck == true) {           
     	starArr.push(ageVal); // check value filter 배열에 입력  check false
     } else {
     	starArr.splice(starArr.indexOf(ageVal), 1); // check value filter 배열내용 삭제
     }
}

$(function(){
	$(".filter-checkbox-input").on("change", getHotelByStar);
})

var city = '';	

function getHotelByStar() {    

	var contextPath = '${contextPath}';
	city = $('.searchbox-destination-input').val();
	cityArr.push(city);
	
	var breakfast = $('#checkFacilities1').is(":checked");
	var restaurant = $('#checkFacilities2').is(":checked");
	var shuttle = $('#checkFacilities3').is(":checked");
	var swimming_pool = $('#checkFacilities4').is(":checked");
	var front_desk = $('#checkFacilities5').is(":checked");
	var wifi = $('#checkFacilities6').is(":checked");
	var fitnesscenter = $('#checkFacilities7').is(":checked");
	var smoking = $('#checkFacilities8').is(":checked");
	var bar = $('#checkFacilities9').is(":checked");
	var spa = $('#checkFacilities10').is(":checked");
	var parking = $('#checkFacilities11').is(":checked");
	serviceArr.push(breakfast, restaurant, shuttle, swimming_pool, front_desk, wifi, fitnesscenter, smoking, bar, spa, parking);
	
	
	if(isEmpty(starArr)){
   	 starArr = ['1', '2', '3', '4', '5'];
    }
	
    $.ajax({
        url:'/web/hotelByStar.do'
        , type : 'POST'
        , async:false
        , traditional : true
        , dataType: "JSON"
        , data: {starArr: starArr, cityArr: cityArr, serviceArr: serviceArr}
        , success : function(data) {
        	
        	$('#content_from_ajax').empty();
        	
    		$.each(data, function(index, hotel){
    		
    			var text = '';
        		text += "<a href='";
        		text +=	contextPath;
        		text += "/hotelInfo.do?serialNumber=";
       			text += hotel.serialnumber;
   				text += "' target='_blank'><div class='list'><div class='hotel-info'><div class='hotel-image'><a href='";
				text += contextPath;
				text += "/hotelInfo.do?serialNumber=";
				text += hotel.serialnumber;
        		text +=	"' target='_blank'><img class='s3-img' src='";
        		text += hotel.hotelImgVO.file_url;
        		text += "'></a></div><div class='hotel-content'><div class='hotel-top'><div class='hotel-title'><div class='hotel-name'><a href='";
   				text += contextPath;
				text += "/hotelInfo.do?serialNumber=";
				text +=	hotel.serialnumber;
				text +=	"' target='_blank'><h3>";
				text += hotel.hotelname;
				text += "</h3></a><div class='star'>";
				text += isNumber(hotel.star);
				text += "</div></div><div class='hotel-location'><a href='#'><span><span class='hotel-address'>";
				text +=	hotel.city;
				text += "</span><span class='hotel-map'>지도에서 표시</span></span></a></div></div><div class='reviews'><div class='review'><div class='review-title'>좋음</div><div class='review-subtitle'>";
				text +=	hotel.reviewAvgVO.count;
				text += "개 이용 후기 </div></div><div class='grade'>";
				text +=	hotel.reviewAvgVO.scoreAvg;
				text += "</div></div></div><div class='hotel-bottom'><div class='room'><div class='room-left'><div class='room-info'><div class='room-name'>프리미어 트윈룸</div><div class='bed-count'>더블침대 2개</div><div class='cancel'><div class='cancel1'>무료취소 • 선결제 필요 없음</div><div class='cancel2'>나중에 취소 가능한 최저가를 지금 잡아놓으세요.</div></div><div class='left'>우리 사이트에 이 요금으로 남은 객실 단 3개</div></div></div><div class='room-right'><div class='price'><div class='option-info'>1박, 성인 2명</div><div class='option-price'><span class='fixed-price'>'\402,770</span><span class='sale-price'>'\145,000</span></div><div class='price-info'>세금 및 기타 요금 포함</div></div><div class='see-availability'><a href='#'><span class='move-detail'>예약 가능 옵션 보기</span><span>";
    		 	text += "<svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='currentColor' class='bi bi-chevron-right' viewBox='0 0 16 16'><path fill-rule='evenodd' d='M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z'/></svg></span></a></div></div></div></div></div></div></div></a>";
    			
        		$('#content_from_ajax').append(text);
    		});
        
        }
       	, error : function() {
			alert('error');			
		}
		
    });
    
    if(starArr.length == 5){
    	starArr = [];	
    }
    cityArr.splice(0, 1);
    serviceArr = [];
    $('#number_hotel').text($('.list').length);
 }
</script>

</script>

<script>
	$(document).ready(function(){
		// 필터
		$("#filterPreviousBtn").click(function(){
			$("#filterPreviousCheck").toggle();
		});
		$("#filterBudgetBtn").click(function(){
			$("#filterBudgetCheck").toggle();
		});
		$("#filterPopularityBtn").click(function(){
			$("#filterPopularityCheck").toggle();
		});
		$("#filterSafetyBtn").click(function(){
			$("#filterSafetyCheck").toggle();
		});
		$("#filterSustainabilityBtn").click(function(){
			$("#filterSustainabilityCheck").toggle();
		});
		$("#filterGradeBtn").click(function(){
			$("#filterGradeCheck").toggle();
		});
		$("#filterFunBtn").click(function(){
			$("#filterFunCheck").toggle();
		});
		$("#filterDealBtn").click(function(){
			$("#filterDealCheck").toggle();
		});
		$("#checkCancellationBtn").click(function(){
			$("#checkCancellationCheck").toggle();
		});
		$("#filterAccessibilityBtn").click(function(){
			$("#filterAccessibilityCheck").toggle();
		});
		$("#filterMealBtn").click(function(){
			$("#filterMealCheck").toggle();
		});
		$("#filterEntireBtn").click(function(){
			$("#filterEntireCheck").toggle();
		});
		$("#filterLandmarkBtn").click(function(){
			$("#filterLandmarkCheck").toggle();
		});
		$("#filterReviewBtn").click(function(){
			$("#filterReviewCheck").toggle();
		});
		$("#filterFacilitiesBtn").click(function(){
			$("#filterFacilitiesCheck").toggle();
		});
		$("#filterRoomBtn").click(function(){
			$("#filterRoomCheck").toggle();
		});
		$("#filterCityBtn").click(function(){
			$("#filterCityCheck").toggle();
		});
		$("#filterBrandBtn").click(function(){
			$("#filterBrandCheck").toggle();
		});
		$("#filterLevelBtn").click(function(){
			$("#filterLevelCheck").toggle();
		});

		// 더 알아보기 닫기
		$("#rankingBtn").click(function() {
			$(".ranking").remove();
		});

		// 위시리스트
		$("#wishlist").click(function() {
			$("#wishlist").css('display', 'none');
			$("#wishlistFill").css('display', 'block');
		});
		$("#wishlistFill").click(function() {
			$("#wishlist").css('display', 'block');
			$("#wishlistFill").css('display', 'none');
		});
		$("#wishlist1").click(function() {
			$("#wishlist1").css('display', 'none');
			$("#wishlistFill1").css('display', 'block');
		});
		$("#wishlistFill1").click(function() {
			$("#wishlist1").css('display', 'block');
			$("#wishlistFill1").css('display', 'none');
		});
		$("#wishlist2").click(function() {
			$("#wishlist2").css('display', 'none');
			$("#wishlistFill2").css('display', 'block');
		});
		$("#wishlistFill2").click(function() {
			$("#wishlist2").css('display', 'block');
			$("#wishlistFill2").css('display', 'none');
		});
		$("#wishlist3").click(function() {
			$("#wishlist3").css('display', 'none');
			$("#wishlistFill3").css('display', 'block');
		});
		$("#wishlistFill3").click(function() {
			$("#wishlist3").css('display', 'block');
			$("#wishlistFill3").css('display', 'none');
		});
		$("#wishlist4").click(function() {
			$("#wishlist4").css('display', 'none');
			$("#wishlistFill4").css('display', 'block');
		});
		$("#wishlistFill4").click(function() {
			$("#wishlist4").css('display', 'block');
			$("#wishlistFill4").css('display', 'none');
		});
		$("#wishlist5").click(function() {
			$("#wishlist5").css('display', 'none');
			$("#wishlistFill5").css('display', 'block');
		});
		$("#wishlistFill5").click(function() {
			$("#wishlist5").css('display', 'block');
			$("#wishlistFill5").css('display', 'none');
		});

		// 맵 호텔 필터 열고 닫기
		$("#dropdownBtn").click(function(){
			$(".map-dropdown-menu").toggle();
		});
		$("#mapListCloseBtn").click(function() {
			$('.map-list').animate({left: -130}, 500);
			$('.map-hide-button').animate({left: 265}, 500);
			$("#mapListCloseBtn").css('display', 'none');
			$("#mapListOpenBtn").css('display', 'block');
		});
		$("#mapListOpenBtn").click(function() {
			$('.map-list').animate({left: 265}, 500);
			$('.map-hide-button').animate({left: 645}, 500);
			$("#mapListOpenBtn").css('display', 'none');
			$("#mapListCloseBtn").css('display', 'block');
		});
	});


	// 검색 필터
	function myFunction() {
		document.getElementById("myDropdown").classList.toggle("show");
	}
	window.onclick = function(event) {
		if (!event.target.matches('.dropdown')) {
			var dropdowns = document.getElementsByClassName("dropdown-content");
			var i;
			for (i = 0; i < dropdowns.length; i++) {
				var openDropdown = dropdowns[i];
				if (openDropdown.classList.contains('show')) {
				openDropdown.classList.remove('show');
				}
			}
		}
	}


	// ---------------------------

	// 지도보기, 닫기
	var modalMap = document.getElementById("modalMap");
	var mapBtn1 = document.getElementById("mapBtn1");
	var mapBtn2 = document.getElementById("mapBtn2");
	var close = document.getElementsByClassName("close_map")[0];

	mapBtn1.onclick = function () {
		modalMap.style.display = "block";
		map.relayout();
	}
	mapBtn2.onclick = function () {
		modalMap.style.display = "block";
		map.relayout();
	}
	close.onclick = function () { // When the user clicks on <span> (x), close the modal
		modalMap.style.display = "none";
	}
	window.onclick = function (event) { // When the user clicks anywhere outside of the modal, close it
    if (event.target == modalMap) {
			modalMap.style.display = "none";
    }
	}

	// 지도 ---------------------------
	var container = document.getElementById('mapApi');
	var options = {
		center: new kakao.maps.LatLng(37.693575533651774, 126.63953347844458),
		level: 8
	};
	var map = new kakao.maps.Map(container, options);
 	
	// 지도가 이동, 확대, 축소로 인해 중심좌표가 변경되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'center_changed', function() {

	    // 지도의  레벨을 얻어옵니다
	    var level = map.getLevel();

	    // 지도의 중심좌표를 얻어옵니다 
	    var latlng = map.getCenter(); 

	    var message = '<p>지도 레벨은 ' + level + ' 이고</p>';
	    message += '<p>중심 좌표는 위도 ' + latlng.getLat() + ', 경도 ' + latlng.getLng() + '입니다</p>';

	    var resultDiv = document.getElementById('map_result');
	    resultDiv.innerHTML = message;

	});
	   

	
	// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
	var positions = [
		{
			content: '<div>카카오</div>', 
			latlng: new kakao.maps.LatLng(33.450705, 126.570677)
		},
		{
			content: '<div>생태연못</div>', 
			latlng: new kakao.maps.LatLng(33.450936, 126.569477)
		},
		{
			content: '<div>텃밭</div>', 
			latlng: new kakao.maps.LatLng(33.450879, 126.569940)
		},
		{
			content: '<div>근린공원</div>',
			latlng: new kakao.maps.LatLng(33.451393, 126.570738)
		}
	];

	for (var i = 0; i < positions.length; i ++) {
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			map: map, // 마커를 표시할 지도
			position: positions[i].latlng // 마커의 위치
		});

		// 마커에 표시할 인포윈도우를 생성합니다 
		var infowindow = new kakao.maps.InfoWindow({
			content: positions[i].content // 인포윈도우에 표시할 내용
		});

		// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		// 이벤트 리스너로는 클로저를 만들어 등록합니다 
		// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	}

	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
		return function() {
			infowindow.open(map, marker);
		};
	}

	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
		return function() {
			infowindow.close();
		};
	}
	
	kakao.maps.event.addListener(map, 'dragend', selectMap);
	
	function selectMap(){
        
		var bounds = map.getBounds();
		
		var wLatitude = bounds.qa;
		var eLatitude = bounds.pa;
		var sLongitude = bounds.ha;
		var nLongitude = bounds.oa;
		
		var contextPath = '${contextPath}';
		
        var sendData = {
        				"wLatitude" : wLatitude,
                        "eLatitude" : eLatitude,
                        "sLongitude" : sLongitude,
                        "nLongitude" : nLongitude
                        }
       	
        	$.ajax({
                method : "POST",
                url : "/web/getMap.do",
                async: false,
                data : sendData,
                dataType : "JSON",
                success : function(data){
                	
                	$('#map_hotel_list').empty();
                	
                	$.each(data, function(index, hotel){
                		                		
                		var text = '';
                		text += "<div class='map-hotel-list'><div class='map-hotel-card'><div class='map-hotel-save'><button class='map-save-icon'><svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='#000' class='bi bi-heart wishlist-heart' id='wishlist5' viewBox='0 0 16 16'>";
                		text += "<path d='m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z'/>";
                		text += "</svg><svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='#c00' class='bi bi-heart-fill wishlist-heart-fill' id='wishlistFill5' viewBox='0 0 16 16'>";
                		text += "<path fill-rule='evenodd' d='M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z'/></svg></button></div>";
                		text += "<div class='map-hotel-image' style='background-image: url(";
                		text += hotel.hotelImgVO.file_url;
                		text += ")'></div><div class='map-hotel-container'><div class='map-hotel-title'><a href='";
                		text += contextPath;
                		text += "/hotelInfo.do?serialNumber=";
                		text += hotel.serialnumber;
                		text += "' target='_blank'><span class='map-hotel-title-link'>";
                		text += hotel.hotelname;
                		text += "</span></a><div class='map-stars'><span>";
               			text += isNumber(hotel.star);
                		text += "</span></div></div><div class='map-hotel-review'><div class='map-hotel-review-score'>";
                		text += hotel.reviewAvgVO.scoreAvg;
                		text += "</div><div class='map-hotel-review-content'><div class='map-hotel-review-title'>매우 좋음</div><div class='map-hotel-review-text'>";
                		text += hotel.reviewAvgVO.count;
                		text += "개 이용 후기</div></div></div><div class='map-hotel-content'><div class='map-hotel-content-info'><div class='map-hotel-content-info-name'>디럭스 더블룸</div><div class='map-hotel-content-info-configuration'>침대 1개</div></div><div class='map-hotel-content-price'><div class='map-hotel-content-price-option'>1박, 성인 2명</div><div class='map-hotel-content-price-price'><span class='map-hotel-content-price-fixed'>\88,000</span><span class='map-hotel-content-price-sale'>\79,200</span></div><div class='map-hotel-content-price-fees'>세금 및 기타 요금 포함</div></div><div class='map-hotel-content-message'>무료 취소</div><div class='map-hotel-urgency-scarcity'>우리 사이트에 이 요금으로 남은 옵션 단 3개</div></div></div><div class='map-hotel-card-arrow'><i class='bi bi-chevron-right'></i></div></div></div>";
            		 	
                		$('#map_hotel_list').append(text);
                		
                	});

                },
                error : function(){
                	alert('error');
                }
            })
       
    }

</script>

</body>
</html>