<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/d2826a4f92.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${contextPath}/resources/user/css/finalization.css">

    <!-- datepicker -->
    <link rel="stylesheet" href="css/datepicker.css" />
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="js/daterangepicker.js"></script>
    <title>finalization</title>
</head>
<body>
    <jsp:include page="/WEB-INF/user/member/header.jsp"/>
    
    <div class="content-top">
        <span class="_501928098">확정된 예약입니다: <span class="_e4a8213f6"><a href="https://www.booking.com/hotel/kr/best-western-gunsan.ko.html?label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQPoAQGIAgGoAgS4ArPlrpAGwAIB0gIkZWEyYjg5YzYtODhhMi00NThlLWJmNWQtMDk5NWNiNDMzNjdj2AIE4AIB&amp;sid=bac1796509bc54b36dbc023726e3547c&amp;aid=304142" data-testid="name-archor" class="_8ce7bbbcf">베스트웨스턴 군산호텔</a><span class="_a11e76d75 _192b3a196"></span></span></span>
        <div role="img" class="_bebcf8d60 b3a3ada19a"><span aria-hidden="true" class="_617879812"><svg viewBox="0 0 24 24"><path d="M23.555 8.729a1.505 1.505 0 0 0-1.406-.98h-6.087a.5.5 0 0 1-.472-.334l-2.185-6.193a1.5 1.5 0 0 0-2.81 0l-.005.016-2.18 6.177a.5.5 0 0 1-.471.334H1.85A1.5 1.5 0 0 0 .887 10.4l5.184 4.3a.5.5 0 0 1 .155.543l-2.178 6.531a1.5 1.5 0 0 0 2.31 1.684l5.346-3.92a.5.5 0 0 1 .591 0l5.344 3.919a1.5 1.5 0 0 0 2.312-1.683l-2.178-6.535a.5.5 0 0 1 .155-.543l5.194-4.306a1.5 1.5 0 0 0 .433-1.661z"></path></svg></span><span aria-hidden="true" class="_617879812"><svg viewBox="0 0 24 24"><path d="M23.555 8.729a1.505 1.505 0 0 0-1.406-.98h-6.087a.5.5 0 0 1-.472-.334l-2.185-6.193a1.5 1.5 0 0 0-2.81 0l-.005.016-2.18 6.177a.5.5 0 0 1-.471.334H1.85A1.5 1.5 0 0 0 .887 10.4l5.184 4.3a.5.5 0 0 1 .155.543l-2.178 6.531a1.5 1.5 0 0 0 2.31 1.684l5.346-3.92a.5.5 0 0 1 .591 0l5.344 3.919a1.5 1.5 0 0 0 2.312-1.683l-2.178-6.535a.5.5 0 0 1 .155-.543l5.194-4.306a1.5 1.5 0 0 0 .433-1.661z"></path></svg></span><span aria-hidden="true" class="_617879812"><svg viewBox="0 0 24 24"><path d="M23.555 8.729a1.505 1.505 0 0 0-1.406-.98h-6.087a.5.5 0 0 1-.472-.334l-2.185-6.193a1.5 1.5 0 0 0-2.81 0l-.005.016-2.18 6.177a.5.5 0 0 1-.471.334H1.85A1.5 1.5 0 0 0 .887 10.4l5.184 4.3a.5.5 0 0 1 .155.543l-2.178 6.531a1.5 1.5 0 0 0 2.31 1.684l5.346-3.92a.5.5 0 0 1 .591 0l5.344 3.919a1.5 1.5 0 0 0 2.312-1.683l-2.178-6.535a.5.5 0 0 1 .155-.543l5.194-4.306a1.5 1.5 0 0 0 .433-1.661z"></path></svg></span><span aria-hidden="true" class="_617879812"><svg viewBox="0 0 24 24"><path d="M23.555 8.729a1.505 1.505 0 0 0-1.406-.98h-6.087a.5.5 0 0 1-.472-.334l-2.185-6.193a1.5 1.5 0 0 0-2.81 0l-.005.016-2.18 6.177a.5.5 0 0 1-.471.334H1.85A1.5 1.5 0 0 0 .887 10.4l5.184 4.3a.5.5 0 0 1 .155.543l-2.178 6.531a1.5 1.5 0 0 0 2.31 1.684l5.346-3.92a.5.5 0 0 1 .591 0l5.344 3.919a1.5 1.5 0 0 0 2.312-1.683l-2.178-6.535a.5.5 0 0 1 .155-.543l5.194-4.306a1.5 1.5 0 0 0 .433-1.661z"></path></svg></span></div>
    </div>

    <div class="bui-alert" role="status">
        <span class="icon--hint" role="presentation">
            <svg class="-iconset-info_sign" height="24" role="presentation" width="24" viewBox="0 0 128 128" aria-hidden="true" focusable="false"><path d="M49.4 85l4.2-17.2c.7-2.7.8-3.8 0-3.8a29 29 0 0 0-8.8 3.8l-1.8-3A48 48 0 0 1 66.7 53c3.7 0 4.3 4.3 2.5 11l-5 18c-.7 3.3-.3 4.3.5 4.3a19 19 0 0 0 8.2-4L75 85c-8.6 8.7-18.2 12-21.8 12s-6.4-2.3-3.8-12zM75 36a9.2 9.2 0 0 1-9.2 9c-4.4 0-7-2.7-6.8-7a9 9 0 0 1 9.1-9c4.6 0 6.9 3.2 6.9 7z"></path><path d="M62 16a48 48 0 1 1-48 48 48 48 0 0 1 48-48m0-8a56 56 0 1 0 56 56A56 56 0 0 0 62 8z"></path></svg>
        </span>
        <div class="bui-alert__description">
            <span class="bui-alert__title">코로나19(COVID-19) 관련 안내</span>
            <p class="bui-alert__text">곧 다가올 여행과 관련하여 여러모로 우려가 많으실 것이라 생각됩니다. 예약을 변경하려면 셀프 서비스 옵션을 이용하거나 숙소에 문의하시기 바랍니다.</p>
            <div class="bui-group--inline">
                <div class="bui-group__item"><a type="button" class="assistant-entry-point"><span class="assistant-entry-point__text">숙소로 연락하기</span></a></div>
            </div>
        </div>
    </div>

    <div class="content-table">
        <div class="masthead">
            <div class="masthead-inner-container">
                <div class="mb-card__col mhead--property">
                    <a href="#" aria-label="이 숙소의 사진 23개 보기" class="_03902938402">
                        <div id="mb-hotel-cover" class="mb-masthead__hotel-photo mb-hotel-photo js_pb_mb_hotel_gallery" style="background-image: url(${reservationVO.file_url});"></div>
                    </a>
                    <div class="mb-info__reversed">
                        <div class="bui-inline-container mb-info">
                            <div class="bui-inline-container__main">
                                <div class="bui-spacer--medium">
                                    <span class="bui-f-font-strong">문의사항이 있으신가요?</span>
                                </div>
                                <div class="bui-spacer--medium">질문이나 별도 요청이 있는 경우 숙소로 직접 문의해주세요.</div>
                                <div class="bui-spacer--medium"></div>
                                <div role="group" class="bui-group bui-group--vertical-align-middle">
                                    <div class="bui-group__item">
                                        <a type="button" class="assistant-entry-point bui-button bui-button--primary bui-u-inline mybooking-block__assistant-cta-btn">
                                            <span class="assistant-entry-point__text">숙소에 메시지 보내기</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bui-inline-container mb-info">
                        <div class="bui-inline-container__start">
                            <span class="bui-icon bui-icon--large" role="presentation">
                                <svg class="bk-icon -streamline-question_mark_circle" height="24"
                                    width="24" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
                                    <path d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"></path>
                                </svg>
                            </span>
                        </div>
                        <div class="bui-inline-container__main">
                            <div class="bui-spacer--medium" data-et-view="AdREFdJEeRKTMObIUONSQecLUTBYKe:1">
                                <span class="bui-f-font-strong">도움이 필요하세요?</span>
                            </div>
                            <div class="bui-spacer--medium">
                                <a class="bui-link bui-link--primary" href="https://secure.booking.com/help.ko.html?aid=304142;label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQPoAQGIAgGoAgS4ArPlrpAGwAIB0gIkZWEyYjg5YzYtODhhMi00NThlLWJmNWQtMDk5NWNiNDMzNjdj2AIE4AIB;sid=bac1796509bc54b36dbc023726e3547c;label=from_conf_1#/reservation?source=mb_contact_block&amp;reservation_id=2811192897&amp;res_auth_key=gq6e9NxzOfdrsvVA">고객 서비스팀에 문의</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mb-card__col mhead--res">
                    <div data-component="capla-pb-mb-reservation-summary">
                        <div
                            data-capla-component="b-post-booking-web-mfe/ReservationSummary"
                            data-capla-namespace="b-post-booking-web-mfeEQFGSCHP">
                            <div>
                                <div class="_4eb31e16e">
                                    <div class="bfd86f8f11">
                                        <p>예약 번호:<strong>
                                                ${reservationVO.reservation_number }</strong>
                                        </p>
                                        <p>PIN 코드:<strong>
                                                ${reservationVO.pincode }</strong>
                                        </p>
                                    </div>
                                    <div data-testid="PostBookingCheckinCheckout" class="_1e97201db">
                                        <div>체크인</div>
                                        <time class="_ab5ecce54 a7c1636554">
                                        <fmt:parseDate value="${reservationVO.start_date}" var="start_date" pattern="yyyy-MM-dd"/>
                                            <div class="ac6bdec376"><fmt:formatDate value="${start_date}" pattern="yyyy년 MM월 dd일"/></div>
                                            <div class="_dc55ee131 _1e6021d2f">${reservationVO.check_in_start}:00 - ${reservationVO.check_in_end}:00 </div>
                                        </time>
                                        <div class="_f807b8e8c">체크아웃</div>
                                        <time class="_ab5ecce54 a7c1636554">
                                        <fmt:parseDate var="end_date" value="${reservationVO.end_date}" pattern="yyyy-MM-dd" />
                                            <div class="ac6bdec376"><fmt:formatDate value="${end_date}" pattern="yyyy년 MM월 dd일"/></div>
                                            <div class="_dc55ee131 _1e6021d2f">${reservationVO.check_out_start}:00 - ${reservationVO.check_out_end}:00</div>
                                        </time>
                                    </div>
                                </div>
                            </div>
                        </div>                    
                    </div>
                    <div class="mb-info mb-info__full_width">
                        <div class="mb-info--content">
                            <ul class="mh-check mh-check__with-price mh-check--m-0">
                                <li class="mb-check--key">
                                    요금
                                </li>
                                <li class="mb-check--value">
                                    ${reservationVO.diffDays}박, 객실 ${reservationVO.count_room}개
                                </li>
                                <li class="mb-check--price bui_font_larger">
                                    <div class="mb-price mb-price--has-price-details">
                                        <span class="mb-price__unit mb-price__unit--primary marginBottom_3">
                                            <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${reservationVO.count_room*reservationVO.price}" />
                                        </span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <p class="bui_font_smaller _39823795">
                            <a
                                class="mb-link--basic custom_track hasSlideBox"
                                data-slidebox-additional-class="pb-price-breakdown-lightbox"
                                data-slidebox-title="요금 포함 사항"
                                data-slidebox-target="#slidebox-price-details"
                                data-slidebox-preopen-callback="showPriceDetailsCallback"
                                data-slidebox-load="mybooking.ko.html?aid=304142;label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQPoAQGIAgGoAgS4ArPlrpAGwAIB0gIkZWEyYjg5YzYtODhhMi00NThlLWJmNWQtMDk5NWNiNDMzNjdj2AIE4AIB;sid=bac1796509bc54b36dbc023726e3547c;auth_key=gq6e9NxzOfdrsvVA;do=show_price_details"
                                data-trackname="price-details"
                                href="#">
                                요금 포함 사항
                            </a>
                        </p>
                    </div>
                </div>
                <div class="mb-card__col mhead--actions">
                  <div 	
                        data-capla-component="b-post-booking-web-mfe/HeadAction"
                        data-capla-namespace="b-post-booking-web-mfeEQFGSCHP">
                        <div>
                            <div class="_66d2783ed">
                                <div class="_475f10c6a">
                                    <a href="#" class="_4310f7077 _45807dae0 _f7538b398" onclick="on()">
                                        <span>예약 날짜 변경</span>
                                    </a>
                                </div>
                                <div class="_475f10c6a ed7d481e46">
                                    <a href="#" class="_4310f7077 _45807dae0 _f7538b398">
                                        <span>호텔 정책 확인</span>
                                    </a>
                                </div>
                                <div class="_475f10c6a">
                                    <a href="#" class="_4310f7077 _45807dae0 _f7538b398">
                                        <span>예약 확인서 보기</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mb-info mb-info__full_width mb-info__actions mb-info__with-separator bui_font_small">
                        <div class="mb-info--content">
                            <ul class="mh-links">
                                <li class="mb-conf-print" data-component="dropdown">
                                    <a class="mb-conf-print__link custom_track pb_conf_print_page js-custom-goal--print-conf  mb-btn" href="#" data-trackname="Print confirmation redesign" data-component="myreservations-print prevent-default-helper" data-print-url="/confirmation.ko.html?aid=304142;label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQPoAQGIAgGoAgS4ArPlrpAGwAIB0gIkZWEyYjg5YzYtODhhMi00NThlLWJmNWQtMDk5NWNiNDMzNjdj2AIE4AIB;sid=bac1796509bc54b36dbc023726e3547c;auth_key=gq6e9NxzOfdrsvVA&amp;">
                                        예약 확인서 출력
                                    </a>
                                </li>
                                <li class="mb-conf-print" data-component="dropdown">
                                    <a class="js-print-receipt" href="#" data-et-click="customGoal:GCLaYCKdFYFcCbNBOPVKFESTEYT:1" data-component="myreservations-print prevent-default-helper" data-print-url="/payment_receipt.ko.html?aid=304142;label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQPoAQGIAgGoAgS4ArPlrpAGwAIB0gIkZWEyYjg5YzYtODhhMi00NThlLWJmNWQtMDk5NWNiNDMzNjdj2AIE4AIB;sid=bac1796509bc54b36dbc023726e3547c;auth_key=gq6e9NxzOfdrsvVA;refermyreservations=1;source=myreservations&amp;">영수증 출력</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="mb-info mb-info__full_width mb-info__actions bui_font_small">
                        <div class="mb-info--content">
                            <div class="mh-links">
                                <a class="mb-btn mb-cancel custom_track hasSlideBox js-cancel-request-btn" data-slidebox-preopen-callback="cancelOpenCallback" data-slidebox-load="mybooking_cancelsummary.ko.html?aid=304142;label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQPoAQGIAgGoAgS4ArPlrpAGwAIB0gIkZWEyYjg5YzYtODhhMi00NThlLWJmNWQtMDk5NWNiNDMzNjdj2AIE4AIB;sid=bac1796509bc54b36dbc023726e3547c;auth_key=gq6e9NxzOfdrsvVA;do=cancel" data-slidebox-submit-callback="cancelButtonSubmitCallback" data-slidebox-target="#slidebox-cancel-booking" data-slidebox-ajax-failure-feedback="true" href="${contextPath}/cancelPage.do?reservation_number=${reservationVO.reservation_number}" role="button" data-slidebox-reload-on-close-after-action="true" data-slidebox-close-callback="CancelClose_cxp_abu_trips_cancel_flow_free_cancel" data-trackname="Cancel booking, ">예약 취소</a> 
                            </div>
                        </div>
                    </div>
                </div>     
            </div>
        </div>
    </div>
   
   <div class="mb_cancellation_timeline">
    <div class="room room--next">
        <a href="${reservationVO.file_url } class="preview" title="스탠다드 더블룸">
            <img
                src="${reservationVO.file_url }"
                class="smll_roomphoto jqrt jq_tooltippex jq_tooltip round6"
                width="90"
                height="90"
                alt="스탠다드 더블룸"
                id="b_tt_holder_1"
                data-title="<img src='https://cf.bstatic.com/xdata/images/hotel/max300/47101212.webp?k=ac645580f8f772431e587e71a66f38e27c06b0593807ee55b96fe5db47343245&amp;o=' /><br /><strong>스탠다드 더블룸</strong>"
                aria-describedby="materialized_tooltip_hj8fj">
        </a>    
        <h3>스탠다드 더블룸</h3>
        <p class="pb_conf_room_descr">이 더블룸은 퀸 사이즈의 더블침대, 평면 TV와 냉장고를 갖추고 있습니다. 전용 Wi-Fi 라우터가 객실에 제공됩니다.</p>
        <table class="conf_align_table" style="clear:left;">
            <tbody>
                <tr>
                    <th scope="row">
                        <div class="pb_conf_guest_name_label">
                            투숙객 이름
                        </div>
                    </th>
                    <td>
                        <!-- ClickTaleExcludeBlock -->
                        <p>
                            ${reservationVO.lastname } ${reservationVO.firstname }
                            <a
                                class="conf_mb_inline js-custom-goal--edit-guest-name custom_track"
                                data-trackname="pb_conf_inline_mybooking: Edit guest name"
                                href="
        /myreservations.ko.html?aid=304142;label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQPoAQGIAgGoAgS4Ar_es5AGwAIB0gIkYjRkMTMyMDAtZDY3Zi00NTM0LTkwNjQtOGRhZjFkN2M0MWI42AIE4AIB;sid=2067071b959ba231d5d5a379c9e4f0b2;auth_key=KCudvl63DxX8Tixo&amp;;label=from_conf_1;pbsource=email_changeInfo;rres_id=3513880578
        #roomSection"
                                data-et-click="customGoal:AEAFZMdLEFbMXSOONC:2">
                                투숙객명 수정
                            </a>
                        </p>
                        <!-- EndClickTaleExcludeBlock <p>XXX</p> -->
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        포함된 내역
                    </th>
                    <td>
                        <div
                            class="pb_facilities--badge"
                            data-name-en="room size"
                            data-facility-id="0"
                            data-facility-type="0">
                            <span class="">
                                <svg
                                    class="bk-icon -streamline-room_size"
                                    fill="#008009"
                                    height="16"
                                    width="16"
                                    viewBox="0 0 24 24"
                                    role="presentation"
                                    aria-hidden="true"
                                    focusable="false">
                                    <path
                                        d="M3.75 23.25V7.5a.75.75 0 0 0-1.5 0v15.75a.75.75 0 0 0 1.5 0zM.22 21.53l2.25 2.25a.75.75 0 0 0 1.06 0l2.25-2.25a.75.75 0 1 0-1.06-1.06l-2.25 2.25h1.06l-2.25-2.25a.75.75 0 0 0-1.06 1.06zM5.78 9.22L3.53 6.97a.75.75 0 0 0-1.06 0L.22 9.22a.75.75 0 1 0 1.06 1.06l2.25-2.25H2.47l2.25 2.25a.75.75 0 1 0 1.06-1.06zM7.5 3.75h15.75a.75.75 0 0 0 0-1.5H7.5a.75.75 0 0 0 0 1.5zM9.22.22L6.97 2.47a.75.75 0 0 0 0 1.06l2.25 2.25a.75.75 0 1 0 1.06-1.06L8.03 2.47v1.06l2.25-2.25A.75.75 0 1 0 9.22.22zm12.31 5.56l2.25-2.25a.75.75 0 0 0 0-1.06L21.53.22a.75.75 0 1 0-1.06 1.06l2.25 2.25V2.47l-2.25 2.25a.75.75 0 0 0 1.06 1.06zM10.5 13.05v7.2a2.25 2.25 0 0 0 2.25 2.25h6A2.25 2.25 0 0 0 21 20.25v-7.2a.75.75 0 0 0-1.5 0v7.2a.75.75 0 0 1-.75.75h-6a.75.75 0 0 1-.75-.75v-7.2a.75.75 0 0 0-1.5 0zm13.252 2.143l-6.497-5.85a2.25 2.25 0 0 0-3.01 0l-6.497 5.85a.75.75 0 0 0 1.004 1.114l6.497-5.85a.75.75 0 0 1 1.002 0l6.497 5.85a.75.75 0 0 0 1.004-1.114z"></path>
                                </svg>30 제곱미터</span>
                        </div>
                        <div
                            class="pb_facilities--badge"
                            data-name-en=""
                            data-facility-id="112"
                            data-facility-type="1">
                            <span class="">
                                <svg
                                    class="bk-icon -streamline-mountains"
                                    fill="#008009"
                                    height="16"
                                    width="16"
                                    viewBox="0 0 128 128"
                                    role="presentation"
                                    aria-hidden="true"
                                    focusable="false">
                                    <path
                                        d="M127.5 104.38l-45.33-82a4.323 4.323 0 0 0-.33-.5 10.858 10.858 0 0 0-2-2c-4.7-3.567-11.398-2.674-15 2a3.61 3.61 0 0 0-.33.5l-25.44 46-7.87-10.47a4 4 0 0 0-6.75.55l-24 46A4 4 0 0 0 4 110.31h120a4 4 0 0 0 3.5-5.93zM71.32 26.57a2.73 2.73 0 0 1 3.68-.32c.128.093.246.2.35.32L89 51.35l-7.33 6.87-2.54-2.84a7.85 7.85 0 0 0-5.83-2.68 7.88 7.88 0 0 0-5.87 2.68l-2.54 2.83-7.24-6.91zM28.61 67.79l6.21 8.28-14.51 26.24H10.6zm.84 34.52L42.83 78.1c.196-.265.358-.554.48-.86l10.34-18.7 5.86 5.6a7.78 7.78 0 0 0 5.71 2.17 7.89 7.89 0 0 0 5.56-2.67l2.52-2.83 2.53 2.83a7.85 7.85 0 0 0 5.55 2.67h.32a7.75 7.75 0 0 0 5.37-2.17l6-5.58 24.19 43.74z"></path>
                                </svg>산 전망</span>
                        </div>
                        <div
                            class="pb_facilities--badge"
                            data-name-en=""
                            data-facility-id="11"
                            data-facility-type="1">
                            <span class="">
                                <svg
                                    class="bk-icon -streamline-weather_snowflake"
                                    fill="#008009"
                                    height="16"
                                    width="16"
                                    viewBox="0 0 24 24"
                                    role="presentation"
                                    aria-hidden="true"
                                    focusable="false">
                                    <path
                                        d="M11.25.75v7.5a.75.75 0 0 0 1.5 0V.75a.75.75 0 0 0-1.5 0zm4.031.914l-3.75 3h.938l-3.75-3a.75.75 0 1 0-.938 1.172l3.75 3a.75.75 0 0 0 .938 0l3.75-3a.75.75 0 1 0-.938-1.172zM1.883 7.024l6.495 3.75a.75.75 0 0 0 .75-1.299l-6.495-3.75a.75.75 0 1 0-.75 1.3zM4.69 3.99l.723 4.748.468-.812-4.473 1.748a.75.75 0 0 0 .546 1.398l4.473-1.748a.75.75 0 0 0 .468-.812l-.723-4.748a.75.75 0 1 0-1.482.226zM2.632 18.274l6.495-3.75a.75.75 0 1 0-.75-1.298l-6.495 3.75a.75.75 0 1 0 .75 1.299zm-1.224-3.948l4.473 1.748-.468-.812-.723 4.748a.75.75 0 0 0 1.482.226l.723-4.748a.75.75 0 0 0-.468-.812l-4.473-1.748a.75.75 0 0 0-.546 1.398zM12.75 23.25v-7.5a.75.75 0 0 0-1.5 0v7.5a.75.75 0 0 0 1.5 0zm-4.031-.914l3.75-3h-.938l3.75 3a.75.75 0 0 0 .937-1.172l-3.75-3a.75.75 0 0 0-.937 0l-3.75 3a.75.75 0 0 0 .938 1.172zm13.399-5.36l-6.495-3.75a.75.75 0 0 0-.75 1.298l6.495 3.75a.75.75 0 0 0 .75-1.299zm-2.807 3.034l-.724-4.748-.468.812 4.473-1.748a.75.75 0 0 0-.546-1.398l-4.473 1.748a.75.75 0 0 0-.468.812l.723 4.748a.75.75 0 0 0 1.483-.226zm2.057-14.285l-6.495 3.75a.75.75 0 0 0 .75 1.3l6.495-3.75a.75.75 0 0 0-.75-1.3zm1.224 3.95l-4.473-1.749.468.812.724-4.748a.75.75 0 0 0-1.483-.226l-.723 4.748a.75.75 0 0 0 .468.812l4.473 1.748a.75.75 0 0 0 .546-1.398zM11.625 7.6L8.377 9.475a.75.75 0 0 0-.375.65v3.75a.75.75 0 0 0 .375.65l3.248 1.874a.75.75 0 0 0 .75 0l3.248-1.875a.75.75 0 0 0 .375-.649v-3.75a.75.75 0 0 0-.375-.65L12.375 7.6a.75.75 0 0 0-.75 0zm.75 1.3h-.75l3.248 1.874-.375-.649v3.75l.375-.65-3.248 1.876h.75l-3.248-1.876.375.65v-3.75l-.375.65L12.375 8.9z"></path>
                                </svg>에어컨</span>
                        </div>
                        <div
                            class="pb_facilities--badge"
                            data-name-en=""
                            data-facility-id="75"
                            data-facility-type="1">
                            <span class="">
                                <svg
                                    class="bk-icon -streamline-tv_flat_screen"
                                    fill="#008009"
                                    height="16"
                                    width="16"
                                    viewBox="0 0 24 24"
                                    role="presentation"
                                    aria-hidden="true"
                                    focusable="false">
                                    <path
                                        d="M22.5 10.375v6.5a.25.25 0 0 1-.25.25H1.75a.25.25 0 0 1-.25-.25v-13a.25.25 0 0 1 .25-.25h20.5a.25.25 0 0 1 .25.25v6.5zm1.5 0v-6.5a1.75 1.75 0 0 0-1.75-1.75H1.75A1.75 1.75 0 0 0 0 3.875v13c0 .966.784 1.75 1.75 1.75h20.5a1.75 1.75 0 0 0 1.75-1.75v-6.5zm-16.5 12h9a.75.75 0 0 0 0-1.5h-9a.75.75 0 0 0 0 1.5zm3.75-4.5v3.75a.75.75 0 0 0 1.5 0v-3.75a.75.75 0 0 0-1.5 0z"></path>
                                </svg>평면 TV</span>
                        </div>
                        <div
                            class="pb_facilities--badge"
                            data-name-en=""
                            data-facility-id="79"
                            data-facility-type="1">
                            <span class="">
                                <svg
                                    class="bk-icon -streamline-soundproof"
                                    fill="#008009"
                                    height="16"
                                    width="16"
                                    viewBox="0 0 24 24"
                                    role="presentation"
                                    aria-hidden="true"
                                    focusable="false">
                                    <path
                                        d="M10.413 17.368l3.284 2.09c.947.713 2.357.511 3.103-.483.292-.39.45-.863.45-1.35v-5.25a.75.75 0 0 0-1.5 0v5.25a.75.75 0 0 1-1.2.6l-3.331-2.123a.75.75 0 0 0-.806 1.266zM17.25 5.625a2.25 2.25 0 0 0-3.6-1.8L7.097 7.992l.403-.117h-3a2.25 2.25 0 0 0-2.25 2.25v3a2.25 2.25 0 0 0 2.25 2.25h.625a.75.75 0 0 0 0-1.5H4.5a.75.75 0 0 1-.75-.75v-3a.75.75 0 0 1 .75-.75h3a.75.75 0 0 0 .403-.117l6.6-4.2A.816.816 0 0 1 15 4.875a.75.75 0 0 1 .75.75.75.75 0 0 0 1.5 0zM3.48 20.451l18-15a.75.75 0 0 0-.96-1.152l-18 15a.75.75 0 0 0 .96 1.152z"></path>
                                </svg>방음 시설</span>
                        </div>
                        <div
                            class="pb_facilities--badge"
                            data-name-en=""
                            data-facility-id="wifi"
                            data-facility-type="2">
                            <span class="">
                                <svg
                                    class="bk-icon -streamline-wifi"
                                    fill="#008009"
                                    height="16"
                                    width="16"
                                    viewBox="0 0 24 24"
                                    role="presentation"
                                    aria-hidden="true"
                                    focusable="false">
                                    <path
                                        d="M14.25 18.75a2.25 2.25 0 1 1-4.5 0 2.25 2.25 0 0 1 4.5 0zm1.5 0a3.75 3.75 0 1 0-7.5 0 3.75 3.75 0 0 0 7.5 0zm2.08-5.833a8.25 8.25 0 0 0-11.666 0 .75.75 0 0 0 1.06 1.06 6.75 6.75 0 0 1 9.546 0 .75.75 0 0 0 1.06-1.06zm3.185-3.182c-4.979-4.98-13.051-4.98-18.03 0a.75.75 0 1 0 1.06 1.06c4.394-4.393 11.516-4.393 15.91 0a.75.75 0 1 0 1.06-1.06zm2.746-3.603C17.136-.043 6.864-.043.24 6.132A.75.75 0 1 0 1.26 7.23c6.05-5.638 15.429-5.638 21.478 0a.75.75 0 0 0 1.022-1.098z"></path>
                                </svg>무료 WiFi</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">정원</th>
                    <td class="conf_room_occupancy_info">
                        <p>
                            성인 2명
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
        </div>
    </div>

    <div id="payment-info" class="mb-section mb-section--payment-info">
        <div class="mb-section__icon"></div>
        <div class="bui-spacer--large">
            <span class="bui-f-font-display_one">
                결제 정보
            </span>
        </div>
        <div
            data-capla-component="b-post-booking-web-mfe/PaymentInfo/v3/default/accommodations"
            data-capla-namespace="b-post-booking-web-mfeEQFGSCHP">
            <div>
                <div class="payment-info">
                    <div class="" data-testid="payment-status-statement">
                        <span class="_8ae9a3c91">이 예약에 대해
                        </span>
                        <span class="_8ae9a3c91 f74643df3a"><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${reservationVO.count_room*reservationVO.price}" /></span>
                        <span class="_8ae9a3c91">의 금액을 결제하셨습니다.</span>
                    </div>
                    <hr class="_b1c8687ff _dfc17cd2a">
                    <div>
                        <div class="_e3ed6b426 d79b273389 _b7ed60b59">
                            <div class="_729127938 _5636cb36e">
                                <div role="heading" aria-level="1" class="ad59ca2c57">
                                    <div data-testid="payment-transaction-title" class="_dc55ee131">2022년 1월 26일</div>
                                </div>
                            </div>
                        </div>
                        <div role="row">
                            <div class="_e3ed6b426 ad59ca2c57 d79b273389">
                                <div class="_729127938 f21492b5ae">
                                    <div>
                                        <span style="display: inline-block; vertical-align: middle;">
                                            <i
                                                title="Visa"
                                                style="margin-left: 0px; margin-right: 4px; width: 40px; height: 24px; vertical-align: middle; display: inline-block; background-size: contain; background-position: center center; background-repeat: no-repeat; background-image: url(https://bstatic.com/static/img/payments/payment_icons_redesign/visa.svg);"
                                                role="img"
                                                data-testid="payment-instrument-icon"></i>
                                        </span>
                                        <span
                                            style="direction: ltr; display: inline-block; vertical-align: middle;"
                                            data-testid="payment-instrument"
                                            class="_dc55ee131">•••• 2165</span>
                                    </div>
                                </div>
                                <div class="_5e0f636ce _729127938 f21492b5ae">
                                    <div class="_40f62ffbd">
                                        <span data-testid="payment-status" class="_4abc4c3d5">결제 완료</span>
                                    </div>
                                    <span data-testid="payment-amount" class="ac6bdec376 _cce1d8a72"><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${reservationVO.count_room*reservationVO.price}" /></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr class="mb-hr">

    <div class="house_rules_mybooking mb-section">
        <div class="mb-section__icon1">
            <i class="bicon bicon-p2g-checkin"></i>
        </div>
        <h2 class="mb-h3">떠나기 전에: 팁 &amp; 하우스 룰</h2>
        <p class="important-info">프라이버시가 보장되며, 더 넓고 집같이 편안한 숙소를 확보하셨습니다. 탁월한 선택입니다! 출발 전 꼭 알아두셔야 할 사항이 있습니다.</p>
        <p class="important-info">
            <strong>아동 혹은 반려동물을 동반하시나요?</strong>
            <br>
            <a target="_blank" href="bookcancel.ko.html?aid=304142;label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQPoAQGIAgGoAgS4ArPlrpAGwAIB0gIkZWEyYjg5YzYtODhhMi00NThlLWJmNWQtMDk5NWNiNDMzNjdj2AIE4AIB;sid=bac1796509bc54b36dbc023726e3547c;hotel_id=727821;policygroup_room=2022-02-01,72782102:214714667,72782103:214714667;bn=2811192897;general=214714667;checkin=2022-01-30;checkout=2022-02-01;persons=2;default_price_mode=3">어린이 및 엑스트라 베드 정책</a>을 확인하시기 바랍니다.
        </p>
        <p class="important-info"><strong>질문 혹은 급한 문제가 있을 경우, 숙소로 직접 연락하시기 바랍니다: <strong class="phone_number">+82634691234</strong>.</strong></p>
    </div>

    <hr class="mb-hr">

    <div class="pbx-mb-component-wrapper">
        <div
            data-capla-component="b-post-booking-web-mfe/PropertyContactOptions"
            data-capla-namespace="b-post-booking-web-mfeEQFGSCHP">
            <div>
                <div class="_84f6fd780 _836eb3357">
                    <div class="_29c344764">
                        <div class="fde444d7ef">숙소에 문의하기</div>
                        <div class="_a11e76d75">궁금한 점이 있으신가요? 대부분의 경우 숙소에 문의하시면 도움을 받으실 수 있습니다</div>
                    </div>
                    <div class="_29c344764">
                        <div class="_b03e729cb">
                            <div class="fe5178cae9">
                                <span aria-hidden="true" class="_3ae5d40db _4de7b1cb8">
                                    <svg viewBox="0 0 24 24">
                                        <path
                                            d="M22.5 12v6a.75.75 0 0 1-.75.75H2.25A.75.75 0 0 1 1.5 18V6a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v6zm1.5 0V6a2.25 2.25 0 0 0-2.25-2.25H2.25A2.25 2.25 0 0 0 0 6v12a2.25 2.25 0 0 0 2.25 2.25h19.5A2.25 2.25 0 0 0 24 18v-6zm-8.822-1.474l3.813 3.525a.75.75 0 1 0 1.018-1.102l-3.813-3.525a.75.75 0 1 0-1.018 1.102zM7.804 9.424L3.99 12.95a.75.75 0 1 0 1.018 1.102l3.813-3.525a.75.75 0 1 0-1.018-1.102zm14.65-5.027l-9.513 6.56a1.656 1.656 0 0 1-1.882 0l-9.513-6.56A.75.75 0 1 0 .694 5.63l9.513 6.56a3.156 3.156 0 0 0 3.586 0l9.513-6.56a.75.75 0 1 0-.852-1.234z"></path>
                                    </svg>
                                </span>
                            </div>
                            <div class="_0fd59361b">
                                <div class="_84f6fd780 _f98eca565">
                                    <div class="_29c344764">
                                        <div class="ac6bdec376">이메일로 문의</div>
                                    </div>
                                    <div class="_29c344764">
                                        <div class="_a11e76d75">메시지를 보내시면 숙소에서 가능한 한 빨리 답변해드립니다</div>
                                    </div>
                                    <div class="_29c344764">
                                        <div class="_a11e76d75">
                                            <a
                                                href="mailto:2811192897-ckeu.u4zy.kpbt.eykf@property.booking.com"
                                                class="_4310f7077 _45807dae0 _f7538b398">
                                                <span>이메일 보내기</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="_b03e729cb">
                            <div class="fe5178cae9">
                                <span aria-hidden="true" class="_3ae5d40db _4de7b1cb8">
                                    <svg viewBox="0 0 24 24">
                                        <path
                                            d="M14.662 23.038l.012.007c2.46 1.566 5.71 1.21 7.792-.873l.774-.774a2.596 2.596 0 0 0 0-3.669l-3.26-3.26a2.596 2.596 0 0 0-3.67 0 1.093 1.093 0 0 1-1.546.002l-.001-.001-5.219-5.22a1.096 1.096 0 0 1 0-1.548 2.593 2.593 0 0 0 .002-3.666c0-.002 0-.002-.002-.003L6.284.77a2.596 2.596 0 0 0-3.669 0l-.774.774A6.285 6.285 0 0 0 .982 9.36L1 9.386A50.691 50.691 0 0 0 14.62 23.011zm.798-1.27A49.186 49.186 0 0 1 2.244 8.55l-.005-.008a4.78 4.78 0 0 1 .662-5.938l.774-.774a1.096 1.096 0 0 1 1.549 0l3.26 3.264v.002c.428.427.427 1.119 0 1.545a2.596 2.596 0 0 0 0 3.67l5.218 5.22.002.001a2.593 2.593 0 0 0 3.667-.002 1.096 1.096 0 0 1 1.548 0l3.26 3.26c.428.427.428 1.12 0 1.548l-.773.774a4.783 4.783 0 0 1-5.951.652l-.037-.022z"></path>
                                    </svg>
                                </span>
                            </div>
                            <div class="_0fd59361b">
                                <div class="_84f6fd780 _f98eca565">
                                    <div class="_29c344764">
                                        <div class="ac6bdec376">전화로 문의</div>
                                    </div>
                                    <div class="_29c344764">
                                        <div class="_a11e76d75">
                                            <a href="tel:+82 63-469-1234" class="_4310f7077 fcb26725ff">+82 63-469-1234</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr class="mb-hr">

    <div class="pbx-mb-component-wrapper">
        <div
            data-capla-component="b-post-booking-web-mfe/HelpCenterEntrypoint"
            data-capla-namespace="b-post-booking-web-mfeEQFGSCHP">
            <div>
                <div class="_84f6fd780 _836eb3357">
                    <div class="_29c344764">
                        <div class="fde444d7ef">도움이 필요하신가요?</div>
                    </div>
                    <div class="_29c344764">
                        <div class="c10ef5209a">
                            <div class="_7ac605330">
                                <span aria-hidden="true" class="_3ae5d40db _4de7b1cb8">
                                    <svg viewBox="0 0 24 24">
                                        <path
                                            d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"></path>
                                    </svg>
                                </span>
                            </div>
                            <div class="a0964b478f">
                                <div class="_84f6fd780 _f98eca565">
                                    <div class="_29c344764">
                                        <div class="_a11e76d75">예약과 관련하여 지원을 제공하고 문의사항에 답변해드립니다.</div>
                                    </div>
                                    <div class="_29c344764">
                                        <div class="_a11e76d75">
                                            <a
                                                href="https://secure.booking.com/help/reservation/?label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQPoAQGIAgGoAgS4ArPlrpAGwAIB0gIkZWEyYjg5YzYtODhhMi00NThlLWJmNWQtMDk5NWNiNDMzNjdj2AIE4AIB&amp;sid=bac1796509bc54b36dbc023726e3547c&amp;aid=304142&amp;source=d_mb_generic_ep&amp;res_auth_key=gq6e9NxzOfdrsvVA&amp;reservation_id=2811192897"
                                                class="_4310f7077 _45807dae0 _f7538b398">
                                                <span>고객 서비스팀에 문의하기</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
    </div>

    <div class="footer-top1">
        <p><button>내 숙소 등록</button></p>
    </div>

    <div class="footer-top2">
        <div>
            <ul>
                <li>
                    <a>스마트폰 버전</a>
                </li>
                <li>
                    <a>내 예약 관리</a>
                </li>
                <li>
                    <a>고객 서비스팀 문의</a>
                </li>
                <li>
                    <a>제휴 협력사 등록</a>
                </li>
                <li>
                    <a>Boouen.com 비즈니스 계정</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="section">
        <div>
            <div class="footer-inner-box">
               <div class="ul-wrapper-box">
                    <ul>
                       <li><a>지역</a></li>
                       <li><a>도시</a></li>
                       <li><a>공항</a></li>
                       <li><a>호텔</a></li>
                       <li><a>관광 명소</a></li>
                   </ul>
               </div>
               <div class="ul-wrapper-box">
                    <ul>
                        <li><a>지역</a></li>
                        <li><a>도시</a></li>
                        <li><a>공항</a></li>
                        <li><a>호텔</a></li>
                        <li><a>관광 명소</a></li>
                    </ul>
                </div>
                <div class="ul-wrapper-box">
                    <ul>
                        <li><a>지역</a></li>
                        <li><a>도시</a></li>
                        <li><a>공항</a></li>
                        <li><a>호텔</a></li>
                        <li><a>관광 명소</a></li>
                    </ul>
                </div>
                <div class="ul-wrapper-box">
                    <ul>
                        <li><a>지역</a></li>
                        <li><a>도시</a></li>
                        <li><a>공항</a></li>
                        <li><a>호텔</a></li>
                        <li><a>관광 명소</a></li>
                    </ul>
                </div>
                <div class="ul-wrapper-box">
                    <ul>
                        <li><a>지역</a></li>
                        <li><a>도시</a></li>
                        <li><a>공항</a></li>
                        <li><a>호텔</a></li>
                        <li><a>관광 명소</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="slideBoxOverlay slidebox--open" id="overlay" aria-hidden="true">
        <i class="bi bi-x-lg" onclick="off()"></i>
        <div class="slideBoxWrapper">
            <h1 class="slideBoxWrapperTitle">날짜 변경</h1>
            <form>
                <div class="form-inner">
                    <div class="form-inner-second">
                        <div>
                            <input type="text" id="check_date" name="daterange">
                        </div>
                    </div>
                </div>
            </form>
            <div class="change-dates__footer">
                <button class="bui-button bui-button--secondary MyBookingOptionsCancel" type="button">
                    <span class="bui-button__text">
                    취소
                    </span>
                </button>
                <button class="bui-button bui-button--primary1" type="submit">
                    <span class="bui-button__loader">
                        <div class="bui-spinner bui-spinner--light bui-spinner--size-small">
                            <div class="bui-spinner__inner"></div>
                        </div>
                    </span>
                    <span class="bui-button__text">예약 가능 여부 확인</span>
                </button>
            </div>
        </div>
    </div>

    <script>
         function on() {
          document.getElementById("overlay").style.display = "block";
          map.relayout();
        }
	
        function off() {
          document.getElementById("overlay").style.display = "none";
        }
    </script>

<script>
    this.imagePreview = function(){	
        /* CONFIG */
            
            xOffset = 10;
            yOffset = 30;
            
            // these 2 variable determine popup's distance from the cursor
            // you might want to adjust to get the right result
            
        /* END CONFIG */
        $("a.preview").hover(function(e){
            this.t = this.title;
            this.title = "";	
            var c = (this.t != "") ? "<br/>" + this.t : "";
            $("body").append("<p id='preview'><img src='"+ this.href +"' alt='Image preview' />"+ c +"</p>");								 
            $("#preview")
                .css("top",(e.pageY - xOffset) + "px")
                .css("left",(e.pageX + yOffset) + "px")
                .fadeIn("fast");						
        },
        function(){
            this.title = this.t;	
            $("#preview").remove();
        });	
        $("a.preview").mousemove(function(e){
            $("#preview")
                .css("top",(e.pageY - xOffset) + "px")
                .css("left",(e.pageX + yOffset) + "px");
        });			
    };

    $(document).ready(function () {
        $(function () {
            $('input[name="daterange"]').daterangepicker({
                "startDate": "01/01/2022",
                "endDate": "17/01/2022",
                opens: 'center',
                locale: {
                    format: 'DD/MM/YYYY'
                }
            });
        });
        imagePreview();
    });
</script>
<
</body>
</html>