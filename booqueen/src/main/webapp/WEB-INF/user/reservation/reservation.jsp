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
    <link rel="stylesheet" href="${contextPath}/resources/user/css/reservation.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/d2826a4f92.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>reservation</title>
   
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
                    <span>2</span>
                    <strong>내 정보</strong>
                </li>
                <li></li>
                <li>
                    <span id="last-input">3</span>
                    <strong>결제</strong>
                </li>
            </ol>
        </div>
    </div>
	<form action="${contextPath}/comfirmReservation.do" id="comfirm_reservation">
    <div class="container">
        <aside class="aside">
            <div class="aside-inner">
                <div class="aside-header">
                    <h3>내 예약 정보</h3>
                </div>
                <div class="aside-main">
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
                    <div class="aside-main-second">
                        <div style="display: flex; margin: 10px 0; justify-content: space-between;"><span>총 숙박 기간:</span><span style="font-style: italic; font-size: 17px;">${reservationVO.diffDays }박</span></div>
                    </div>
                    <div class="aside-main-thrid">
                        <a>혹시 여행 날짜가 변경되었나요?</a>
                    </div>
                    <hr class="line">
                    <div style="display:flex; justify-content:space-between; flex-direction: column;">
                    
                    <c:set var="total" value="0"/>
                     <c:forEach var="count_rooms" items="${reservationVO.count_rooms}" varStatus="status">
                		<c:set var="types" value="${reservationVO.types[status.index]}"/>
                		<input type="hidden" value="${count_rooms }" name="count_rooms">
                		<input type="hidden" value="${types}" name="types">
                		<c:set var="prices" value="${reservationVO.prices[status.index] }"/>
                		<input type="hidden" value="${prices }" name="prices">
                    	<c:if test="${count_rooms ne 0 }">
                    		<div style="display:flex; justify-content:space-between;"><span>선택 객실:</span><span style="font-style: italic; font-size: 15px;">${types} x ${count_rooms}</span></div>   	
                   			<div style="display:flex; justify-content:space-between; margin-bottom: 5px;"><span></span><span style="font-style: italic; font-size: 15px;"><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${prices * reservationVO.diffDays * count_rooms}" /></span></div>
                   			<c:set var= "total" value="${total + (prices * reservationVO.diffDays * count_rooms)}"/>
                   		</c:if>
                   	</c:forEach>	                   	
                    
                    </div>
                    <c:set var="count_room" value="${reservationVO.count_room}"/>
                    <div style="display:flex; justify-content:space-between; margin-top: 50px; ">
                    	<div>총 가격: </div>
                    	<div style="font-style: italic; font-size: 17px;"><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${total}" /></div>
                    </div>
                    <div class="other-room-div"><a class="other-room-a">다른 객실 선택하기</a></div>
                </div>
            </div>

      <!-- <div class="add"> 
                <i class="bi bi-alarm"></i>
                <div>
                    <span>선택 날짜에 서울 숙소 완판 임박: </span>
                    <span>이곳과 비슷한 3성급 호텔 4개가 저희 사이트에서 이미 판매 완료되었어요</span>
                </div>
            </div>  -->

            <div class="information">
                <h3>중요 정보</h3>
                <p>코로나19(COVID-19) 확산 방지를 위한 정부 지침에 따라, 이 숙소는 해당 지침이 적용되는 날짜의 경우 투숙객의 신원, 여행 일정, 기타 관련 정보를 확인하기 위해 추가 문서를 요청할 수 있습니다.</p>
                <p>현재 이 숙소는 코로나19(COVID-19)에 대응하기 위해 추가 안전 및 위생 조치를 실시하고 있습니다.</p>
                <p>이 숙소는 코로나19(COVID-19)와 관련하여 고객과 직원의 안전을 지키기 위한 조치를 시행 중입니다. 이에 따라 특정 서비스 제공 또는 편의시설 이용이 제한되거나 중단되었을 수 있습니다.</p>
                <p>예상 도착 시간을 ${hotelVO.hotelname}에 미리 알려주세요. 예약 시 별도 요청란에 기재하거나 예약 확인서에 기재된 숙소 연락처로 직접 연락하셔도 됩니다.</p>
                <p>모든 투숙객은 체크인 시 사진이 부착된 유효한 신분증과 신용카드를 제시하셔야 합니다. 모든 별도 요청 사항은 체크인 시 가능한 경우에 한해 제공되며, 추가 비용이 부과될 수도 있음을 안내드립니다.</p>
            </div>
        </aside>
        
        <div class="main">
		<!-- <div class="alert">
                <i class="bi bi-info-circle"></i>
                <div>
                    <p>코로나19(COVID-19) 확산 방지를 위한 정부 지침에 따라, 이 숙소는 해당 지침이 적용되는 날짜의 경우 투숙객의 신원, 여행 일정, 기타 관련 정보를 확인하기 위해 추가 문서를 요청할 수 있습니다.</p>
                    <a href="#last-button">더 알아보기</a>
                </div>
            </div> -->

            <div class="hotel-detail">
                <div class="hotel-detail-inner">
                    <div class="detail-img">
                        <img src="${hotelImg.file_url}">
                    </div>
                    <div class="detail-text">
                        <div>
                            <div class="detail-top">
                                <div>호텔</div>
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
                            <h2>${hotelVO.hotelname}</h2>
                        </div>
                        <div>
                            <address>${hotelVO.city}, ${hotelVO.address1}</address>
                        </div>
                        <div class="detail-bottom">
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
                            <div class="review-row">
                                <c:choose>
					                <c:when test="${reviewAvgVO.scoreAvg >= 9}"><span>최고&nbsp;</span></c:when>
									<c:when test="${reviewAvgVO.scoreAvg >= 8}"><span>매우 좋음&nbsp;</span></c:when>
									<c:when test="${reviewAvgVO.scoreAvg >= 7}"><span>좋음&nbsp;</span></c:when>
									<c:when test="${reviewAvgVO.scoreAvg >= 6}"><span>만족&nbsp;</span></c:when>
									<c:when test="${reviewAvgVO.scoreAvg < 6}"><span>보통&nbsp;</span></c:when>
					           </c:choose>  
                                <c:choose>
                            	<c:when test="${reviewAvgVO.count == null}">
                                	<div>0개 이용 후기</div>
                                </c:when>
                                <c:otherwise>
                                	<div>${reviewAvgVO.count}개 이용 후기</div>
                                </c:otherwise>	
                                </c:choose>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

	
            <div class="input-section">
                <h3>상세 정보를 입력해 주세요.</h3>
                <div class="required_fields_description">
                    이제 거의 마무리되었어요! <b>*</b> 필수 정보만 마저 입력하시면 됩니다
                </div>
                <div class="name">
                    <div class="name-input">
                        <div class = "bp_form__field bp_form__field-- lastname">
                            <label class = "bp_form__field__label"> 성</label>
                            <input type="text" name="lastname" id="lastname" required="" class="bp_input_text bp_form__field__input" placeholder="예 : Hong" size="20">
                        </div>
                    </div>
                    <div>
                        <div data-component="bp/personal-details-form/firstname" class="bp_form__field bp_form__field--firstname">
                            <label for="firstname" class="bp_form__field__label">이름</label>
                            <input type="text" name="firstname" id="firstname" class="bp_input_text bp_form__field__input" placeholder="예 : Gildong" size="20">
                        </div>
                    </div>
                </div>
                <div class="email bp-email-area ge-eligibility-check">
                   <div data-component="bp/personal-details-form/email" class="bp_form__field bp_form__field--email u-clearfix">
                        <label for="email" class="bp_form__field__label">이메일 주소</label>
                        <input type="text" required="" id="email" class="bp_input_text bp_form__field__input email_change"
                        name="email" size="35" maxlength="60" placeholder="예: Hong@booqueen.com">
                        <div class="bui-text--variant-body_2 bui-text--color-neutral_alt bui-u-padding-top--4">예약 확인서가 전송될 이메일 주소 입력</div>
                    </div>
                </div>
            </div>

           <%--  <div class="room-detail">
                <div class="room-header">
                    <h4>${types}</h4>
                    <div>
					<div class="bui-inline-container__end">
                            <a class="x-button" role="button">
                                <span class="bui-button__icon">
                                    <svg class="bk-icon -streamline-close" height="16" width="16" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false"><path d="M13.31 12l6.89-6.89a.93.93 0 1 0-1.31-1.31L12 10.69 5.11 3.8A.93.93 0 0 0 3.8 5.11L10.69 12 3.8 18.89a.93.93 0 0 0 1.31 1.31L12 13.31l6.89 6.89a.93.93 0 1 0 1.31-1.31z"></path></svg>
                                </span>
                                <span class="choice-cancel">선택 취소</span>
                            </a>
                        </div> 
                    </div>
                </div>
                <div class="room-top">
                    <ul>
                        <li>
                            <span>
                                <svg class="b-icon" fill="#008009" height="16" role="presentation" width="16" viewBox="0 0 24 24" aria-hidden="true" focusable="false"><path d="M3.75 4.5h12a.75.75 0 0 1 .75.75v7.5a6.75 6.75 0 0 1-13.5 0v-7.5a.75.75 0 0 1 .75-.75zm0-1.5A2.25 2.25 0 0 0 1.5 5.25v7.5a8.25 8.25 0 0 0 16.5 0v-7.5A2.25 2.25 0 0 0 15.75 3h-12zm-3 18h22.5a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5zm16.5-15h1.5a3.763 3.763 0 0 1 3.75 3.752 3.762 3.762 0 0 1-3.752 3.748H17.1a.75.75 0 0 0 0 1.5h1.65A5.263 5.263 0 0 0 24 9.752 5.264 5.264 0 0 0 18.752 4.5H17.25a.75.75 0 0 0 0 1.5z"></path></svg>
                            </span>
                            <span>요금에 조식이 포함됨</span>
                        </li>
                    </ul>
                </div>
            </div>--%>

            

            <div class="request-section">
                <h3>별도 요청 사항</h3>
                <div>
                    별도 요청 사항을 보장해드릴 수는 없으나, 숙소 측에서 서비스 제공을 위해 최선의 노력을 다할 것입니다. 아래에 요청 사항을 작성해 주시기 바랍니다. (선택사항)
                </div>
                <div>
                    <div><textarea class="request-textarea" name="request_text"></textarea></div>
                </div>
            </div>

            

            <div class="arrival-section">
                <h3>도착 예정 시간</h3>
                <div class="arrival-top">
                    <ul>
                        <li>
                            <span>
                                <svg class="a-icon" fill="#008009" height="24" width="24" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M56.62 93.54a4 4 0 0 1-2.83-1.18L28.4 67a4 4 0 1 1 5.65-5.65l22.13 22.1 33-44a4 4 0 1 1 6.4 4.8L59.82 91.94a4.06 4.06 0 0 1-2.92 1.59zM128 64c0-35.346-28.654-64-64-64C28.654 0 0 28.654 0 64c0 35.346 28.654 64 64 64 35.33-.039 63.961-28.67 64-64zm-8 0c0 30.928-25.072 56-56 56S8 94.928 8 64 33.072 8 64 8c30.914.033 55.967 25.086 56 56z"></path></svg>
                            </span>
                            <span>${hotelPoclicyVO.check_in_start }:00 - ${hotelPoclicyVO.check_in_end }:00에 객실 체크인이 가능합니다</span>
                        </li>
<!--                    <li> 
                            <span>
                                <svg class="a-icon" fill="#008009" height="24" width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false"><path d="M14.244 14.156a6.75 6.75 0 0 0-6.75-5.906A6.747 6.747 0 0 0 .73 14.397a.75.75 0 0 0 1.494.134 5.25 5.25 0 0 1 5.27-4.781 5.253 5.253 0 0 1 5.262 4.594.75.75 0 1 0 1.488-.188zM10.125 4.125a2.625 2.625 0 1 1-5.25 0V1.5h5.25v2.625zm1.5 0V1.5a1.5 1.5 0 0 0-1.5-1.5h-5.25a1.5 1.5 0 0 0-1.5 1.5v2.625a4.125 4.125 0 0 0 8.25 0zM23.25 22.5H.75l.75.75v-7.5a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v7.5l.75-.75zm0 1.5a.75.75 0 0 0 .75-.75v-7.5a2.25 2.25 0 0 0-2.25-2.25H2.25A2.25 2.25 0 0 0 0 15.75v7.5c0 .414.336.75.75.75h22.5zM4.376 5.017a9.42 9.42 0 0 1 3.12-.517 9.428 9.428 0 0 1 3.133.519.75.75 0 0 0 .49-1.418A10.917 10.917 0 0 0 7.498 3a10.91 10.91 0 0 0-3.611.6.75.75 0 0 0 .49 1.417zM15.75 14.27a3.001 3.001 0 0 1 6 .16.75.75 0 1 0 1.5.04 4.501 4.501 0 1 0-9-.24.75.75 0 1 0 1.5.04zm3.75-3.77V8.25a.75.75 0 0 0-1.5 0v2.25a.75.75 0 0 0 1.5 0zM17.25 9h3a.75.75 0 0 0 0-1.5h-3a.75.75 0 0 0 0 1.5z"></path></svg>
                            </span>
                            <span>24시간 프론트 데스크 - 언제든 도움을 받으실 수 있습니다</span>
                        </li>-->
                    </ul>
                </div>
               <div class="arrival-bottom"> 
                    <div class="bottom-inner">
                        <div class="inner-content">
                            <label>도착 예정 시간</label><span>(선택사항)</span>
                            <div class="bui-input-select">
                                <select name="arrive_time" class="bui-form__control" id="checkin_eta_hour">
                                <option value="" disabled="" selected="">시간을 선택하세요</option>
                                <option value="-1">아직 모름</option>
                                <option value="0">00:00 – 01:00 </option>
                                <option value="1">01:00 – 02:00 </option>
                                <option value="2">02:00 – 03:00 </option>
                                <option value="3">03:00 – 04:00 </option>
                                <option value="4">04:00 – 05:00 </option>
                                <option value="5">05:00 – 06:00 </option>
                                <option value="6">06:00 – 07:00 </option>
                                <option value="7">07:00 – 08:00 </option>
                                <option value="8">08:00 – 09:00 </option>
                                <option value="9">09:00 – 10:00 </option>
                                <option value="10">10:00 – 11:00 </option>
                                <option value="11">11:00 – 12:00 </option>
                                <option value="12">12:00 – 13:00 </option>
                                <option value="13">13:00 – 14:00 </option>
                                <option value="14">14:00 – 15:00 </option>
                                <option value="15">15:00 – 16:00 </option>
                                <option value="16">16:00 – 17:00 </option>
                                <option value="17">17:00 – 18:00 </option>
                                <option value="18">18:00 – 19:00 </option>
                                <option value="19">19:00 – 20:00 </option>
                                <option value="20">20:00 – 21:00 </option>
                                <option value="21">21:00 – 22:00 </option>
                                <option value="22">22:00 – 23:00 </option>
                                <option value="23">23:00 – 00:00 </option>
                                <option value="24">00:00 – 01:00 (다음날)</option>
                                <option value="25">01:00 – 02:00 (다음날)</option>
                                </select>
                                <svg class="bk-icon -iconset-dropdown bui-input-select__icon" height="16" role="presentation" width="16" viewBox="0 0 128 128" aria-hidden="true" focusable="false"><path d="M92 52a4 4 0 0 1-2.8-1.2L64 25.7 38.8 50.8a4 4 0 0 1-5.6-5.6L64 14.3l30.8 30.9A4 4 0 0 1 92 52zm0 24a4 4 0 0 0-2.8 1.2L64 102.3 38.8 77.2a4 4 0 0 0-5.6 5.6L64 113.7l30.8-30.9A4 4 0 0 0 92 76z"></path></svg>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
            <input type="hidden" name="room_id" value="${reservationVO.room_id }">
            <input type="hidden" name="serialnumber" value="${reservationVO.serialnumber }">
            <input type="hidden" name="request_text" value="${reservationVO.request_text }">
            <input type="hidden" name="type" value="${reservationVO.type }">
            <input type="hidden" name="price" value="${reservationVO.price }">
            <input type="hidden" name="count_room" value="${reservationVO.count_room }">
            <input type="hidden" name="start_date" value="${reservationVO.start_date }">
            <input type="hidden" name="start_date_year" value="${reservationVO.start_date_year }">
            <input type="hidden" name="start_date_month" value="${reservationVO.start_date_month }">
            <input type="hidden" name="start_date_day" value="${reservationVO.start_date_day }">
            <input type="hidden" name="end_date" value="${reservationVO.end_date }">
            <input type="hidden" name="end_date_year" value="${reservationVO.end_date_year }">
            <input type="hidden" name="end_date_month" value="${reservationVO.end_date_month }">
            <input type="hidden" name="end_date_day" value="${reservationVO.end_date_day }">
            <input type="hidden" name="diffDays" value="${reservationVO.diffDays }">
            <input type="hidden" name="start_day" value="${reservationVO.start_day }">
            <input type="hidden" name="end_day" value="${reservationVO.end_day }">
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
            <input type="hidden" name="scoreAvg" value="${reviewAvgVO.scoreAvg}">
            <input type="hidden" name="count" value="${reviewAvgVO.count}">

			<input type="hidden" name="total" value="${total }">
            
            
            <div class="button_box">
                <button form="comfirm_reservation" id="last-button" class="next-step-button" type="submit" name="book" data-bui-component="Popover" data-popover-content-id="bp-submit-popover" data-popover-position="top end" aria-describedby="_ydtbmi19e"><span class="bui-button__text js-button__text"> 다음: 최종 단계 </span> <span class="bui-button__icon bui-button__icon--end js-button__icon">
                <svg class="bk-icon -streamline-arrow_nav_right" height="24" role="presentation" width="24" viewBox="0 0 24 24" aria-hidden="true" focusable="false"><path d="M9.45 6c.2 0 .39.078.53.22l5 5c.208.206.323.487.32.78a1.1 1.1 0 0 1-.32.78l-5 5a.75.75 0 0 1-1.06 0 .74.74 0 0 1 0-1.06L13.64 12 8.92 7.28a.74.74 0 0 1 0-1.06.73.73 0 0 1 .53-.22zm4.47 5.72zm0 .57z"></path></svg>
                </span> <span class="bui-button__loader"> <div class="bui-spinner bui-spinner--light "> <div class="bui-spinner__inner"></div> </div> </span> </button>
            </div>
        </div><!-- end main-->
    </div>
</form>

    <div class="footer">
        <div class="footer-inner">
            <div class="inner-box">
                <div class="inner-inner">
                    <ul>
                        <li>
                            <a>Booqueen.com 소개</a>
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

    <script>
        $(document).ready(function(){
            $(".request-textarea").focus(function(){
                $(".request-textarea").css("height","136px");
            });
            $(".request-textarea").focusout(function(){
                $(".request-textarea").css("height","70px");
            });
            $(".choice-cancel").click(function(){
                $(".room-detail").css("display","none");
            })
        });
    </script>

</body>
</html>