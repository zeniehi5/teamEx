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
    <title>cancel finalization</title>
</head>
<body>
    <jsp:include page="/WEB-INF/user/member/header.jsp"/>
    
    <div class="content-top">
        <span class="_501928098">예약이 취소되었습니다.&nbsp;<span class="_e4a8213f6"><a href="https://www.booking.com/hotel/kr/best-western-gunsan.ko.html?label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQPoAQGIAgGoAgS4ArPlrpAGwAIB0gIkZWEyYjg5YzYtODhhMi00NThlLWJmNWQtMDk5NWNiNDMzNjdj2AIE4AIB&amp;sid=bac1796509bc54b36dbc023726e3547c&amp;aid=304142" data-testid="name-archor" class="_8ce7bbbcf">${reservationVO.hotelname }</a><span class="_a11e76d75 _192b3a196"></span></span></span>
        <div role="img" class="_bebcf8d60 b3a3ada19a"><span aria-hidden="true" class="_617879812"><svg viewBox="0 0 24 24"><path d="M23.555 8.729a1.505 1.505 0 0 0-1.406-.98h-6.087a.5.5 0 0 1-.472-.334l-2.185-6.193a1.5 1.5 0 0 0-2.81 0l-.005.016-2.18 6.177a.5.5 0 0 1-.471.334H1.85A1.5 1.5 0 0 0 .887 10.4l5.184 4.3a.5.5 0 0 1 .155.543l-2.178 6.531a1.5 1.5 0 0 0 2.31 1.684l5.346-3.92a.5.5 0 0 1 .591 0l5.344 3.919a1.5 1.5 0 0 0 2.312-1.683l-2.178-6.535a.5.5 0 0 1 .155-.543l5.194-4.306a1.5 1.5 0 0 0 .433-1.661z"></path></svg></span><span aria-hidden="true" class="_617879812"><svg viewBox="0 0 24 24"><path d="M23.555 8.729a1.505 1.505 0 0 0-1.406-.98h-6.087a.5.5 0 0 1-.472-.334l-2.185-6.193a1.5 1.5 0 0 0-2.81 0l-.005.016-2.18 6.177a.5.5 0 0 1-.471.334H1.85A1.5 1.5 0 0 0 .887 10.4l5.184 4.3a.5.5 0 0 1 .155.543l-2.178 6.531a1.5 1.5 0 0 0 2.31 1.684l5.346-3.92a.5.5 0 0 1 .591 0l5.344 3.919a1.5 1.5 0 0 0 2.312-1.683l-2.178-6.535a.5.5 0 0 1 .155-.543l5.194-4.306a1.5 1.5 0 0 0 .433-1.661z"></path></svg></span><span aria-hidden="true" class="_617879812"><svg viewBox="0 0 24 24"><path d="M23.555 8.729a1.505 1.505 0 0 0-1.406-.98h-6.087a.5.5 0 0 1-.472-.334l-2.185-6.193a1.5 1.5 0 0 0-2.81 0l-.005.016-2.18 6.177a.5.5 0 0 1-.471.334H1.85A1.5 1.5 0 0 0 .887 10.4l5.184 4.3a.5.5 0 0 1 .155.543l-2.178 6.531a1.5 1.5 0 0 0 2.31 1.684l5.346-3.92a.5.5 0 0 1 .591 0l5.344 3.919a1.5 1.5 0 0 0 2.312-1.683l-2.178-6.535a.5.5 0 0 1 .155-.543l5.194-4.306a1.5 1.5 0 0 0 .433-1.661z"></path></svg></span><span aria-hidden="true" class="_617879812"><svg viewBox="0 0 24 24"><path d="M23.555 8.729a1.505 1.505 0 0 0-1.406-.98h-6.087a.5.5 0 0 1-.472-.334l-2.185-6.193a1.5 1.5 0 0 0-2.81 0l-.005.016-2.18 6.177a.5.5 0 0 1-.471.334H1.85A1.5 1.5 0 0 0 .887 10.4l5.184 4.3a.5.5 0 0 1 .155.543l-2.178 6.531a1.5 1.5 0 0 0 2.31 1.684l5.346-3.92a.5.5 0 0 1 .591 0l5.344 3.919a1.5 1.5 0 0 0 2.312-1.683l-2.178-6.535a.5.5 0 0 1 .155-.543l5.194-4.306a1.5 1.5 0 0 0 .433-1.661z"></path></svg></span></div>
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
                                           
                                        </time>
                                        <div class="_f807b8e8c">체크아웃</div>
                                        <time class="_ab5ecce54 a7c1636554">
                                            <fmt:parseDate var="end_date" value="${reservationVO.end_date}" pattern="yyyy-MM-dd" />
                                            <div class="ac6bdec376"><fmt:formatDate value="${end_date}" pattern="yyyy년 MM월 dd일"/></div>
                                            
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
                    <div style="display: none;"
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
                            </ul>
                        </div>
                    </div>
                    <div class="mb-info mb-info__full_width mb-info__actions bui_font_small">
                        <div class="mb-info--content">
                            <div class="mh-links">
                                <a class="mb-btn mb-cancel custom_track hasSlideBox js-cancel-request-btn" data-slidebox-preopen-callback="cancelOpenCallback" data-slidebox-load="mybooking_cancelsummary.ko.html?aid=304142;label=gen173nr-1DCAEoggI46AdIM1gEaH2IAQGYARe4ARjIAQzYAQPoAQGIAgGoAgS4ArPlrpAGwAIB0gIkZWEyYjg5YzYtODhhMi00NThlLWJmNWQtMDk5NWNiNDMzNjdj2AIE4AIB;sid=bac1796509bc54b36dbc023726e3547c;auth_key=gq6e9NxzOfdrsvVA;do=cancel" data-slidebox-submit-callback="cancelButtonSubmitCallback" data-slidebox-target="#slidebox-cancel-booking" data-slidebox-ajax-failure-feedback="true" href="${contextPath}/cancelPage.do?reservation_number=${reservationVO.reservation_number}" role="button" data-slidebox-reload-on-close-after-action="true" data-slidebox-close-callback="CancelClose_cxp_abu_trips_cancel_flow_free_cancel" data-trackname="Cancel booking, ">다시 예약하기</a> 
                            </div>
                        </div>
                    </div>
                </div>     
            </div>
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