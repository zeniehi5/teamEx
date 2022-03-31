<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />  
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/user/css/reservation2.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/d2826a4f92.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <title>reservation2</title>
   
</head>
<body>
    <jsp:include page="/WEB-INF/user/member/header.jsp"/>

    <div class="process">
        <div class="process-inner">
            <ol>
                <li>
                    <span><svg class="bk-icon -streamline-checkmark_fill bui-nav-progress__icon" fill="currentColor" height="24" width="24" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M56.33 102a6 6 0 0 1-4.24-1.75L19.27 67.54A6.014 6.014 0 1 1 27.74 59l27.94 27.88 44-58.49a6 6 0 1 1 9.58 7.22l-48.17 64a5.998 5.998 0 0 1-4.34 2.39z"></path></svg></i></span>
                    <strong>옵션 선택</strong>
                </li>
                <li></li>
                <li>
                    <span><svg class="bk-icon -streamline-checkmark_fill bui-nav-progress__icon" fill="currentColor" height="24" width="24" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M56.33 102a6 6 0 0 1-4.24-1.75L19.27 67.54A6.014 6.014 0 1 1 27.74 59l27.94 27.88 44-58.49a6 6 0 1 1 9.58 7.22l-48.17 64a5.998 5.998 0 0 1-4.34 2.39z"></path></svg></i></span>
                    <strong>내 정보</strong>
                </li>
                <li></li>
                <li>
                    <span>3</span>
                    <strong>결제</strong>
                </li>
            </ol>
        </div>
    </div>
    
	<div class="main">
	<form action="${contextPath}/reservation.do" id="last_reservation">
    <div class="container">
        <aside class="aside">
            <div class="aside-inner">
                <div class="aside-header">
                    <h3>내 예약 정보</h3>
                </div>
                <div class="aside-main">
                	
                    <div class="hotel-detail-check">
                		<div class="hotel-detail-inner">
		                    <div class="detail-img">
		                        <img src="${hotelImg.file_url}">
		                    </div>
		                    <div class="detail-text">
		                        <div>
		                            <div class="detail-top">
		                            	<div>
		                                <span class="detail-top-span">
		                                    <c:set var="star" value="${hotelVO.star*1}"/>
											<c:forEach begin="1" end="${star }">
												<span>
												<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#febb02" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												</svg>
											</span>
											</c:forEach>
		                                </span>
		                                </div>
		                                <div class="score-box">
		                            	<c:choose>
		                            	<c:when test="${reviewAvgVO.scoreAvg == null}">
		                                	0
		                                </c:when>
		                                <c:otherwise>
		                                	${reviewAvgVO.scoreAvg}
		                                </c:otherwise>	
		                                </c:choose>
		                            	</div>
		                            	<c:choose>
							                <c:when test="${reviewAvgVO.scoreAvg >= 9}"><span>최고</span></c:when>
											<c:when test="${reviewAvgVO.scoreAvg >= 8}"><span>매우 좋음</span></c:when>
											<c:when test="${reviewAvgVO.scoreAvg >= 7}"><span>좋음</span></c:when>
											<c:when test="${reviewAvgVO.scoreAvg >= 6}"><span>만족</span></c:when>
											<c:when test="${reviewAvgVO.scoreAvg < 6}"><span>보통</span></c:when>
							           </c:choose>  
		                            </div>
		                        </div>
		                        <div>
		                        	 <h4>${hotelVO.hotelname}</h4>
		                        </div>
		                        <div>
		                            <address>${hotelVO.city}, ${hotelVO.address1}</address>
		                        </div>
		                    </div>
		                </div>
                	</div>
                    <div class="aside-main-first">
                        <div class="div-of-first">
                            <div class="check-text">체크인</div>
                            <time class="aside-time">
                                <span>${reservationVO.start_date_year}년 ${reservationVO.start_date_month}월 ${reservationVO.start_date_day}일(${reservationVO.start_day})</span>
                                <span>${hotelPoclicyVO.check_in_start }:00 - ${hotelPoclicyVO.check_in_end }:00</span> 
                            </time>
                        </div>
                        <div>
                            <div class="check-text">체크아웃</div>
                            <time class="aside-time">
                                <span>${reservationVO.end_date_year}년 ${reservationVO.end_date_month}월 ${reservationVO.end_date_day}일(${reservationVO.end_day}) </span>
                                <span>${hotelPoclicyVO.check_out_start }:00 - ${hotelPoclicyVO.check_out_end }:00</span>
                            </time>
                        </div>
                    </div>
                    <div style="display: flex;flex-direction: column;margin: 0 20px;width: 100;width: 150px;">
                    <div class="aside-main-second" style="display: flex; justify-content: space-between; ">
                        <div>총 숙박 기간:</div>
                        <div><span style="font-style: italic;">${reservationVO.diffDays }</span>박</div>
                    </div>
					<c:forEach var="count_rooms" items="${reservationVO.count_rooms}" varStatus="status">
                     	<c:set var="types" value="${reservationVO.types[status.index]}"/>
                     	<input type="hidden" name="types" value="${types}"/>
                     	<c:set var="prices" value="${reservationVO.prices[status.index]}"/>
                     	<input type="hidden" name="prices" value="${prices * reservationVO.diffDays * count_rooms }"/>
                     	<input type="hidden" name="count_rooms" value="${count_rooms }"/>
                     	
                    	<c:if test="${count_rooms ne '0' }">
                    		<div style="display:flex; justify-content:space-between; "><span></span><span style="font-style: italic; font-size: 15px;">${types} x ${count_rooms} </span></div>   	
                   		</c:if>
                   	</c:forEach>

                    <div style="display:flex; justify-content:space-between; margin-top: 10px;"><div>총 가격: </div><div style="font-style: italic;"><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${reservationVO.total}" /></div></div>
					</div>
                	<div style="margin-left: 30px;">
                		<div>이름</div><div><span>: ${reservationVO.lastname}${reservationVO.firstname}</span></div>
                		<div style="margin-top: 15px;">이메일</div><div><span>${reservationVO.email}</span></div>
                	</div>
                </div>
            </div>

<!--            <div class="add">
                <i class="bi bi-alarm"></i>
                <div>
                    <span>선택 날짜에 서울 숙소 완판 임박: </span>
                    <span>이곳과 비슷한 3성급 호텔 4개가 저희 사이트에서 이미 판매 완료되었어요</span>
                </div>
            </div> -->

        </aside>
        
        
				<input type="hidden" name="room_id" value=${reservationVO.room_id }>
	            <input type="hidden" name="serialnumber" value=${reservationVO.serialnumber }>
	            <input type="hidden" name="type" value=${reservationVO.type }>
	            <input type="hidden" name="price" value=${reservationVO.price }>
	            <input type="hidden" name="count_room" value=${reservationVO.count_room }>
	            <input type="hidden" name="start_date" value=${reservationVO.start_date }>
	            <input type="hidden" name="start_date_year" value=${reservationVO.start_date_year }>
	            <input type="hidden" name="start_date_month" value=${reservationVO.start_date_month }>
	            <input type="hidden" name="start_date_day" value=${reservationVO.start_date_day }>
	            <input type="hidden" name="end_date" value=${reservationVO.end_date }>
	            <input type="hidden" name="end_date_year" value=${reservationVO.end_date_year }>
	            <input type="hidden" name="end_date_month" value=${reservationVO.end_date_month }>
	            <input type="hidden" name="end_date_day" value=${reservationVO.end_date_day }>
	            <input type="hidden" name="diffDays" value=${reservationVO.diffDays }>
	            <input type="hidden" name="start_day" value=${reservationVO.start_day }>
	            <input type="hidden" name="end_day" value=${reservationVO.end_day }>
   	            <input type="hidden" name="request_text" value=${reservationVO.request_text }>
	            <input type="hidden" name="check_in_start" value="${hotelPoclicyVO.check_in_start } ">
	            <input type="hidden" name="check_in_end" value="${hotelPoclicyVO.check_in_end }">
	            <input type="hidden" name="check_out_start" value="${hotelPoclicyVO.check_out_start }">
	            <input type="hidden" name="check_out_end" value="${hotelPoclicyVO.check_out_end }">
	            <input type="hidden" name="file_url" value="${hotelImg.file_url}">
	            <input type="hidden" name="hotelname" value="${hotelVO.hotelname}">
	            <input type="hidden" name="star" value="${hotelVO.star}">
	            <input type="hidden" name="city" value="${hotelVO.city}">
	            <input type="hidden" name="address1" value="${hotelVO.address1}">
	            <input type="hidden" name="address2" value="${hotelVO.address2}">
	            <input type="hidden" name="userid" value="${member.userid}">
	            <input type="hidden" name="lastname" value="${reservationVO.lastname}">
	            <input type="hidden" name="firstname" value="${reservationVO.firstname}">
	            <input type="hidden" name="arrive_time" value="${reservationVO.arrive_time}">
	            <input type="hidden" name="email" value="${reservationVO.email }">
			</form>

            <div class="extra-info">
                <p class="payment-details-t-and-c payment-method__extras-item js-payment-details-t-and-c">
                    이 예약의 직접 당사자는 고객님과 ${hotelVO.hotelname}이며, 이 예약을 완료함으로써 
                    <a href="/bookcancel.ko.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQHoAQH4AQuIAgGoAgS4Ao-R548GwAIB0gIkNmNkNzYwZWUtZTRlZS00NGU0LTg3OWMtNmU0ZDIzYjFkZmQ32AIG4AIB;sid=62a13e359b6273f62369b2a74709d770;checkin=2022-02-02;checkout=2022-02-03;general=295985256;hotel_id=7017459;is_family_search=0;is_group_search=0;persons=2;policygroup_room=2022-02-03%2C701745901%3A295985256%3A1%3AJiN4QzJBNDsmI3hEMEUwOyYjeEIyRTQ7JiN4QjREQzsgJiN4QjM1NDsmI3hCRTE0OyYjeEI4Rjg7%0A%3A701745901_295985256_2_0_0;refund_text_global=%20%EC%98%88%EC%95%BD%20%EC%B7%A8%EC%86%8C%20%EC%8B%9C%20%E2%82%A939%2C600%EC%9D%98%20%EA%B8%88%EC%95%A1%EC%9D%B4%20%ED%99%98%EB%B6%88%EB%90%A9%EB%8B%88%EB%8B%A4.;srpvid=4ee000ba74c400d2&amp;;popupit=1" target="_blank" class="popupit bui-link">
                    예약 조건</a>, 
                    <a href="/content/terms.ko.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQHoAQH4AQuIAgGoAgS4Ao-R548GwAIB0gIkNmNkNzYwZWUtZTRlZS00NGU0LTg3OWMtNmU0ZDIzYjFkZmQ32AIG4AIB;sid=62a13e359b6273f62369b2a74709d770;address1=Old%20Christchurch%20Road;ap_ref=0;bp_from=standard;bp_travel_purpose=leisure;bpid=7F6E52D2-7429-4225-85B7-F766AA324A4F;cc1=kr;checkin=2022-02-02;checkout=2022-02-03;city=Bournemouth;dc_issue_number=0;dotd_fb=0;email=smin323%40naver.com;email_confirm=smin323%40naver.com;final_booking_price=79200;firstname=%EC%83%81%EB%AF%BC;full_cost=0;full_cost_plain=0;gpp=80000;gps=10;gsav=8000;guest_name_701745901_295985256_2_0_0=%EA%B9%80%20%EC%83%81%EB%AF%BC;hostname=www.booking.com;hotel_id=7017459;installment_count=1;interval=1;lastname=%EA%B9%80;nits_session_id=BB408031-0C6A-450C-94CF-FC8DE038A244;nr_guests_701745901_295985256_2_0_0=2;nr_rooms_701745901_295985256_2_0_0=1;pre_order_uuid=88ef4b4d-aca1-4233-8b67-296a8cd57167;promo=0;raf_cm_later=0;recommended_room_id=0;recp=0;remb=0a14164b1a3031b2a7b3a0b4a0b5a306b6a701b;rets=0;reub=0;room1=A%2CA;rt_num_blocks=6;rt_num_blocks_per_room=%7B%22701745903%22%3A1%2C%22701745905%22%3A1%2C%22701745906%22%3A1%2C%22701745901%22%3A1%2C%22701745908%22%3A1%2C%22701745904%22%3A1%7D;rt_num_rooms=6;rt_pageview_id=592e00be09b000c6;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=fc2a62ed-f10d-410b-bea0-3ffa9f6f4932;seen_ft_rvw=0;smoking_preference_701745901_295985256_2_0_0=no;srpvid=4ee000ba74c400d2;stage=2;total_cost=79200;trips_promo=%5B%5D;ufi=-706906;upgrade_to=0;zip=BH1%201EZ&amp;" target="_blank" class="popupit bui-link">
                    일반 약관</a>, 
                    <a target="_blank" rel="nofollow" href="/content/privacy.ko.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQHoAQH4AQuIAgGoAgS4Ao-R548GwAIB0gIkNmNkNzYwZWUtZTRlZS00NGU0LTg3OWMtNmU0ZDIzYjFkZmQ32AIG4AIB;sid=62a13e359b6273f62369b2a74709d770;address1=Old%20Christchurch%20Road;ap_ref=0;bp_from=standard;bp_travel_purpose=leisure;bpid=7F6E52D2-7429-4225-85B7-F766AA324A4F;cc1=kr;checkin=2022-02-02;checkout=2022-02-03;city=Bournemouth;dc_issue_number=0;dotd_fb=0;email=smin323%40naver.com;email_confirm=smin323%40naver.com;final_booking_price=79200;firstname=%EC%83%81%EB%AF%BC;full_cost=0;full_cost_plain=0;gpp=80000;gps=10;gsav=8000;guest_name_701745901_295985256_2_0_0=%EA%B9%80%20%EC%83%81%EB%AF%BC;hostname=www.booking.com;hotel_id=7017459;installment_count=1;interval=1;lastname=%EA%B9%80;nits_session_id=BB408031-0C6A-450C-94CF-FC8DE038A244;nr_guests_701745901_295985256_2_0_0=2;nr_rooms_701745901_295985256_2_0_0=1;pre_order_uuid=88ef4b4d-aca1-4233-8b67-296a8cd57167;promo=0;raf_cm_later=0;recommended_room_id=0;recp=0;remb=0a14164b1a3031b2a7b3a0b4a0b5a306b6a701b;rets=0;reub=0;room1=A%2CA;rt_num_blocks=6;rt_num_blocks_per_room=%7B%22701745903%22%3A1%2C%22701745905%22%3A1%2C%22701745906%22%3A1%2C%22701745901%22%3A1%2C%22701745908%22%3A1%2C%22701745904%22%3A1%7D;rt_num_rooms=6;rt_pageview_id=592e00be09b000c6;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=fc2a62ed-f10d-410b-bea0-3ffa9f6f4932;seen_ft_rvw=0;smoking_preference_701745901_295985256_2_0_0=no;srpvid=4ee000ba74c400d2;stage=2;total_cost=79200;trips_promo=%5B%5D;ufi=-706906;upgrade_to=0;zip=BH1%201EZ&amp;" class="popupit bui-link">
                    개인정보 보호정책</a>, 
                    <a target="_blank" rel="nofollow" href="/content/wallet-terms.ko.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQHoAQH4AQuIAgGoAgS4Ao-R548GwAIB0gIkNmNkNzYwZWUtZTRlZS00NGU0LTg3OWMtNmU0ZDIzYjFkZmQ32AIG4AIB;sid=62a13e359b6273f62369b2a74709d770;address1=Old%20Christchurch%20Road;ap_ref=0;bp_from=standard;bp_travel_purpose=leisure;bpid=7F6E52D2-7429-4225-85B7-F766AA324A4F;cc1=kr;checkin=2022-02-02;checkout=2022-02-03;city=Bournemouth;dc_issue_number=0;dotd_fb=0;email=smin323%40naver.com;email_confirm=smin323%40naver.com;final_booking_price=79200;firstname=%EC%83%81%EB%AF%BC;full_cost=0;full_cost_plain=0;gpp=80000;gps=10;gsav=8000;guest_name_701745901_295985256_2_0_0=%EA%B9%80%20%EC%83%81%EB%AF%BC;hostname=www.booking.com;hotel_id=7017459;installment_count=1;interval=1;lastname=%EA%B9%80;nits_session_id=BB408031-0C6A-450C-94CF-FC8DE038A244;nr_guests_701745901_295985256_2_0_0=2;nr_rooms_701745901_295985256_2_0_0=1;pre_order_uuid=88ef4b4d-aca1-4233-8b67-296a8cd57167;promo=0;raf_cm_later=0;recommended_room_id=0;recp=0;remb=0a14164b1a3031b2a7b3a0b4a0b5a306b6a701b;rets=0;reub=0;room1=A%2CA;rt_num_blocks=6;rt_num_blocks_per_room=%7B%22701745903%22%3A1%2C%22701745905%22%3A1%2C%22701745906%22%3A1%2C%22701745901%22%3A1%2C%22701745908%22%3A1%2C%22701745904%22%3A1%7D;rt_num_rooms=6;rt_pageview_id=592e00be09b000c6;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=fc2a62ed-f10d-410b-bea0-3ffa9f6f4932;seen_ft_rvw=0;smoking_preference_701745901_295985256_2_0_0=no;srpvid=4ee000ba74c400d2;stage=2;total_cost=79200;trips_promo=%5B%5D;ufi=-706906;upgrade_to=0;zip=BH1%201EZ&amp;" class="popupit bui-link">
                    Wallet 이용약관</a>에 동의하시게 됩니다.
                    </p>
            </div>
            
            <div class="button_box">
                <button id="complete_btn" class="next-step-button" type="button" name="book" data-bui-component="Popover" data-popover-content-id="bp-submit-popover" data-popover-position="top end" aria-describedby="_ydtbmi19e">
                    <svg class="bk-icon lock_closed" height="24" role="presentation" width="24" viewBox="0 0 24 24" aria-hidden="true" focusable="false"><path d="M19.5 16.5v5.25a.75.75 0 0 1-.75.75H5.25a.75.75 0 0 1-.75-.75v-10.5a.75.75 0 0 1 .75-.75h13.5a.75.75 0 0 1 .75.75v5.25zm1.5 0v-5.25A2.25 2.25 0 0 0 18.75 9H5.25A2.25 2.25 0 0 0 3 11.25v10.5A2.25 2.25 0 0 0 5.25 24h13.5A2.25 2.25 0 0 0 21 21.75V16.5zM7.5 9.75V6a4.5 4.5 0 0 1 9 0v3.75a.75.75 0 0 0 1.5 0V6A6 6 0 0 0 6 6v3.75a.75.75 0 0 0 1.5 0zM12 15a1.125 1.125 0 1 0 .004 0h-.006a.75.75 0 0 0 .004 1.5H12a.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5z"></path></svg>
                    <span class="bui-button__text js-button__text"> 예약 완료 </span>
                </button>
                <button onclick="on()" class="recheck-button">
                    <span>예약 내용 재확인</span>
                </button>
            </div>
        
    </div>
    </div><!-- end main-->

    <div class="footer">
        <div class="footer-inner">
            <div class="inner-box">
                <div class="inner-inner">
                    <ul>
                        <li>
                            <a>Bookqueen.com 소개</a>
                        </li>
                        <li>
                            <a>고객 서비스팀에 문의</a>
                        </li>
                        <li>
                            <a>이용 약관</a>
                        </li>
                        <li>
                            <a>개인정보 보호정책 & 쿠키 정책</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div id="overlay" onclick="off()">
    	<div style="width: 500px; height: 500px; background-color: #fff; margin: 10% 40%;">
<%--     		<jsp:include page="/WEB-INF/user/reservation/kakaopay.jsp"/> --%>
    	</div>
    </div>

    <script>
        $(document).ready(function(){
            $(".choice-cancel").click(function(){
                $(".room-detail").css("display","none");
            });
            $('#complete_btn').click(check_reservation);
        });
	
	var path = '${contextPath}';
	
	/* 결제 전 예약 확인*/
	function check_reservation(){
		$.ajax({
			type 	: 	"post",
			url 	: 	path + "/check_reservation.do",
			data 	: 	$("#last_reservation").serialize(),
			success : 	function(data) {
				if (data === "true") {
					alert('예약이 가능합니다. 결제를 계속 진행해주세요.');
					payment();
				} else {
					alert('예약이 이미 완료되었습니다. 다른 날짜나 객실을 이용해주시기 바랍니다.');
				}
			},
			error	:	function(data){
				alert("시스템 에러가 발생하였습니다. 다시 시도해주세요.");
			}
		});
	}
	
	function payment() {
		   var IMP = window.IMP; // 생략 가능
		   IMP.init("imp09566797"); 
		 
// 		   var price = 100; 
// 	       var count_room = '${reservationVO.count_room}';
		   var amount = 100; /* '${reservationVO.total}'; */
		   var address = '${reservationVO.address1}' + '${reservationVO.address2}';
		   var name = '${reservationVO.lastname}' + '${reservationVO.firstname}';
		   var phone = '${member.phone1}' + '${member.phone2}' + '${member.phone3}';
		   var type = '${reservationVO.type}';
		   var userid = '${member.userid}';
		   var email = '${reservationVO.email}';
		   var serialnumber = '${reservationVO.serialnumber}';
		   var hotelname = '${reservationVO.hotelname}';
		   var room_id = '${reservationVO.room_id}';
		   
		   IMP.request_pay({ // param
		        pg: "html5_inicis",
		        pay_method: "card",
		        merchant_uid: "merchant" + new Date().getTime(),
		        name: hotelname,
		        amount: amount,
		        buyer_email: email,
		        buyer_name: name,
		        buyer_tel: phone,
		        buyer_addr: address
	          }, function (req) { // callback
                  
	        	  var imp_uid_from_req = req.imp_uid;
	        	  
                  $.ajax({
                     url: path + "/iamport.do?imp_uid="+req.imp_uid,
                     type: "POST",
                     dataType: "JSON"
                  }).done(function(data){
                     var merchant = String(req.merchant_uid);
                     
                     if(req.paid_amount == data.response.amount) {
                        alert("성공적으로 결제가 완료되었습니다!");
                        
                        var paymentVO = {
                        					"imp_uid" : imp_uid_from_req,
                        					"userid" : userid,
                                			"name" : name,
                                			"email" : email,
                                			"phone" : phone,
                                			"price" : amount,
                                			"order_merchant_serial" : merchant,
                                			"serialnumber" : serialnumber,
                                			"room_id" : room_id,
                                			"payment_status": 'approval'
                             			}
                        
                        $.ajax({
	                        url: path + "/paymentSuccess.do",
	                        type : "POST",
	                        dataType: 'json',
	                        contentType: 'application/json',
	                        data: JSON.stringify(paymentVO),
	                        complete : function(response){
	                        	var text = '';
	                        	text += "<input type='hidden' value='";
	                        	text += imp_uid_from_req;
	                        	text += "' name='imp_uid'>";
	                        	text += "<input type='hidden' value='";
	                        	text += merchant;
	                        	text += "' name='merchant'>";	                   
	                        	$('#last_reservation').append(text);
	                       		$('#last_reservation').submit();
	                        }
                        }); 
                     }
                     
                  });
	           }
		    );
		}
	</script>
    <script>
        function on() {
          document.getElementById("overlay").style.display = "block";
        }

        function off() {
          document.getElementById("overlay").style.display = "none";
        }
    </script>
</body>
</html>