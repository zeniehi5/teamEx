<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>        
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/user/css/review.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>review</title>
</head>
<body>

	<jsp:include page="/WEB-INF/user/member/header.jsp"/>

    <div class="top">
        <div class="c-cover " style="background-image: url(${reservationVO.file_url})">
            <div class="c-cover__inner">
                <h2 class="c-cover__title"><strong>${reservationVO.hotelname}</strong> 평가하기</h2> 
                <fmt:parseDate var="start_date" value="${reservationVO.start_date}" pattern="yyyy-MM-dd"/>
				<fmt:parseDate var="end_date" value="${reservationVO.end_date}" pattern="yyyy-MM-dd"/>
                <fmt:parseNumber value="${start_date.time / (1000*60*60*24)}" integerOnly="true" var="start_date_number"></fmt:parseNumber>
                <fmt:parseNumber value="${end_date.time / (1000*60*60*24)}" integerOnly="true" var="end_date_number"></fmt:parseNumber>
                <span class="rf_stay-period">${reservationVO.city}에서 ${end_date_number - start_date_number}박
                    <br>
                        <span aria-label="1월 30일~2월 1일" role="text">
                            <span aria-hidden="true">${reservationVO.start_date}&nbsp;~&nbsp;${reservationVO.end_date}</span>
                        </span>
                    <br>
                </span>
             </div>
        </div>
    </div>

    <div class="c-form-container">
        <form action="${contextPath}/review/insertReview.do" method="post">
        	<input type="hidden" name="reservation_number" value="${reservationVO.reservation_number}">
            <ol class="rf_questions">
                <li class="rf-questions_items">
                    <h2>숙소 평가 : </h2>
                    <fieldset class="rf_score_range_fieldset">
                        <h3 style="margin-bottom:8px">${reservationVO.hotelname}에서의 숙박은 어떠셨나요?</h3>
                        <div data-component="ugcs/score-range" class="c-score-range c-score-range--simple c-score-range--js">
                            <div id="score" data-score="" class="c-score-range__numbers">
                                    <input type="radio" aria-label="형편없음" onchange="this.parentNode.setAttribute('data-score', this.value);" class="c-score-range__inp" name="score" id="hotel_average_score_input_1" value="1" label="1"> <label class="c-score-range__lbl" onclick="document.getElementById(this.getAttribute('for')).focus();" data-a="1,2,3,4,5,6,7,8,9,10," for="hotel_average_score_input_1"> <span class="c-score-range__span" aria-hidden="true">1</span></label>
                                    <input type="radio" aria-label="매우 나쁨" onchange="this.parentNode.setAttribute('data-score', this.value);" class="c-score-range__inp" name="score" id="hotel_average_score_input_2" value="2" label="2"> <label class="c-score-range__lbl" onclick="document.getElementById(this.getAttribute('for')).focus();" data-a="2,3,4,5,6,7,8,9,10," for="hotel_average_score_input_2"> <span class="c-score-range__span" aria-hidden="true">2</span></label>
                                    <input type="radio" aria-label="나쁨" onchange="this.parentNode.setAttribute('data-score', this.value);" class="c-score-range__inp" name="score" id="hotel_average_score_input_3" value="3" label="3"> <label class="c-score-range__lbl" onclick="document.getElementById(this.getAttribute('for')).focus();" data-a="3,4,5,6,7,8,9,10," for="hotel_average_score_input_3"> <span class="c-score-range__span" aria-hidden="true">3</span></label>
                                    <input type="radio" aria-label="실망스러움" onchange="this.parentNode.setAttribute('data-score', this.value);" class="c-score-range__inp" name="score" id="hotel_average_score_input_4" value="4" label="4"> <label class="c-score-range__lbl" onclick="document.getElementById(this.getAttribute('for')).focus();" data-a="4,5,6,7,8,9,10," for="hotel_average_score_input_4"> <span class="c-score-range__span" aria-hidden="true">4</span></label>
                                    <input type="radio" aria-label="그럭저럭" onchange="this.parentNode.setAttribute('data-score', this.value);" class="c-score-range__inp" name="score" id="hotel_average_score_input_5" value="5" label="5"> <label class="c-score-range__lbl" onclick="document.getElementById(this.getAttribute('for')).focus();" data-a="5,6,7,8,9,10," for="hotel_average_score_input_5"> <span class="c-score-range__span" aria-hidden="true">5</span></label>
                                    <input type="radio" aria-label="만족" onchange="this.parentNode.setAttribute('data-score', this.value);" class="c-score-range__inp" name="score" id="hotel_average_score_input_6" value="6" label="6"> <label class="c-score-range__lbl" onclick="document.getElementById(this.getAttribute('for')).focus();" data-a="6,7,8,9,10," for="hotel_average_score_input_6"> <span class="c-score-range__span" aria-hidden="true">6</span></label>
                                    <input type="radio" aria-label="좋음" onchange="this.parentNode.setAttribute('data-score', this.value);" class="c-score-range__inp" name="score" id="hotel_average_score_input_7" value="7" label="7"> <label class="c-score-range__lbl" onclick="document.getElementById(this.getAttribute('for')).focus();" data-a="7,8,9,10," for="hotel_average_score_input_7"> <span class="c-score-range__span" aria-hidden="true">7</span></label>
                                    <input type="radio" aria-label="매우 좋음" onchange="this.parentNode.setAttribute('data-score', this.value);" class="c-score-range__inp" name="score" id="hotel_average_score_input_8" value="8" label="8"> <label class="c-score-range__lbl" onclick="document.getElementById(this.getAttribute('for')).focus();" data-a="8,9,10," for="hotel_average_score_input_8"> <span class="c-score-range__span" aria-hidden="true">8</span></label>
                                    <input type="radio" aria-label="최고" onchange="this.parentNode.setAttribute('data-score', this.value);" class="c-score-range__inp" name="score" id="hotel_average_score_input_9" value="9" label="9"> <label class="c-score-range__lbl" onclick="document.getElementById(this.getAttribute('for')).focus();" data-a="9,10," for="hotel_average_score_input_9"> <span class="c-score-range__span" aria-hidden="true">9</span> </label>
                                    <input type="radio" aria-label="강력 추천" onchange="this.parentNode.setAttribute('data-score', this.value);" class="c-score-range__inp" name="score" id="hotel_average_score_input_10" value="10" label="10"> <label class="c-score-range__lbl c-score-last-label" onclick="document.getElementById(this.getAttribute('for')).focus();" data-a="10," for="hotel_average_score_input_10"> <span class="c-score-range__span" aria-hidden="true">10</span></label>
                            </div>
                            <div aria-hidden="true" class="c-score-range__track"></div>
                            <div aria-hidden="true" class="c-score-range__legend clearfix">
                                <span>형편없음</span> <span>강력 추천</span>
                            </div>
                        </div>
                    </fieldset>

                    <div class="review-form-range-sperator"></div>
                    
                    <fieldset class="rf_score_range_fieldset">
                        <div class="rf-score-component-wrapper ">
                            <div data-component="review/score-tags">
                                <div class="rf-score-component affects_score rf-score-component--answered" data-component="review/score-component" data-name="hotel_staff">
                                    <div class="c-rating " data-component="ugcs/rating"> <p class="c-rating__label" id="crl-hotel_staff"> 직원 </p>
                                        <div class="c-rating__group" role="radiogroup" aria-labelledby="crl-hotel_staff" id="staff" data-staff=""> 
                                            <label class="c-rating__item" data-value="1" aria-label="기대 이하" ><svg class="bk-icon -iconset-review_poor" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 30.2a4 4 0 1 1-5.6 5.6c-10.5-10.4-24-10.4-34.4 0a4 4 0 0 1-5.6-5.6c13.6-13.7 32-13.7 45.6 0z"></path></svg><input class="c-rating__input" type="radio" name="staff" value="1" onchange="this.parentNode.parentNode.setAttribute('data-staff', this.value);"></label> 
                                            <label class="c-rating__item" data-value="2" aria-label="보통"> <svg class="bk-icon -iconset-review_average" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4 28a4 4 0 0 1-4 4H44a4 4 0 0 1 0-8h40a4 4 0 0 1 4 4z"></path></svg> <input class="c-rating__input" type="radio" name="staff" value="2" onchange="this.parentNode.parentNode.setAttribute('data-staff', this.value);"> </label> 
                                            <label class="c-rating__item" data-value="3" aria-label="기대 이상"> <svg class="bk-icon -iconset-review_good" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 21.2a4 4 0 0 1 0 5.6A32 32 0 0 1 64 93.1c-8 0-16-3.4-22.8-10.3a4 4 0 0 1 5.6-5.6c10.5 10.4 24 10.4 34.4 0a4 4 0 0 1 5.6 0z"></path></svg> <input class="c-rating__input" type="radio" name="staff" value="3" onchange="this.parentNode.parentNode.setAttribute('data-staff', this.value);"> </label> 
                                            <label class="c-rating__item" ata-value="4" aria-label="매우 만족"> <svg class="bk-icon -iconset-review_great" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4.8 21.6a4 4 0 0 1 .6 3.6A24.3 24.3 0 0 1 64 97c-9.7 0-15.7-4.2-19-7.8a22.7 22.7 0 0 1-4.8-8A4 4 0 0 1 44 76h40a4 4 0 0 1 3.2 1.6z"></path></svg> <input class="c-rating__input" type="radio" name="staff" value="4" onchange="this.parentNode.parentNode.setAttribute('data-staff', this.value);"> </label>
                                        </div>
                                    </div>  
                                </div>
                            </div>
                            <div data-component="review/score-tags">
                                <div class="rf-score-component affects_score" data-component="review/score-component" data-name="hotel_services">
                                    <div class="c-rating " data-component="ugcs/rating"> <p class="c-rating__label" id="crl-hotel_services"> 서비스 </p> <div class="c-rating__group" role="radiogroup" aria-labelledby="crl-hotel_services" id="service" data-service=""> 
                                        <label class="c-rating__item" data-value="1" aria-label="기대 이하"> <svg class="bk-icon -iconset-review_poor" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 30.2a4 4 0 1 1-5.6 5.6c-10.5-10.4-24-10.4-34.4 0a4 4 0 0 1-5.6-5.6c13.6-13.7 32-13.7 45.6 0z"></path></svg> <input class="c-rating__input" type="radio" name="service" value="1" onchange="this.parentNode.parentNode.setAttribute('data-serivce', this.value);"> </label> 
                                        <label class="c-rating__item" data-value="2" aria-label="보통"> <svg class="bk-icon -iconset-review_average" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4 28a4 4 0 0 1-4 4H44a4 4 0 0 1 0-8h40a4 4 0 0 1 4 4z"></path></svg> <input class="c-rating__input" type="radio" name="service" value="2" onchange="this.parentNode.parentNode.setAttribute('data-serivce', this.value);"> </label> 
                                        <label class="c-rating__item" data-value="3" aria-label="기대 이상"> <svg class="bk-icon -iconset-review_good" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 21.2a4 4 0 0 1 0 5.6A32 32 0 0 1 64 93.1c-8 0-16-3.4-22.8-10.3a4 4 0 0 1 5.6-5.6c10.5 10.4 24 10.4 34.4 0a4 4 0 0 1 5.6 0z"></path></svg> <input class="c-rating__input" type="radio" name="service" value="3" onchange="this.parentNode.parentNode.setAttribute('data-serivce', this.value);"> </label> 
                                        <label class="c-rating__item" data-value="4" aria-label="매우 만족"> <svg class="bk-icon -iconset-review_great" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4.8 21.6a4 4 0 0 1 .6 3.6A24.3 24.3 0 0 1 64 97c-9.7 0-15.7-4.2-19-7.8a22.7 22.7 0 0 1-4.8-8A4 4 0 0 1 44 76h40a4 4 0 0 1 3.2 1.6z"></path></svg> <input class="c-rating__input" type="radio" name="service" value="4" onchange="this.parentNode.parentNode.setAttribute('data-serivce', this.value);"> </label> </div>
                                    </div>  
                                </div>
                            </div>
                            <div data-component="review/score-tags">
                            <div class="rf-score-component affects_score" data-component="review/score-component" data-name="hotel_clean">
                                <div class="c-rating " data-component="ugcs/rating"> <p class="c-rating__label" id="crl-hotel_clean"> 청결도 </p> <div class="c-rating__group" role="radiogroup" aria-labelledby="crl-hotel_clean" id="cleanness" data-cleanness=""> 
                            <label class="c-rating__item" data-value="1" aria-label="기대 이하"> <svg class="bk-icon -iconset-review_poor" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 30.2a4 4 0 1 1-5.6 5.6c-10.5-10.4-24-10.4-34.4 0a4 4 0 0 1-5.6-5.6c13.6-13.7 32-13.7 45.6 0z"></path></svg> <input class="c-rating__input" type="radio" name="cleanness" value="1" onchange="this.parentNode.parentNode.setAttribute('data-cleanness', this.value);"> </label> 
                            <label class="c-rating__item" data-value="2" aria-label="보통"> <svg class="bk-icon -iconset-review_average" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4 28a4 4 0 0 1-4 4H44a4 4 0 0 1 0-8h40a4 4 0 0 1 4 4z"></path></svg> <input class="c-rating__input" type="radio" name="cleanness" value="2" onchange="this.parentNode.parentNode.setAttribute('data-cleanness', this.value);"> </label> 
                            <label class="c-rating__item" data-value="3" aria-label="기대 이상"> <svg class="bk-icon -iconset-review_good" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 21.2a4 4 0 0 1 0 5.6A32 32 0 0 1 64 93.1c-8 0-16-3.4-22.8-10.3a4 4 0 0 1 5.6-5.6c10.5 10.4 24 10.4 34.4 0a4 4 0 0 1 5.6 0z"></path></svg> <input class="c-rating__input" type="radio" name="cleanness" value="3" onchange="this.parentNode.parentNode.setAttribute('data-cleanness', this.value);"> </label> 
                            <label class="c-rating__item" data-value="4" aria-label="매우 만족"> <svg class="bk-icon -iconset-review_great" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4.8 21.6a4 4 0 0 1 .6 3.6A24.3 24.3 0 0 1 64 97c-9.7 0-15.7-4.2-19-7.8a22.7 22.7 0 0 1-4.8-8A4 4 0 0 1 44 76h40a4 4 0 0 1 3.2 1.6z"></path></svg> <input class="c-rating__input" type="radio" name="cleanness" value="4" onchange="this.parentNode.parentNode.setAttribute('data-cleanness', this.value);"> </label> </div> </div>  
                            </div>
                            </div>
                            <div data-component="review/score-tags">
                            <div class="rf-score-component affects_score" data-component="review/score-component" data-name="hotel_comfort">
                                <div class="c-rating " data-component="ugcs/rating"> <p class="c-rating__label" id="crl-hotel_comfort"> 편안함 </p> <div class="c-rating__group" role="radiogroup" aria-labelledby="crl-hotel_comfort" id="comfort" data-comfort=""> 
                            <label class="c-rating__item" data-value="1" aria-label="기대 이하"> <svg class="bk-icon -iconset-review_poor" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 30.2a4 4 0 1 1-5.6 5.6c-10.5-10.4-24-10.4-34.4 0a4 4 0 0 1-5.6-5.6c13.6-13.7 32-13.7 45.6 0z"></path></svg> <input class="c-rating__input" type="radio" name="comfort" value="1" onchange="this.parentNode.parentNode.setAttribute('data-comfort', this.value);"> </label> 
                            <label class="c-rating__item" data-value="2" aria-label="보통"> <svg class="bk-icon -iconset-review_average" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4 28a4 4 0 0 1-4 4H44a4 4 0 0 1 0-8h40a4 4 0 0 1 4 4z"></path></svg> <input class="c-rating__input" type="radio" name="comfort" value="2" onchange="this.parentNode.parentNode.setAttribute('data-comfort', this.value);"> </label> 
                            <label class="c-rating__item" data-value="3" aria-label="기대 이상"> <svg class="bk-icon -iconset-review_good" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 21.2a4 4 0 0 1 0 5.6A32 32 0 0 1 64 93.1c-8 0-16-3.4-22.8-10.3a4 4 0 0 1 5.6-5.6c10.5 10.4 24 10.4 34.4 0a4 4 0 0 1 5.6 0z"></path></svg> <input class="c-rating__input" type="radio" name="comfort" value="3" onchange="this.parentNode.parentNode.setAttribute('data-comfort', this.value);"> </label> 
                            <label class="c-rating__item" data-value="4" aria-label="매우 만족"> <svg class="bk-icon -iconset-review_great" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4.8 21.6a4 4 0 0 1 .6 3.6A24.3 24.3 0 0 1 64 97c-9.7 0-15.7-4.2-19-7.8a22.7 22.7 0 0 1-4.8-8A4 4 0 0 1 44 76h40a4 4 0 0 1 3.2 1.6z"></path></svg> <input class="c-rating__input" type="radio" name="comfort" value="4" onchange="this.parentNode.parentNode.setAttribute('data-comfort', this.value);"> </label> </div> </div>  
                            </div>
                            </div>
                            <div data-component="review/score-tags">
                            <div class="rf-score-component affects_score" data-component="review/score-component" data-name="hotel_value">
                                <div class="c-rating " data-component="ugcs/rating"> <p class="c-rating__label" id="crl-hotel_value"> 가성비 </p> <div class="c-rating__group" role="radiogroup" aria-labelledby="crl-hotel_value" id="effectiveness" data-effectiveness=""> 
                            <label class="c-rating__item" data-value="1" aria-label="기대 이하"> <svg class="bk-icon -iconset-review_poor" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 30.2a4 4 0 1 1-5.6 5.6c-10.5-10.4-24-10.4-34.4 0a4 4 0 0 1-5.6-5.6c13.6-13.7 32-13.7 45.6 0z"></path></svg> <input class="c-rating__input" type="radio" name="effectiveness" value="1" onchange="this.parentNode.parentNode.setAttribute('data-effectiveness', this.value);"> </label> 
                            <label class="c-rating__item" data-value="2" aria-label="보통"> <svg class="bk-icon -iconset-review_average" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4 28a4 4 0 0 1-4 4H44a4 4 0 0 1 0-8h40a4 4 0 0 1 4 4z"></path></svg> <input class="c-rating__input" type="radio" name="effectiveness" value="2" onchange="this.parentNode.parentNode.setAttribute('data-effectiveness', this.value);"> </label> 
                            <label class="c-rating__item" data-value="3" aria-label="기대 이상"> <svg class="bk-icon -iconset-review_good" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 21.2a4 4 0 0 1 0 5.6A32 32 0 0 1 64 93.1c-8 0-16-3.4-22.8-10.3a4 4 0 0 1 5.6-5.6c10.5 10.4 24 10.4 34.4 0a4 4 0 0 1 5.6 0z"></path></svg> <input class="c-rating__input" type="radio" name="effectiveness" value="3" onchange="this.parentNode.parentNode.setAttribute('data-effectiveness', this.value);"> </label> 
                            <label class="c-rating__item" data-value="4" aria-label="매우 만족"> <svg class="bk-icon -iconset-review_great" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4.8 21.6a4 4 0 0 1 .6 3.6A24.3 24.3 0 0 1 64 97c-9.7 0-15.7-4.2-19-7.8a22.7 22.7 0 0 1-4.8-8A4 4 0 0 1 44 76h40a4 4 0 0 1 3.2 1.6z"></path></svg> <input class="c-rating__input" type="radio" name="effectiveness" value="4" onchange="this.parentNode.parentNode.setAttribute('data-effectiveness', this.value);"> </label> </div> </div>  
                            </div>
                            </div>
                            <div data-component="review/score-tags">
                            <div class="rf-score-component affects_score" data-component="review/score-component" data-name="hotel_location">
                                <div class="c-rating " data-component="ugcs/rating"> <p class="c-rating__label" id="crl-hotel_location"> 위치 </p> <div class="c-rating__group" role="radiogroup" aria-labelledby="crl-hotel_location" id="place" data-place=""> 
                            <label class="c-rating__item" data-value="1" aria-label="기대 이하"> <svg class="bk-icon -iconset-review_poor" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 30.2a4 4 0 1 1-5.6 5.6c-10.5-10.4-24-10.4-34.4 0a4 4 0 0 1-5.6-5.6c13.6-13.7 32-13.7 45.6 0z"></path></svg> <input class="c-rating__input" type="radio" name="place" value="1" onchange="this.parentNode.parentNode.setAttribute('data-place', this.value);"> </label> 
                            <label class="c-rating__item" data-value="2" aria-label="보통"> <svg class="bk-icon -iconset-review_average" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4 28a4 4 0 0 1-4 4H44a4 4 0 0 1 0-8h40a4 4 0 0 1 4 4z"></path></svg> <input class="c-rating__input" type="radio" name="place" value="2" onchange="this.parentNode.parentNode.setAttribute('data-place', this.value);"> </label> 
                            <label class="c-rating__item" data-value="3" aria-label="기대 이상"> <svg class="bk-icon -iconset-review_good" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 21.2a4 4 0 0 1 0 5.6A32 32 0 0 1 64 93.1c-8 0-16-3.4-22.8-10.3a4 4 0 0 1 5.6-5.6c10.5 10.4 24 10.4 34.4 0a4 4 0 0 1 5.6 0z"></path></svg> <input class="c-rating__input" type="radio" name="place" value="3" onchange="this.parentNode.parentNode.setAttribute('data-place', this.value);"> </label> 
                            <label class="c-rating__item" data-value="4" aria-label="매우 만족"> <svg class="bk-icon -iconset-review_great" fill="#6B6B6B" height="32" width="32" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4.8 21.6a4 4 0 0 1 .6 3.6A24.3 24.3 0 0 1 64 97c-9.7 0-15.7-4.2-19-7.8a22.7 22.7 0 0 1-4.8-8A4 4 0 0 1 44 76h40a4 4 0 0 1 3.2 1.6z"></path></svg> <input class="c-rating__input" type="radio" name="place" value="4" onchange="this.parentNode.parentNode.setAttribute('data-place', this.value);"> </label> </div> </div>  
                            </div>
                            </div>
                            </div>
                    </fieldset>

                    <div class="review-form-range-sperator"></div>

                    <div class="container-inner-div">
                        <h2>이용 후기를 알려주세요</h2>
                    </div>
                    <fieldset class="rf_fieldset rf_review_content_fieldset" data-et-view="ZOBMJbYASIcMeTDFVUQTdPPKFLFLNKe:1">
                        <label class="review_content_positive">
                        <span class="rf-icon" aria-hidden="true"><svg class="-iconset-review_great" height="26" width="26" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-4.8 21.6a4 4 0 0 1 .6 3.6A24.3 24.3 0 0 1 64 97c-9.7 0-15.7-4.2-19-7.8a22.7 22.7 0 0 1-4.8-8A4 4 0 0 1 44 76h40a4 4 0 0 1 3.2 1.6z"></path></svg></span><span class="rf-label">좋았던 점</span>
                        <textarea id="strength" class="rv-textarea" name="strength" maxlength="2000" aria-multiline="true" placeholder="아침식사는 맛있게 하셨나요? 위치는 어떠셨어요?" data-component="review/autosize" style="overflow: hidden; overflow-wrap: break-word; height: 112px;"></textarea>  
                        </label>
                        <label class="review_content_negative">
                        <span class="rf-icon" aria-hidden="true"><svg class="-iconset-review_poor" height="26" width="26" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 104a48 48 0 1 1 48-48 48 48 0 0 1-48 48zM44 64a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm48-8a8 8 0 1 1-8-8 8 8 0 0 1 8 8zm-5.2 30.2a4 4 0 1 1-5.6 5.6c-10.5-10.4-24-10.4-34.4 0a4 4 0 0 1-5.6-5.6c13.6-13.7 32-13.7 45.6 0z"></path></svg></span><span class="rf-label">아쉬웠던 점</span>
                        <textarea id="weakness" class="rv-textarea" name="weakness" maxlength="2000" aria-multiline="true" placeholder="고객님의 경험을 얘기해주세요." data-component="review/autosize" style="overflow: hidden; overflow-wrap: break-word; height: 112px;"></textarea>
                        </label>
                        <div class="negative_div">
                            <label class="review_content_title">후기 제목</label>
                            <input class="bui-form__control" type="text" name="title" value="" id="title">
                        </div>
                    </fieldset>
                </li>
            </ol>
            <button data-component="review/submit-validation" data-submit="false" class="rf_submit_button" id="submit" >
                <span class="bui-button__loader">
                <div class="bui-spinner bui-spinner--light bui-spinner--size-small">
                    <div class="bui-spinner__inner"></div>
                </div>
                </span>
                <span class="bui-button__text">완료</span>
            </button>
        </form>
    </div>

    <jsp:include page="/WEB-INF/user/member/footer.jsp"/>

    <script>/*
    function ajax_someday(){

        const score = document.getElementById("score").getAttribute("data-score");
        const staff = document.getElementById("staff").getAttribute("data-staff");
        const service = document.getElementById("service").getAttribute("data-service");
        const cleanness = document.getElementById("cleanness").getAttribute("data-cleanness");
        const comfort = document.getElementById("comfort").getAttribute("data-comfort");
        const effectiveness = document.getElementById("effectiveness").getAttribute("data-effectiveness");
        const place = document.getElementById("place").getAttribute("data-place");

        var strength = $("#strength").val();
        var weakness = $("#weakness").val();
        var title = $("#title").val();

        alert(score, staff, serivce, cleanness, comfort, effectiveness, place, strength, weakness, title);
        
        var form = {
                name: "jamong",
                age: 23
        }
        $.ajax({
            url: "requestObject",
            type: "POST",
            data: form,
            success: function(data){
                $('#result').text(data);
            },
            error: function(){
                alert("simpleWithObject err");
            }
        });
       
    } */
    </script>

	 <script>
        $(document).ready(function(){
            $(".c-rating__input").click(function(){
                if($(this.parentNode.parentNode).children().hasClass("c-rating__item--selected")){
                    $(this.parentNode.parentNode).children(".c-rating__item").children().removeClass("bk-icon-selected");
                    $(this.parentNode.parentNode).children(".c-rating__item").removeClass("c-rating__item--selected");
                    $(this.parentNode).toggleClass("c-rating__item--selected");
                    $(this).siblings().toggleClass("bk-icon-selected");
                } else {
                    $(this.parentNode).toggleClass("c-rating__item--selected");
                    $(this).siblings().toggleClass("bk-icon-selected");
                }
            });
            $(".c-score-range__lbl").click(function(){
                if($(".c-score-range__numbers").children().hasClass("c-score-range__lbl--selected")){
                    $(".c-score-range__lbl").removeClass("c-score-range__lbl--selected");
                    $(".c-score-range__span").removeClass("c-score-span");
                    $(this).toggleClass("c-score-range__lbl--selected");
                    $(this).children().toggleClass("c-score-span");
                } else {
                    $(this).toggleClass("c-score-range__lbl--selected");
                    $(this).children().toggleClass("c-score-span");
                }
            });
        });
    </script>

</body>
</html>