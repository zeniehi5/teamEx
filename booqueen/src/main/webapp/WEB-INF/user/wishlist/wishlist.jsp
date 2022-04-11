<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="today"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/></c:set>
<c:set var="nnow" value="<%=new java.util.Date(new java.util.Date().getTime() + 60*60*24*1000)%>"/>
<c:set var="tomorrow"><fmt:formatDate value="${nnow}" pattern="yyyy-MM-dd"/></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>wishlist</title>
	<link rel="stylesheet" href="${contextPath}/resources/user/css/wishlist.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
	<script src="https://kit.fontawesome.com/fdb0bc6f32.js" crossorigin="anonymous"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=29b5f78cb856dc4d592f3c3f87388524"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/user/member/header.jsp"/>
	
	<div class="container">
		<div class="container-controls-hr">
			<div class="container-controls">
				<div class="controls-main">
					<h1>위시리스트</h1>
					<div class="controls-group">
						<div class="save-num">
							<i class="bi bi-heart-fill"></i>
							<span>저장된 숙소 <strong><span id="wishlist_length">${fn:length(wishlist)}</span></strong>개</span>
						</div>
					</div>
				</div>
				<div class="controls-end">
					<div class="map-entry">
						<button class="map-btn" id="mapBtn">
							<span>지도에서 보기</span>
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="container-body">
			
			<c:choose>
			<c:when test="${fn:length(wishlist) > 0}">
			<div class="list-view">
				<div class="list-container">
					<ul class="container-card">
						
						<c:forEach var="wishlist" items="${wishlist }" varStatus="status">
						<li class="card-item" id="cardItem${status.count }">
							<a href="#" class="listview-remove" class="wishlistdelete" id="wishlistRemove${status.count }">
								<i class="bi bi-x-circle-fill"></i>
							</a>
							<div class="hotel-card" id="hotelCard${status.count }">
								<div class="hotel-card-image">
									<img src="${wishlist.hotelimgpath }" alt="">
								</div>
								<div class="hotel-card-content">
<!-- 									<div class="card-header"> -->
										<h3 class="card-title">${wishlist.hotelname }</h3>
										<div style="margin-top: 10px;">
											<c:set var="star" value="${wishlist.star*1}"/>
											<c:forEach begin="1" end="${star }">
												<span>
												<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												</svg>
											</span>
											</c:forEach>
										</div>	
<!-- 									</div> -->
									<div class="card-location">
										<div class="location-name">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><path d="M168.3 499.2C116.1 435 0 279.4 0 192C0 85.96 85.96 0 192 0C298 0 384 85.96 384 192C384 279.4 267 435 215.7 499.2C203.4 514.5 180.6 514.5 168.3 499.2H168.3zM192 256C227.3 256 256 227.3 256 192C256 156.7 227.3 128 192 128C156.7 128 128 156.7 128 192C128 227.3 156.7 256 192 256z"/></svg>
											${wishlist.city }
										</div>
										<div class="distance">${wishlist.address1 }</div>
									</div>
									<div class="card-score">
										<span class="review-score">${wishlist.score }</span>
										<span class="review-content">
										<c:choose>
							                <c:when test="${wishlist.score >= 9}"><span class="review-title">최고</span></c:when>
											<c:when test="${wishlist.score >= 8}"><span class="review-title">매우 좋음</span></c:when>
											<c:when test="${wishlist.score >= 7}"><span class="review-title">좋음</span></c:when>
											<c:when test="${wishlist.score >= 6}"><span class="review-title">만족</span></c:when>
											<c:when test="${wishlist.score < 6}"><span class="review-title">보통</span></c:when>
							           </c:choose>   
											<span class="review-text">${wishlist.reviewcount }개 이용 후기</span>
										</span>
									</div>
									<div class="card-action">
									<c:set var="todayv"><fmt:formatDate value="${now}" pattern="yyyyMMdd"/></c:set>
        							<c:set var="tomorrowv"><fmt:formatDate value="${nnow}" pattern="yyyyMMdd"/></c:set>
										<a href="${contextPath}/hotelInfo.do?serialNumber=${wishlist.serialnumber}&start_date=${todayv}&end_date=${tomorrowv}" target="_blank" class="view-hotel-btn">
											<span class="view-hotel-text">숙소보기</span>
										</a>
									</div>
									
								</div>
							</div>
							<div class="hotel-card-remove" id="hotelCardRemove${status.count }">
								<div style="display: flex; align-content: center; width: 265px; height: 456px; justify-content: center; align-items: center;">
									<button class="removeButton" id="removeButton${status.count }">
										<span>제거</span>
									</button>
									<input class="serialnumber_hidden" type="hidden" value="${wishlist.serialnumber }">
								</div>
							</div>
						</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div id="for_append"></div>
			</c:when>
			<c:otherwise>
			<!-- 리스트 0개 -->
			<div class="list-empty-view">
				<div class="main">
					<a href="${contextPath}/index.do" class="listview-empty">
						<div class="listview">
							<svg class="bk-icon -iconset-heart_outline list-empty-bui__heart" fill="#003580" is_presentation="true" width="60" height="60" viewBox="0 0 128 128"><path d="M119.5 40.3a29 29 0 0 0-22.8-23.7 33.8 33.8 0 0 0-32.7 13 33.7 33.7 0 0 0-32.7-13A29 29 0 0 0 8.5 40.3c-1.3 7.2-.6 18.8 9.4 33.3A140 140 0 0 0 62 111.5a3.7 3.7 0 0 0 4 0c20.2-12 35-24.8 44.1-38 10-14.4 10.7-26 9.5-33.2zm-55.5 63c-33-20.1-50.8-43-47.7-61.6A20.7 20.7 0 0 1 33 24.3a22.3 22.3 0 0 1 4.5-.4c8.8 0 17.3 5.2 23.2 14.6a4 4 0 0 0 3.4 1.8 4 4 0 0 0 3.4-1.8c6-9.4 14.4-14.6 23.2-14.6a22.3 22.3 0 0 1 4.5.5 20.7 20.7 0 0 1 16.6 17.2c3 18.6-14.8 41.6-47.8 61.7z"></path></svg>
							<h2>간단한 3단계로 고객님의 시작을 도와드립니다.</h2>
							<ol>
								<li>1. 투숙할 숙소 검색</li>
								<li>2. 마음에 드는 숙소를 찾아 하트 아이콘 클릭</li>
								<li>3. 저장한 숙소를 위시리스트에서 확인</li>
							</ol>
							<button class="search-btn">검색하기</button>
						</div>
					</a>
				</div>
			</div>
			</c:otherwise>
			</c:choose>
		</div>
	</div>

	<!-- The Modal -->
	<div id="modalMap" class="modal-map">
		<div class="close">&times;</div>
		<!-- Modal Content -->
		<div class="modal-content">
			<div class="content-left">
				<div class="map-hotel-list">
					<a href="#" class="map-hotel-item">
						<div class="map-hotel-card">
							<div class="map-hotel-image">
								<img src="${contextPath}/resources/user/images/main1.webp" alt="">
							</div>
							<div class="map-hotel-content">
								<div class="map-card-header">
									<div class="map-header-title">시그니엘</div>
									<div class="map-header-save">
										<button class="map-save-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M0 190.9V185.1C0 115.2 50.52 55.58 119.4 44.1C164.1 36.51 211.4 51.37 244 84.02L256 96L267.1 84.02C300.6 51.37 347 36.51 392.6 44.1C461.5 55.58 512 115.2 512 185.1V190.9C512 232.4 494.8 272.1 464.4 300.4L283.7 469.1C276.2 476.1 266.3 480 256 480C245.7 480 235.8 476.1 228.3 469.1L47.59 300.4C17.23 272.1 .0003 232.4 .0003 190.9L0 190.9z"/></svg></button>
									</div>
								</div>
								<div class="map-hotel-stars">
									<span class="star"><i class="bi bi-star-fill"></i></span>
									<span class="star"><i class="bi bi-star-fill"></i></span>
									<span class="star"><i class="bi bi-star-fill"></i></span>
									<span class="star"><i class="bi bi-star-fill"></i></span>
								</div>
								<div class="map-hotel-reviews">
									<span class="map-hotel-review">
										<span class="map-review-score">9.2</span>
										<span class="map-review-content">
											<span class="map-review-title">최고</span>
											<span class="map-review-text">1,437개 이용 후기</span>
										</span>
									</span>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
			<!-- Modal Map -->
			<div class="map-api" id="mapApi"></div>
		</div>
	</div>

	<script>
	
	
	 $(function(){
		$(".removeButton").on("click", function(){
			
			var serialnumber = $(this).siblings().val()*1;
			var userid = '${member.userid}'
				
			var wishlist_length	= $("#wishlist_length").text()*1;
			var sendData = {"userid" : userid,
	                		"serialnumber" : serialnumber
	               			}
			
			$.ajax({
	            method : "POST",
	            url : "/web/deleteWishlist.do",
	            data : sendData,
	            success : function(resp){
	            	$("#wishlist_length").text(wishlist_length-1);
	            	
	            	if($("#wishlist_length").text()*1 == 0){	
	            		$("#for_append").append("<div class='list-empty-view'><div class='main'><a href='${contextPath}/index.do' class='listview-empty'><div class='listview'><svg class='bk-icon -iconset-heart_outline list-empty-bui__heart' fill='#003580' is_presentation='true' width='60' height='60' viewBox='0 0 128 128'><path d='M119.5 40.3a29 29 0 0 0-22.8-23.7 33.8 33.8 0 0 0-32.7 13 33.7 33.7 0 0 0-32.7-13A29 29 0 0 0 8.5 40.3c-1.3 7.2-.6 18.8 9.4 33.3A140 140 0 0 0 62 111.5a3.7 3.7 0 0 0 4 0c20.2-12 35-24.8 44.1-38 10-14.4 10.7-26 9.5-33.2zm-55.5 63c-33-20.1-50.8-43-47.7-61.6A20.7 20.7 0 0 1 33 24.3a22.3 22.3 0 0 1 4.5-.4c8.8 0 17.3 5.2 23.2 14.6a4 4 0 0 0 3.4 1.8 4 4 0 0 0 3.4-1.8c6-9.4 14.4-14.6 23.2-14.6a22.3 22.3 0 0 1 4.5.5 20.7 20.7 0 0 1 16.6 17.2c3 18.6-14.8 41.6-47.8 61.7z'></path></svg><h2>간단한 3단계로 고객님의 시작을 도와드립니다.</h2><ol><li>1. 투숙할 숙소 검색</li><li>2. 마음에 드는 숙소를 찾아 하트 아이콘 클릭</li><li>3. 저장한 숙소를 위시리스트에서 확인</li></ol><button class='search-btn'>검색하기</button></div></a></div></div>");
	            	} 
	            		
	            }
	        })
		});
	 })
	</script>

	<script>
	$(document).ready(function() {

		var length = '${fn:length(wishlist)}'

			for(let i= 1; i <= length; i++){
				$('#wishlistRemove'+i).click(function() {
					$('#hotelCard'+i).toggle();
					$('#hotelCardRemove'+i).toggle();
				})

				$('#removeButton'+i).click(function() {
					$('#cardItem'+i).remove();
				})
			}
		});


		// 지도보기, 닫기
		var modalMap = document.getElementById("modalMap");
		var mapBtn = document.getElementById("mapBtn");
		var close = document.getElementsByClassName("close")[0];

		mapBtn.onclick = function () {
			modalMap.style.display = "block";
			map.relayout();
		}
		close.onclick = function () {
			modalMap.style.display = "none";
		}

		// 지도 ---------------------------
		var container = document.getElementById('mapApi');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};
		var map = new kakao.maps.Map(container, options);
	
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
		
	</script>
</body>
</html>