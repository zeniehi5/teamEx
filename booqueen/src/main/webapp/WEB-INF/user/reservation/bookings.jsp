<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Bookings</title>
	<link rel="stylesheet" href="${contextPath}/resources/user/css/bookings.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
	<script src="https://kit.fontawesome.com/fdb0bc6f32.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/user/member/header.jsp"/>

	<div class="container">
		<div class="container-inner">
			<div class="timeline-header"><h1>예약</h1></div>
			<div class="find-booking">
				<button class="find-booking-btn">예약 내역을 찾으실 수 없나요?</button>
			</div>
			
			<c:forEach var="reservationList" items="${reservationList}" varStatus="status">
			<fmt:parseDate var="end_date" value="${reservationList.end_date}" pattern="yyyy-MM-dd" />
			<c:if test="${now < end_date }">
			
			<div class="timeline-body">
<!-- 				<div class="title"> -->
<%-- 					<h2 class="headline">${reservationList.city}</h2> --%>
<%-- 					
<%-- 					<p class="period"><fmt:formatDate value="${start_date}" pattern="yyyy년 MM월 dd일"/>(${reservationList.start_day}) - <fmt:formatDate value="${end_date}" pattern="yyyy년 MM월 dd일"/>(${reservationList.end_day})</p> --%>
<!-- 				</div> -->

					<fmt:parseDate value="${reservationList.start_date}" var="start_date" pattern="yyyy-MM-dd"/>
					<fmt:parseDate value="${reservationList.end_date}" var="end_date" pattern="yyyy-MM-dd"/>
				<div class="card-list">
					<div class="card">
						<div class="content">
							<div class="content-left">
								<div class="thumbnail booking-thumbnail">
									<div class="photo" style="background-image: url(${reservationList.file_url})"></div>
								</div>
								<div class="details">
									<div class="details-title booking-detail-title"><h3>${reservationList.hotelname}</h3></div>
									<div class="details-subtitle booking-detail-subtitle">
										
										<span><fmt:formatDate value="${start_date}" pattern="yyyy년 MM월 dd일"/>(${reservationList.start_day}) - <fmt:formatDate value="${end_date}" pattern="yyyy년 MM월 dd일"/>(${reservationList.end_day})</span>
										<span>·</span>
										<span>객실 ${reservationList.count_room}개</span>
										<span>·</span>
										<span>${reservationList.city}</span>
									</div>
									
									<c:choose>
									<c:when test="${reservationList.status eq true or reservationList.status eq 'true'}">
										<div class="booking-details-status">확정됨</div>
									</c:when>
									<c:otherwise>
										<div class="booking-details-status detail-cancel">취소됨</div>
									</c:otherwise>	
									</c:choose>
								</div>
							</div>
							<div class="content-right">
								<div class="price booking-price"><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${reservationList.price}" /></div>
							</div>
							<a href="${contextPath}/confirmation.do?reservation_number=${reservationList.reservation_number}&serialnumber=${reservationList.serialnumber}&room_id=${reservationList.room_id}" class="card-link"></a>
							<span class="reservation-context">
								<button class="reservation-context-btn" id="bookingContextBtn"><i class="bi bi-three-dots-vertical"></i></button>
								<div class="dropdown-content">
									<div class="dropdown-menu" id="bookingDropdownMenu">
										<ul>
											<li class="dropdown-item">
												<button><span>숙박 예정일 변경</span></button>
												<button><span>숙소에 메시지 보내기</span></button>
												<button><span>고객 서비스팀에 문의</span></button>
											</li>
										</ul>
									</div>
								</div>
							</span>
						</div>
					</div>
				</div>
			</div>
			</c:if>
			<c:if  test="${now > end_date }">
			<div class="timeline-body">
<!-- 				<div class="title"> -->
<%-- 					<h2 class="headline">${reservationList.city}</h2> --%>
					
<%-- 					<p class="period"><fmt:formatDate value="${start_date}" pattern="yyyy년 MM월 dd일"/>(${reservationList.start_day}) - <fmt:formatDate value="${end_date}" pattern="yyyy년 MM월 dd일"/>(${reservationList.end_day})</p> --%>
<!-- 				</div> -->
				
				<fmt:parseDate value="${reservationList.start_date}" var="start_date" pattern="yyyy-MM-dd"/>
					<fmt:parseDate value="${reservationList.end_date}" var="end_date" pattern="yyyy-MM-dd"/>
				<div class="card-list">
					<div class="card">
						<div class="content">
							<div class="content-left">
								<div class="thumbnail">
									<div class="photo" style="background-image: url(${reservationList.file_url})"></div>
								</div>
								<div class="details">
									<div class="details-title"><h3>${reservationList.hotelname}</h3></div>
									<div class="details-subtitle">
										
										<span><fmt:formatDate value="${start_date}" pattern="yyyy년 MM월 dd일"/>(${reservationList.start_day}) - <fmt:formatDate value="${end_date}" pattern="yyyy년 MM월 dd일"/>(${reservationList.end_day})</span>
										<span>·</span>
										<span>객실 ${reservationList.count_room}개</span>
										<span>·</span>
										<span>${reservationList.city}</span>
									</div>
									<c:choose>
									<c:when test="${reservationList.status eq true or reservationList.status eq 'true'}">
										<div class="details-status">확정됨</div>
									</c:when>
									<c:otherwise>
										<div class="details-status detail-cancel">취소됨</div>
									</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="content-right">
								<div class="price"><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${reservationList.price}" /></div>
							</div>
							
							<a href="${contextPath}/confirmation.do?reservation_number=${reservationList.reservation_number}&start_date=${reservationList.start_date}&room_id=${reservationList.room_id}  class="card-link"></a>
							
							<span class="reservation-context">
								<button class="reservation-context-btn" id="contextBtn"><i class="bi bi-three-dots-vertical"></i></button>
								<div class="dropdown-content">
									<div class="dropdown-menu" id="dropdownMenu">
										<ul>
											<li class="dropdown-item">
												<button><span>다시 예약</span></button>
												<button><span>숙소에 메시지 보내기</span></button>
												<button><span>고객 서비스팀에 문의</span></button>
												<button><span>예약 삭제</span></button>
											</li>
										</ul>
									</div>
								</div>
							</span>
						</div>
					</div>
					
					<c:if test="${reservationList.status eq true or reservationList.status eq 'true' }">
					<a href="${contextPath}/review/reviewForm.do?reservation_number=${reservationList.reservation_number}" class="review">
						<span class="star"><i class="bi bi-star"></i></span>
						<div class="review-text">숙소를 평가하고 후기를 남겨주세요</div>
						<button class="review-delete">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#6B6B6B" class="bi bi-x-lg" viewBox="0 0 16 16">
							<path fill-rule="evenodd" d="M13.854 2.146a.5.5 0 0 1 0 .708l-11 11a.5.5 0 0 1-.708-.708l11-11a.5.5 0 0 1 .708 0Z"/>
							<path fill-rule="evenodd" d="M2.146 2.146a.5.5 0 0 0 0 .708l11 11a.5.5 0 0 0 .708-.708l-11-11a.5.5 0 0 0-.708 0Z"/>
							</svg>
						</button>
					</a>
					</c:if>
				</div>
			</div>
			</c:if>
			</c:forEach>
			
			<!-- 숨김 -->
			<!--
			<div class="timeline-body hide-timeline-body">
				<div class="title">
					<h2 class="headline">부산</h2>
					<p class="period">2021년 2월 11일~2021년 2월 13일</p>
				</div>
				<div class="card-list">
					<div class="card">
						<div class="content">
							<div class="content-left">
								<div class="thumbnail">
									<div class="photo"></div>
								</div>
								<div class="details">
									<div class="details-title"><h3>베이하운드 호텔</h3></div>
									<div class="details-subtitle">
										<span>2021년 2월 11일~2021년 2월 13일</span>
										<span>·</span>
										<span>객실 2개</span>
										<span>·</span>
										<span>부산</span>
									</div>
									<div class="details-status">완료</div>
								</div>
							</div>
							<div class="content-right">
								<div class="price">₩273,870</div>
							</div>
							<a href="#" class="card-link"></a>
							<span class="reservation-context">
								<button class="reservation-context-btn" id="contextBtn1"><i class="bi bi-three-dots-vertical"></i></button>
								<div class="dropdown-content">
									<div class="dropdown-menu" id="dropdownMenu1">
										<ul>
											<li class="dropdown-item">
												<button><span>다시 예약</span></button>
												<button><span>숙소에 메시지 보내기</span></button>
												<button><span>고객 서비스팀에 문의</span></button>
												<button><span>예약 삭제</span></button>
											</li>
										</ul>
									</div>
								</div>
							</span>
						</div>
					</div>
				</div>
				<div class="card-list">
					<div class="card">
						<div class="content">
							<div class="content-left">
								<div class="thumbnail">
									<div class="photo"></div>
								</div>
								<div class="details">
									<div class="details-title"><h3>베이하운드 호텔</h3></div>
									<div class="details-subtitle">
										<span>2021년 2월 11일~2021년 2월 13일</span>
										<span>·</span>
										<span>객실 2개</span>
										<span>·</span>
										<span>부산</span>
									</div>
									<div class="details-status">완료</div>
								</div>
							</div>
							<div class="content-right">
								<div class="price">₩273,870</div>
							</div>
							<a href="#" class="card-link"></a>
							<span class="reservation-context">
								<button class="reservation-context-btn" id="contextBtn2"><i class="bi bi-three-dots-vertical"></i></button>
								<div class="dropdown-content">
									<div class="dropdown-menu" id="dropdownMenu2">
										<ul>
											<li class="dropdown-item">
												<button><span>다시 예약</span></button>
												<button><span>숙소에 메시지 보내기</span></button>
												<button><span>고객 서비스팀에 문의</span></button>
												<button><span>예약 삭제</span></button>
											</li>
										</ul>
									</div>
								</div>
							</span>
						</div>
					</div>
				</div>
			</div> 
			<span>
				<button class="view-more-bookings" id="viewMoreBookings">
					<span>예약 더 보기</span>
				</button>
			</span> -->
			<!-- 예약 찾기 -->
			<div class="find-booking-container" id="findBookingContainer">
				<div class="booking-finder">
					<h2>숙소 예약</h2>
					<div class="booking-finder-form">
						<form action="" class="finder-form">
							<div class="finder-form-body">
								<label for="" class="finder-title">예약번호</label>
								<div class="finder-text">
									<input type="text" class="finder-input">
								</div>
							</div>
							<div class="finder-form-body">
								<label for="" class="pin-code-title">PIN 코드</label>
								<div class="der-text">
									<input type="text" class="finder-input">
								</div>
							</div>
							<button type="submit" class="add-booking">예약 추가</button>
						</form>
					</div>
				</div>
				<div class="booking-finder-x">
					<button class="booking-finder-x-btn" id="bookingFinderXBtn">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#6B6B6B" class="bi bi-x" viewBox="0 0 16 16">
							<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
						</svg>
					</button>
				</div>
			</div>
		</div>
	</div>


	<script>
		
		$(document).ready(function() {
			// 후기 닫기
			$(".review-delete").click(function() {
				$(".review").remove();
			});
			// (숙박전) ... 열고 닫기
			$("#bookingContextBtn").click(function(){
				$("#bookingDropdownMenu").toggle();
			});
			// (숙박후) ... 열고 닫기
			$("#contextBtn").click(function(){
				$("#dropdownMenu").toggle();
			});
			$("#contextBtn1").click(function(){
				$("#dropdownMenu1").toggle();
			});
			$("#contextBtn2").click(function(){
				$("#dropdownMenu2").toggle();
			});

			// 예약 내역 찾기 열고 닫기
			$(".find-booking-btn").click(function(){
				$(".find-booking-container").toggle();
			});
			$("#viewMoreBookings").click(function() {
				$(".hide-timeline-body").show();
			});

			// 예약 내역 찾기
			$("#bookingFinderXBtn").click(function() {
				$("#findBookingContainer").css('display', 'none')
			});
		});

		
	</script>
</body>
</html>