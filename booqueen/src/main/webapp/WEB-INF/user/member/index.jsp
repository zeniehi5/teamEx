<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="today"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/></c:set>
<c:set var="nnow" value="<%=new java.util.Date(new java.util.Date().getTime() + 60*60*24*1000)%>"/>
<c:set var="tomorrow"><fmt:formatDate value="${nnow}" pattern="yyyy-MM-dd"/></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/user/css/index-copy.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/d2826a4f92.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="${contextPath}/resources/user/javascript/index-copy.js"></script>
    
    <!-- autocomplete -->
    <link rel="stylesheet" href="${contextPath}/resources/user/css/autocomplete.css">
    <script type="text/javascript" src="${contextPath}/resources/user/javascript/autocomplete.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	
    <!-- datepicker -->
    <link rel="stylesheet" href="${contextPath}/resources/user/css/datepicker.css" />
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="${contextPath}/resources/user/javascript/daterangepicker.js"></script>
    <title>Index copy</title>
   
</head>
<body>
	<jsp:include page="/WEB-INF/user/member/header.jsp"/>

    <div class="next-trip">
        <div class="next-trip-content">
            <div class="next-trip-h1">
            	<c:choose>
				<c:when test="${isLogOn == true  && member!= null}">
            		<h1>${member.name } 님, 다음 여행은 어디로?</h1>
            	</c:when>
            	<c:otherwise>
            		<h1>다음에 머무를 숙소를 알아보세요!</h1>
            	</c:otherwise>
            	</c:choose>
            	<i class="far fa-paper-plane fa-3x"></i>
            </div>
            <span class="trip-span">전국 단독 특가를 찾아보세요!</span>
        </div>
    </div>

    <div class="form-container">
        <form class="main-form" action="${contextPath}/searchResult.do" method="get">
            <div class="form-inner">
                <div class="form-inner-frist">
                    <div>
                        <input type="text" placeholder="어디로 향하시나요?" name="keyword" value="" id="keywordInput">  
                    </div>
                </div>
                <div class="form-inner-second">
                    <div>
                        <form autocomplete="off">
                            <input type="text" value="" id="from" name="daterange">
                        </form>
                    </div>
                </div>
    
                <div class="form-inner-third">
                    <div>
                        <input type="number" placeholder="인원" class="number-of-member" value="">
                    </div>
                </div>
                <div class="form-inner-fourth">
                    <div>
                        <button type="submit" class="fourth-button"><span>검색</span></button>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <div class="hidden-form">
        <div class="people-form">
            <div class="form-first">
                <label>성인</label>
                <div>
                    <button class="people-form-button" data-quantity="minus" data-field="quantity1"><span>-</span></button>&nbsp;&nbsp;
                    <input type="number" name="quantity1" value="2" class="input-number-of-member"></input>&nbsp;&nbsp;
                    <button class="people-form-button" data-quantity="plus" data-field="quantity1"><span>+</span></button>
                </div>
            </div>
            <div class="form-first">
                <label>객실</label>
                <div>
                    <button class="people-form-button" data-quantity="minus" data-field="quantity2"><span>-</span></button>&nbsp;&nbsp;
                    <input type="number" name="quantity2" value="1" class="input-number-of-member"></input>&nbsp;&nbsp;
                    <button class="people-form-button" data-quantity="plus" data-field="quantity2"><span>+</span></button>
                </div>
            </div>
        </div>
    </div>

    <div class="add">
        <div><i class="bi bi-alarm"></i></div>
        <div>
            <span>코로나19(COVID-19)와 관련하여 최근 발표된 제한 조치 및 권고사항을 여행 전에 확인하세요.</span>
            <a id="know-detail">더 알아보기</a>
            <div id="know-detail-text">
                <h3>예약 조건</h3>
                <p>2020년 4월 6일 또는 그 후에 예약을 진행하실 경우, 코로나19(COVID-19) 확산 위험과 그에 따른 정부의 공식 조치를 충분히 염두에 두고 결정을 내리실 것을 권장합니다. 정책이 유연한 옵션을 예약하지 않았을 경우 환불이 불가능할 수 있습니다. 고객님의 취소 요청은 해당 예약의 정책과 의무적으로 준수되어야 하는 소비자법을 고려해 숙소에서 직접 처리합니다. 상황이 시시각각으로 변하는 만큼 가급적 무료 취소가 가능한 옵션을 예약하시기를 권장합니다. 이 경우 일정이 변경되더라도 무료 취소 기한이 만료되기 전까지는 위약금 없이 예약을 취소하실 수 있습니다.</p>
            </div>
        </div>
    </div>
	
	<c:if test="${recentSearchList != null && !empty recentSearchList}">
	    <div class="section">
        <h2>고객님의 최근 검색</h2>
        <div class="recent-div">
            <ul class="recent-ul">
            	<c:forEach var="recentSearchList" items="${recentSearchList}" varStatus="status">
            	<fmt:parseDate var="start_date" value="${recentSearchList.start_date}" pattern="yyyy-MM-dd" />
                <fmt:parseDate var="end_date" value="${recentSearchList.end_date}" pattern="yyyy-MM-dd" />
                <li>
                     <a href="${contextPath}/searchResultInBox.do?keyword=${recentSearchList.city}&daterange1=<fmt:formatDate value="${start_date}" pattern="yyyy-MM-dd"/>&daterange2=<fmt:formatDate value="${end_date}" pattern="yyyy-MM-dd"/>" style="text-decoration: none; color: #000">
                        <div class="recent-ul-div">
                            <div><img class="recent-img" src="${recentSearchList.file_url}"></div>
                            
                            <div><span>${recentSearchList.city}</span><span><fmt:formatDate value="${start_date}" pattern="M월 dd일"/> ~ <fmt:formatDate value="${end_date}" pattern="M월 dd일"/>, ${recentSearchList.people}명</span></div>
                        </div>
                    </a>
                </li>
                
                </c:forEach>
            </ul>
        </div>
    	</div>
    </c:if>
	
	<c:choose>
	<c:when test="${isLogOn == true  && member!= null && !empty comingReservationList && comingReservationList != null}">
    <div class="section comming-trip">
        <h2>다가오는 여행</h2>
        <div class="recent-div comming-div">
            <ul class="recent-ul comming-ul">
            	<c:forEach var="comingReservationList" items="${comingReservationList}" end="2">
                <li>
                    <h3>${comingReservationList.city}<c:if test="${!comingReservationList.status}">
                           		<span class="meg-status">취소됨</span>
                           	</c:if></h3>
                    <fmt:parseDate var="reservation_start_date" value="${comingReservationList.start_date}" pattern="yyyy-MM-dd" />
					<fmt:parseDate var="reservation_end_date" value="${comingReservationList.end_date}" pattern="yyyy-MM-dd" />
                    <span class="coming-li-span"><fmt:formatDate value="${reservation_start_date}" pattern="M월 dd일"/> ~ <fmt:formatDate value="${reservation_end_date}" pattern="M월 dd일"/></span>
                    <a href="${contextPath}/confirmation.do?reservation_number=${comingReservationList.reservation_number}&serialnumber=${comingReservationList.serialnumber}&room_id=${comingReservationList.room_id}" style="text-decoration: none; color: #000">
                        <div class="recent-ul-div comming-ul-div">
                            <div class="comming-ul-div-div"><img class="recent-img" src="${comingReservationList.file_url}"></div>
                            <div><span>${comingReservationList.hotelname}</span><span><fmt:formatDate value="${reservation_start_date}" pattern="M월 dd일"/> ~ <fmt:formatDate value="${reservation_end_date}" pattern="M월 dd일"/>, ?명</span></div>
                        	
                        </div>
                    </a>
                </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    </c:when>
    </c:choose>

    <div class="promotion">
        <div><span class="promotion-i"><i class="fas fa-tag fa-lg"></i></span></div>
        <div>
            <span>전국 숙소 파격 할인 중 !&nbsp;</span>
            <a>추천 숙소를 알아보세요.</a>
        </div>
        <span class="x-button"><i class="bi bi-x-lg"></i></span>
    </div>

	<c:choose>
	<c:when test="${isLogOn == true  && member!= null && !empty pastReservationList && pastReservationList != null}">
    <div class="review-request">
    	
    	<c:forEach var="pastReservationList" items="${pastReservationList}" varStatus="status">
        <div id="myBanner2" class="bui-banner">
            <div class="bui-banner__image-container">
                <img class="bui-banner__image" src="${pastReservationList.file_url}">
            </div>
            <div class="bui-banner__content">
                <h4 class="bui-banner__title u-padding-left:0">
                    <b>${pastReservationList.hotelname}</b>, 어떠셨나요?
                </h4>
                <p class="bui-banner__text">
                    후기 작성에 남은 시간 단 ${pastReservationList.review_deadline}일! 잊지 말고 작성해주세요
                </p>
                <a class="bui-banner__button" href="${contextPath}/review/reviewForm.do?reservation_number=${pastReservationList.reservation_number}" target="_blank" target="_blank">
                    <span class="bui-button__text">숙박 경험을 평가해주세요</span>
                </a>
            </div>
            <span class="x-button2"><i class="bi bi-x-lg"></i></span>
        </div>
        </c:forEach>
    </div>
	</c:when>
	</c:choose>
	
    <div class="galleries">
        <div class="main-grid">
            <div class="main-grid-1">
                <div class="gallery-text-box">
                    <h1>${cityList[0].city}</h1>
                    <span>${cityList[0].count} 숙소</span>
                </div>
                <a href="${contextPath}/searchResultInBox.do?keyword=${cityList[0].city}&daterange1=${today}&daterange2=${tomorrow}">
                <img src="${cityList[0].file_url}">
                </a>
            </div>
            
            <div class="main-grid-2">
                <div class="gallery-text-box">
                    <h1>${cityList[1].city}</h1>
                    <span>${cityList[1].count} 숙소</span>
                </div>
                 <a href="${contextPath}/searchResultInBox.do?keyword=${cityList[1].city}&daterange1=${today}&daterange2=${tomorrow}">
                <img src="${cityList[1].file_url}">
                </a>
            </div>
            <div class="main-grid-3">
                <div class="gallery-text-box">
                    <h1>${cityList[2].city}</h1>
                    <span>${cityList[2].count} 숙소</span>
                </div>
                 <a href="${contextPath}/searchResultInBox.do?keyword=${cityList[2].city}&daterange1=${today}&daterange2=${tomorrow}">
                <img src="${cityList[2].file_url}">
                </a>
            </div>
            <div class="main-grid-4">
                <div class="gallery-text-box">
                    <h1>${cityList[3].city}</h1>
                    <span>${cityList[3].count} 숙소</span>
                </div>
                 <a href="${contextPath}/searchResultInBox.do?keyword=${cityList[3].city}&daterange1=${today}&daterange2=${tomorrow}">
                <img src="${cityList[3].file_url}">
                </a>
            </div>
            <div class="main-grid-5">
                <div class="gallery-text-box">
                    <h1>${cityList[4].city}</h1>
                    <span>${cityList[4].count} 숙소</span>
                </div>
                 <a href="${contextPath}/searchResultInBox.do?keyword=${cityList[4].city}&daterange1=${today}&daterange2=${tomorrow}">
                <img src="${cityList[4].file_url}">
                </a>
            </div>
        </div>
    </div>

    <div class="section spot">
        <h2>💗 가장 사랑받는 호텔 💗</h2>
        <span>대부분 빠르게 예약이 마감됩니다.</span>
    </div>

    <div class="new-spot">
        <ul class="slider">
        	<c:forEach var="bestHotelList" items="${bestHotelList}" begin="1" end="6" varStatus="status">
        	<c:set var="todayv"><fmt:formatDate value="${now}" pattern="yyyyMMdd"/></c:set>
        	<c:set var="tomorrowv"><fmt:formatDate value="${nnow}" pattern="yyyyMMdd"/></c:set>
            <li>
                <a class="a" href="${contextPath}/hotelInfo.do?serialNumber=${bestHotelList.serialnumber}&start_date=${todayv }&end_date=${tomorrowv}" target="_blank">
                    <div><img src="${bestHotelList.file_url}"></div>
                    <div>
                        <span>${bestHotelList.hotelname}</span>
                        
                    </div>
                    <div class="korea-span">
                    <i class="bi bi-geo-alt-fill"></i><span class="hotel-city" style="font-size: 13px; color: #383838; font-weight: 600; margin-right: 5px;">${bestHotelList.city}</span>
                    <c:set var="star" value="${bestHotelList.star*1}"/>
					<c:forEach begin="1" end="${star }">
					<span>
						<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						</svg>
					</span>
					</c:forEach>
					</div>
                </a>
            </li>
           </c:forEach>
          </ul>
    </div>
    
    <div class="section">
        <div class="tab">
            <button class="tablinks" onclick="openCity(event, 'location')" id="defaultOpen">전체 지역</button>
            <button class="tablinks" onclick="openCity(event, 'city')">추천 숙소</button>
           <!--  <button class="tablinks" onclick="openCity(event, 'place')">관광 명소</button> -->
        </div>
        
        <div id="location" class="tabcontent">
        	<c:forEach var="cityListAll" items="${cityListAll}" varStatus="status">
            <div class="content-box">
                <a href="${contextPath}/searchResultInBox.do?keyword=${cityListAll.city}&daterange1=${today}&daterange2=${tomorrow}" style="text-decoration: none; color: #000;">${cityListAll.city}</a>
                <p>${cityListAll.count}개 숙소</p>
            </div>
            </c:forEach>
            
        </div>
        
        <div id="city" class="tabcontent">
        	<c:forEach var="randomHotelList" items="${randomHotelList}" varStatus="status">
            <div class="content-box randomImage">
            	<div>
            	<a href="${contextPath}/hotelInfo.do?serialNumber=${randomHotelList.serialnumber}&start_date=${todayv }&end_date=${tomorrowv}" target="_blank"  style="text-decoration: none; color: #000;">
            		<c:choose>
            		<c:when test="${empty randomHotelList.file_url}">
            			<img class="randomHotelImage" src="https://booqueen.s3.ap-northeast-2.amazonaws.com/hotel/default-hotel-img.png">
            		</c:when>
            		<c:otherwise>
            			<img class="randomHotelImage" src="${randomHotelList.file_url}">
            		</c:otherwise>
            		</c:choose>
            	</a>	
            	</div>
            	<div>
	                <a href="${contextPath}/hotelInfo.do?serialNumber=${randomHotelList.serialnumber}&start_date=${todayv }&end_date=${tomorrowv}" target="_blank"  style="text-decoration: none; color: #000;">
	                <div class="randomHotelname">${randomHotelList.hotelname}</div></a>
	                <p class="randomHotelCity">${randomHotelList.city}</p>
                </div>
            </div>
            </c:forEach>
        </div>
        
        <div id="place" class="tabcontent">
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
        </div>
    </div>

	<jsp:include page="/WEB-INF/user/member/footer.jsp"/>
	
    <script>
        document.getElementById("defaultOpen").click();
    </script>
    
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    
    <script>
        $('.slider').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            dots: true,
            variableWidth: true
        });
    </script>

    <script>
    var today = new Date();

    var year = today.getFullYear();
    var month = ('0' + (today.getMonth() + 1)).slice(-2);
    var day = ('0' + today.getDate()).slice(-2);

    var dateString = year + '/' + month  + '/' + day;
    
    var tomorrow = new Date(today.setDate(today.getDate() + 1));
    
    var year_2 = tomorrow.getFullYear();
    var month_2 = ('0' + (tomorrow.getMonth() + 1)).slice(-2);
    var day_2 = ('0' + tomorrow.getDate()).slice(-2);
    
    var dateString_2 = year_2 + '/' + month_2  + '/' + day_2;
    
        $(document).ready(function () {
            $(function () {
                $('input[name="daterange"]').daterangepicker({
                    "startDate": dateString,
                    "endDate": dateString_2,
                    "minDate": dateString,
                    opens: 'center',
                    locale: {
                        format: 'YYYY/MM/DD'
                    }
                });
            });
        });
    </script>
    
    <script>
    $(function() {
		var contextPath = '${contextPath}';
		$.ajax({
			type: 'get',
			url: contextPath + '/autocomplete.do',
			dataType: "JSON",
			success: function(data) {
				let city = $.map(data, function(item) {
					chosung ="";
					full = Hangul.disassemble(item).join("").replace(/ /gi, ""); // 코드를 통해 한글 초중종성으로 나눠 label에 추가
					Hangul.d(item, true).forEach(function(strItem, index) {
						if (strItem[0] != " ") { // 띄어쓰기 아니면
							chosung += strItem[0]; // 초성 추가
						}
					});
					return {
						label : chosung + "|" + (item).replace(/ /gi, "") + "|" + full, // 실제 검색어랑 비교 대상
						value : item,
						chosung : chosung,
						full: full
					}
				});
				
				$('#keywordInput').autocomplete({
					source : city,
					select : function(event, ui) {
						console.log(ui.item.label + " 선택 완료");
					},
					focus : function(event, ui) {
						return false; // 한글 에러 잡기 용도
					}
				}).autocomplete("instance")._renderItem = function(ul, item) {
					return $("<li>")
					.append("<div style='display: flex; align-items: center;'>" + "<span class='sb-autocomplete--photo'><svg fill='#6B6B6B' height='24' width='24' viewBox='0 0 24 24' class='bk-icon -streamline-geo_pin'><path d='M15 8.25a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm1.5 0a4.5 4.5 0 1 0-9 0 4.5 4.5 0 0 0 9 0zM12 1.5a6.75 6.75 0 0 1 6.75 6.75c0 2.537-3.537 9.406-6.75 14.25-3.214-4.844-6.75-11.713-6.75-14.25A6.75 6.75 0 0 1 12 1.5zM12 0a8.25 8.25 0 0 0-8.25 8.25c0 2.965 3.594 9.945 7 15.08a1.5 1.5 0 0 0 2.5 0c3.406-5.135 7-12.115 7-15.08A8.25 8.25 0 0 0 12 0z'></path></svg></span><span style='padding-left: 6px;'>" + item.value + "</span></div>")
					.appendTo(ul);
				};
			}
		});
		
		$('#keywordInput').on("keyup", function() {
			input = $('#keywordInput').val(); // 입력된 값 저장
			$('#keywordInput').autocomplete("search", Hangul.disassemble(input).join("").replace(/ /gi, "")); // 자음모음 분리 후 띄어쓰기 삭제
		})
		$('#keywordInput').on("focus", function() {
			$('#keywordInput').autocomplete("search", Hangul.disassemble('ㅇ').join("").replace(/ /gi, ""));
		})
	});
    </script>

</body>
</html>