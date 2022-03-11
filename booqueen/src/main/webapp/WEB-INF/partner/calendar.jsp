<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/partner/css/calendar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-responsive.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.js"></script>
    <title>${hotel.hotelname} · 캘린더</title>
</head>
<script>
    $(document).ready(function () {

        $('.input-daterange').datepicker({
            format: 'yyyy년 mm월 dd일',
            todayHighlight: true,
            startDate: '0d'
        });

    });
</script>
<body>
    <div class="main-container">
        <div class="content">
            <div class="home">
            	<jsp:include page="/WEB-INF/partner/header.jsp"/>  
                <main class="main">
                    <div class="bui-spacer">
                        <div class="av-cal-header av-cal-header--fixed-max-width">         
                            <div class="av-cal-header-row">
                                <div class="av-cal-header-row__section av-cal-header-row__section--primary">
                                    <div class="av-cal-header-row__element av-cal-header-row__element--flexible">
                                        <span class="bui-f-font-display_two"><span>캘린더</span></span>
                                    </div>
                                </div>
                                <div class="av-cal-header-row__section av-cal-header-row__section--secondary">
                                    <div class="av-cal-header-row__element av-cal-header-row__element--flexible">
                                        <div>
                                            <div class="bui-form__group">
                                                <label></label>
                                                <div class="bui-input-select">
                                                    <select class="bui-form__control">
                                                        <option value="MONTHLY">월별</option>
                                                        <option value="MATRIX">객실 옵션별</option>
                                                        <option value="YEARLY">연도별</option>
                                                    </select>
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                                                        class="bui-input-select__icon" style="user-select: auto;">
                                                        <path
                                                            d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z"
                                                            style="user-select: auto;"></path>
                                                    </svg>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="av-monthly">
                        <div class="av-monthly-layout">
                            <div>
                                <div class="av-cal-header-row">
                                    <div class="av-cal-header-row__section av-cal-header-row__section--primary">
                                        <div class="av-cal-header-row__element av-cal-header-row__element--flexible">
                                            <div class="av-monthly-flex-inline__wrap">
                                                <div
                                                    class="av-monthly__month-selector av-monthly-flex-inline__item av-monthly-flex-inline-tiem--grow bui-form__group">
                                                    <label></label>
                                                    <div class="bui-input-select">
                                                        <select class="bui-form__control">
                                                            <option value="#" selected="selected">2022년 2월</option>
                                                            <option value="#">2022년 3월</option>
                                                        </select>
                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                                                            class="bui-input-select__icon" style="user-select: auto;">
                                                            <path
                                                                d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z"
                                                                style="user-select: auto;"></path>
                                                        </svg>
                                                    </div>
                                                </div>
                                                <div class="av-monthly-flex-inline__item">
                                                    <button type="button"
                                                        class="av-monthly__month-selector av-monthly-no-bui-button__text av-monthly-prev bui-button bui-button--secondary">
                                                        <span class="bui-button__icon">
                                                            <svg fill="currentColor" focusable="false"
                                                                viewBox="0 0 24 24" role="presentation" width="16"
                                                                aria-hidden="true" height="16"
                                                                class="bk-icon -streamline-arrow_nav_left"
                                                                style="user-select: auto;">
                                                                <path
                                                                    d="M14.55 18a.74.74 0 0 1-.53-.22l-5-5A1.08 1.08 0 0 1 8.7 12a1.1 1.1 0 0 1 .3-.78l5-5a.75.75 0 0 1 1.06 0 .74.74 0 0 1 0 1.06L10.36 12l4.72 4.72a.74.74 0 0 1 0 1.06.73.73 0 0 1-.53.22zm-4.47-5.72zm0-.57z"
                                                                    style="user-select: auto;"></path>
                                                            </svg>
                                                        </span>
                                                        <span class="bui-button__text"></span>
                                                    </button>
                                                    <button type="button"
                                                        class="av-monthly__month-selector av-monthly-no-bui-button__text av-monthly-next bui-button bui-button--secondary">
                                                        <span class="bui-button__icon">
                                                            <svg fill="currentColor" viewBox="0 0 24 24"
                                                                focusable="false" width="16" role="presentation"
                                                                height="16" aria-hidden="true"
                                                                class="bk-icon -streamline-arrow_nav_right"
                                                                style="user-select: auto;">
                                                                <path
                                                                    d="M9.45 6c.2 0 .39.078.53.22l5 5c.208.206.323.487.32.78a1.1 1.1 0 0 1-.32.78l-5 5a.75.75 0 0 1-1.06 0 .74.74 0 0 1 0-1.06L13.64 12 8.92 7.28a.74.74 0 0 1 0-1.06.73.73 0 0 1 .53-.22zm4.47 5.72zm0 .57z"
                                                                    style="user-select: auto;"></path>
                                                            </svg>
                                                        </span>
                                                        <span class="bui-button__text"></span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="av-cal-header-row__element av-cal-header-row__element--flexible">
                                        </div>
                                    </div>
                                    <div class="av-cal-header-row__section av-cal-header-row__section--secondary">
                                        <div class="av-cal-header-row__element av-cal-header-row__element--flexible">
                                            <div>
                                                <div class="ext-feedback-cta av-monthly__feedback-button--exp">
                                                    <button type="button" class="bui-button bui-button--secondary">
                                                        <span class="bui-button__text">
                                                            <span>의견 보내기</span>
                                                        </span>
                                                    </button>
                                                </div>
                                                <div class="av-monthly__setting-menu bui-dropdown bui-dropdown--end">
                                                    <button type="button"
                                                        class="bui-dropdown__button bui-button bui-button--secondary">
                                                        <span class="bui-button__text">
                                                            <span>캘린더 설정 관리</span>
                                                        </span>
                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                                                            class="bui-dropdown__arrows" style="user-select: auto;">
                                                            <path
                                                                d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z"
                                                                style="user-select: auto;"></path>
                                                        </svg>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="av-cal-header-row__element">
                                            <button type="button" class="bui-button bui-button--secondary">
                                                <span class="bui-button__icon">
                                                    <svg width="16" aria-hidden="true" focusable="false"
                                                        fill="currentColor" height="16" role="presentation"
                                                        viewBox="0 0 24 24" class="bk-icon -streamline-lightbulb"
                                                        style="user-select: auto;">
                                                        <path
                                                            d="M12.75 2.251v-1.5a.75.75 0 0 0-1.5 0v1.5a.75.75 0 0 0 1.5 0zm6.144 3.167l1.061-1.06a.75.75 0 0 0-1.06-1.061l-1.061 1.06a.75.75 0 0 0 1.06 1.061zM21 12.001h1.5a.75.75 0 0 0 0-1.5H21a.75.75 0 0 0 0 1.5zm-3.166 6.144l1.06 1.061a.75.75 0 1 0 1.061-1.06l-1.06-1.061a.75.75 0 1 0-1.061 1.06zM6.166 4.358l-1.06-1.061a.75.75 0 0 0-1.061 1.06l1.06 1.061a.75.75 0 0 0 1.061-1.06zM3 10.5H1.5a.75.75 0 0 0 0 1.5H3a.75.75 0 0 0 0-1.5zm2.106 6.584l-1.061 1.06a.75.75 0 1 0 1.06 1.061l1.061-1.06a.75.75 0 1 0-1.06-1.061zm3.144-.636v2.3a3.75 3.75 0 1 0 7.5 0v-2.3a.75.75 0 0 0-1.5 0v2.3a2.25 2.25 0 0 1-4.5 0v-2.3a.75.75 0 0 0-1.5 0zm9-5.198a5.25 5.25 0 1 1-10.5 0 5.25 5.25 0 0 1 10.5 0zm1.5 0a6.75 6.75 0 1 0-13.5 0 6.75 6.75 0 0 0 13.5 0zm-7.5 10.5v1.5a.75.75 0 0 0 1.5 0v-1.5a.75.75 0 0 0-1.5 0z"
                                                            style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="bui-button__text">
                                                    <span>유용한 팁</span>
                                                    &nbsp;
                                                    <span class="bui-badge bui-badge--destructive">2</span>
                                                </span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="av-monthly-layout__main">
                            <div class="av-monthly-layout">
                                <span></span>
                                <div class="av-monthly-container">
                                    <div class="av-monthly-container__grid">
                                        <div class="av-monthly__grid">
                                            <div></div>
                                            <div></div>
                                            <div>
                                                <div class="av-monthly__grid-month-wrap">
                                                    <h2><span>2022년 2월</span></h2>
                                                    <div class="av-monthly__grid-month">
                                                        <div class="av-monthly__grid-week--header">
                                                            <div class="av-monthly__grid-weekname">Sun</div>
                                                            <div class="av-monthly__grid-weekname">Mon</div>
                                                            <div class="av-monthly__grid-weekname">Tue</div>
                                                            <div class="av-monthly__grid-weekname">Wed</div>
                                                            <div class="av-monthly__grid-weekname">Thu</div>
                                                            <div class="av-monthly__grid-weekname">Fri</div>
                                                            <div class="av-monthly__grid-weekname">Sat</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="av-monthly__grid-week">
                                                    <div class="av-monthly__grid-day-empty">
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day-empty">
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day av-monthly__cell-is-past">
                                                        <div></div>
                                                        <div class="av-monthly__cell av-monthly__cell-first">
                                                            <div>
                                                                <div class="av-monthly__status">1일</div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day av-monthly__cell-is-past">
                                                        <div></div>
                                                        <div class="av-monthly__cell av-monthly__cell-first">
                                                            <div>
                                                                <div class="av-monthly__status">2일</div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day av-monthly__cell-is-past">
                                                        <div></div>
                                                        <div class="av-monthly__cell av-monthly__cell-first">
                                                            <div>
                                                                <div class="av-monthly__status">3일</div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day av-monthly__cell-is-past">
                                                        <div></div>
                                                        <div class="av-monthly__cell av-monthly__cell-first">
                                                            <div>
                                                                <div class="av-monthly__status">4일</div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day av-monthly__cell-is-past">
                                                        <div></div>
                                                        <div class="av-monthly__cell av-monthly__cell-first">
                                                            <div>
                                                                <div class="av-monthly__status">5일</div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                </div>
                                                <div class="av-monthly__grid-week">
                                                    <div
                                                        class="av-monthly__grid-day av-monthly__month-selected-date av-monthly__grid-select-border-left av-monthly__grid-select-border-right av-monthly__grid-select-border-top av-monthly__grid-select-border-bottom">
                                                        <div>
                                                            <div
                                                                class="av-monthly__grid-selection-handle av-monthly__grid-selection-handle--start">
                                                                <svg viewBox="0 0 24 24" role="presentation"
                                                                    focusable="false" height="16" width="16"
                                                                    fill="currentColor" aria-hidden="true"
                                                                    class="av-monthly__grid-selection-handle-icon bk-icon -streamline-lines_horizontal"
                                                                    style="user-select: auto;">
                                                                    <path
                                                                        d="M2.25 18.753h19.5a.75.75 0 0 0 0-1.5H2.25a.75.75 0 0 0 0 1.5zm0-6h19.5a.75.75 0 0 0 0-1.5H2.25a.75.75 0 0 0 0 1.5zm0-6h19.5a.75.75 0 0 0 0-1.5H2.25a.75.75 0 0 0 0 1.5z"
                                                                        style="user-select: auto;"></path>
                                                                </svg>
                                                            </div>
                                                            <div class="av-monthly__cell">
                                                                <div>
                                                                    <div class="av-monthly__status">6일</div>
                                                                    <div>
                                                                        <div
                                                                            class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div
                                                                    class="av-monthly-bar__wrap--start av-monthly-bar__wrap">
                                                                    <div
                                                                        class="av-monthly-bar--unbookable av-monthly-bar__body">
                                                                        <div
                                                                            class="av-monthly-bar__wrap-length-7 av-monthly-bar__text">
                                                                            예약 불가</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div
                                                                    class="av-monthly__grid-selection-handle av-monthly__grid-selection-handle--end">
                                                                    <svg height="16" width="16" fill="currentColor"
                                                                        aria-hidden="true" viewBox="0 0 24 24"
                                                                        role="presentation" focusable="false"
                                                                        class="av-monthly__grid-selection-handle-icon bk-icon -streamline-lines_horizontal"
                                                                        style="user-select: auto;">
                                                                        <path
                                                                            d="M2.25 18.753h19.5a.75.75 0 0 0 0-1.5H2.25a.75.75 0 0 0 0 1.5zm0-6h19.5a.75.75 0 0 0 0-1.5H2.25a.75.75 0 0 0 0 1.5zm0-6h19.5a.75.75 0 0 0 0-1.5H2.25a.75.75 0 0 0 0 1.5z"
                                                                            style="user-select: auto;"></path>
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">7일</div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="av-monthly-bar__wrap">
                                                                <div
                                                                    class="av-monthly-bar--unbookable av-monthly-bar__body">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">8일</div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="av-monthly-bar__wrap">
                                                                <div
                                                                    class="av-monthly-bar--unbookable av-monthly-bar__body">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">9일</div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="av-monthly-bar__wrap">
                                                                <div
                                                                    class="av-monthly-bar--unbookable av-monthly-bar__body">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">10일</div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="av-monthly-bar__wrap">
                                                                <div
                                                                    class="av-monthly-bar--unbookable av-monthly-bar__body">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">11일</div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="av-monthly-bar__wrap">
                                                                <div
                                                                    class="av-monthly-bar--unbookable av-monthly-bar__body">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthy__status">12일</div>
                                                                <div>
                                                                    <div
                                                                        class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="av-monthly-bar__wrap--end av-monthly-bar__wrap">
                                                                <div
                                                                    class="av-monthly-bar--unbookable av-monthly-bar__body">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                </div>
                                                <div class="av-monthly__grid-week">
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">13일</div>
                                                                <div>
                                                                    <div
                                                                        class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">14일</div>
                                                                <div>
                                                                    <div
                                                                        class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">15일</div>
                                                                <div>
                                                                    <div
                                                                        class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">16일</div>
                                                                <div>
                                                                    <div
                                                                        class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">17일</div>
                                                                <div>
                                                                    <div
                                                                        class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">18일</div>
                                                                <div>
                                                                    <div
                                                                        class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">19일</div>
                                                                <div>
                                                                    <div
                                                                        class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                </div>
                                                <div class="av-monthly__grid-week">
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">20일</div>
                                                                <div>
                                                                    <div
                                                                        class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div
                                                                class="av-monthly-bar__wrap--start av-monthly-bar__wrap">
                                                                <div
                                                                    class="av-monthly-bar--reservation av-monthly-bar__body">
                                                                    <div
                                                                        class="av-monthly-bar__wrap--length-1 av-monthly-bar__text">
                                                                        예약자명1
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">21일</div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="av-monthly-bar__wrap">
                                                                <div
                                                                    class="av-monthly-bar--reservation av-monthly-bar__body">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">22일</div>
                                                                <div>
                                                                    <div
                                                                        class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div
                                                                        class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="av-monthly-bar__wrap--end av-monthly-bar__wrap">
                                                                <div class="av-monthly-bar--reservation av-monthly-bar__body"></div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">23일</div>
                                                                <div>
                                                                    <div class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false" class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">24일</div>
                                                                <div>
                                                                    <div class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false" class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">25일</div>
                                                                <div>
                                                                    <div class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false" class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">26일</div>
                                                                <div>
                                                                    <div class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false" class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                </div>
                                                <div class="av-monthly__grid-week">
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">27일</div>
                                                                <div>
                                                                    <div class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24" role="presentation" aria-hidden="true"
                                                                            focusable="false" class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day">
                                                        <div></div>
                                                        <div class="av-monthly__cell">
                                                            <div>
                                                                <div class="av-monthly__status">28일</div>
                                                                <div>
                                                                    <div class="av-monthly__price av-monthly__hide-mobile">
                                                                        ₩200,000
                                                                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false" class="bk-icon -streamline-arrow_nav_down">
                                                                            <path
                                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
                                                                            </path>
                                                                        </svg>
                                                                        <div class="av-monthly__price-tooltip">
                                                                            <div>Standard Rate ₩200,000</div>
                                                                            <div>Non-refundable Rate ₩180,000</div>
                                                                            <div>Weekly Rate ₩170,000</div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="av-monthly__cell-center av-monthly__hide-mobile">
                                                                        <span>잔여 객실 1개</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day-empty">
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day-empty">
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day-empty">
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day-empty">
                                                        <div></div>
                                                    </div>
                                                    <div class="av-monthly__grid-day-empty">
                                                        <div class="av-monthly__grid-day-empty-right"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="button"
                                                class="av-monthly__load-more bui-button bui-button--secondary bui-button--wide">
                                                <span class="bui-button__text"><span>다음 달도 표시하기</span></span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="av-monthly-container__form">
                                        <div class="av-monthly-container__block av-monthly__hide-medium">
                                            <div data-tour-onboarding="datepicker">
                                                <div class="bui-spacer--large">
                                                    <div class="bui-spacer--small">
                                                        <strong><span>7개 날짜 선택됨</span></strong>
                                                    </div>
                                                    <div class="ext-datepicker__wrap">
                                                        <div class="ext-datepicker__text-input bui-form__group">
                                                            <label><span>시작일</span></label>
                                                            <div
                                                                class="input-group input-daterange bui-input__group bui-text-input__group bui-text-inpu__group--prepend">
                                                                <div class="bui-input__addon">
                                                                    <svg focusable="false" width="16" aria-hidden="true"
                                                                        role="presentation" fill="currentColor"
                                                                        height="16" viewBox="0 0 128 128" slot="icon"
                                                                        class="av-monthly__datepicker-icon bk-icon -streamline-calendar_check_in"
                                                                        style="user-select: auto;">
                                                                        <path
                                                                            d="M116 16H96V4a4 4 0 0 0-8 0v12H40V4a4 4 0 0 0-8 0v12H12C5.373 16 0 21.373 0 28v88c0 6.627 5.373 12 12 12h104c6.627 0 12-5.373 12-12V28c0-6.627-5.373-12-12-12zm4 100a4 4 0 0 1-4 4H12a4 4 0 0 1-4-4V28a4 4 0 0 1 4-4h20v8a4 4 0 0 0 8 0v-8h48v8a4 4 0 0 0 8 0v-8h20a4 4 0 0 1 4 4zm-20-68H52a4 4 0 0 0-4 4v20H28a4 4 0 0 0-4 4v24a4 4 0 0 0 4 4h72a4 4 0 0 0 4-4V52a4 4 0 0 0-4-4zm-4 24H80V56h16zm-64 8h16v16H32zm24 0h16v16H56zm24 16V80h16v16z"
                                                                            style="user-select: auto;"></path>
                                                                    </svg>
                                                                </div>
                                                                <input class="form-control bui-form__control" placeholder="2022년 3월 9일" readonly>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="bui-spacer--large">
                                                </div>
                                                <div class="av-monthly-expandable__wrap">
                                                    <div class="ext-datepicker__wrap">
                                                        <div class="ext-datepicker__text-input bui-form__group">
                                                            <label><span>종료일</span></label>
                                                            <div
                                                                class="input-group input-daterange bui-input__group bui-text-input__group bui-text-input__group--prepend">
                                                                <div class="bui-input__addon">
                                                                    <svg viewBox="0 0 128 128" fill="currentColor"
                                                                        height="16" role="presentation"
                                                                        aria-hidden="true" width="16" focusable="false"
                                                                        slot="icon"
                                                                        class="av-monthly__datepicker-icon bk-icon -streamline-calendar_check_out"
                                                                        style="user-select: auto;">
                                                                        <path
                                                                            d="M116 16H96V4a4 4 0 0 0-8 0v12H40V4a4 4 0 0 0-8 0v12H12C5.373 16 0 21.373 0 28v88c0 6.627 5.373 12 12 12h104c6.627 0 12-5.373 12-12V28c0-6.627-5.373-12-12-12zm4 100a4 4 0 0 1-4 4H12a4 4 0 0 1-4-4V28a4 4 0 0 1 4-4h20v8a4 4 0 0 0 8 0v-8h48v8a4 4 0 0 0 8 0v-8h20a4 4 0 0 1 4 4zm-20-68H52a4 4 0 0 0-4 4v20H28a4 4 0 0 0-4 4v24a4 4 0 0 0 4 4h72a4 4 0 0 0 4-4V52a4 4 0 0 0-4-4zm-4 24H80V56h16zM72 56v16H56V56zM32 80h16v16H32zm24 0h16v16H56z"
                                                                            style="user-select: auto;"></path>
                                                                    </svg>
                                                                </div>
                                                                <input class="form-control bui-form__control" placeholder="2022년 3월 1일" readonly>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="av-monthly-container__block">
                                            <form>
                                                <div data-tour-onboarding="open-close">
                                                    <div class="bui-spacer--medium">
                                                        <span>객실 Open/Close</span>
                                                    </div>
                                                    <div class="bui-spacer--large">
                                                        <div class="bui-group bui-group--inline bui-group--large">
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 가능</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 불가</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="bui-spacer--medium">
                                                    <div class="bui-spacer--medium">
                                                        <hr class="bui-divider">
                                                    </div>
                                                    <div>
                                                        <div class="bui-spacer--medium">
                                                            <div class="bui-spacer--medium bui-form__group">
                                                                <label><span>판매 수량 선택</span></label>
                                                                <div class="bui-input-select">
                                                                    <select class="bui-form__control">
                                                                        <option>잔여 옵션 0개</option>
                                                                        <option>잔여 옵션 1개</option>
                                                                    </select>
                                                                    <svg xmlns="http://www.w3.org/2000/svg"
                                                                        viewBox="0 0 24 24"
                                                                        class="bui-input-select__icon"
                                                                        style="user-select: auto;">
                                                                        <path
                                                                            d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z"
                                                                            style="user-select: auto;"></path>
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="bui-spacer--medium">
                                                        <hr class="bui-divider">
                                                    </div>
                                                </div>
                                                <div>
                                                    <span>요금</span>
                                                    <div class="bui-spacer--largest">
                                                        <div class="bui-spacer--small bui-f-color-grayscale">Standard
                                                            Rate
                                                        </div>
                                                        <div
                                                            class="bui-spacer--small bui-group bui-group bui-group--inline bui-group--large">
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 가능</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 불가</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="bui-form__group bui-has-error">
                                                                <div
                                                                    class="bui-input__group bui-text-input__group bui-text-input__group--prepend">
                                                                    <div class="bui-input__addon">KRW</div>
                                                                    <input type="text"
                                                                        class="bui-form__control av-monthly__segmented--middle">
                                                                    <div
                                                                        class="bui-input__addon av-monthly__right-bui-addon">
                                                                        <button type="button"
                                                                            class="bui-button bui-button--secondary">
                                                                            <span class="bui-button__icon">
                                                                                <svg width="16" height="16"
                                                                                    fill="currentColor"
                                                                                    viewBox="0 0 24 24"
                                                                                    role="presentation"
                                                                                    aria-hidden="true" focusable="false"
                                                                                    class="bk-icon -streamline-person_half"
                                                                                    style="user-select: auto;">
                                                                                    <path
                                                                                        d="M16.5 6a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zM18 6A6 6 0 1 0 6 6a6 6 0 0 0 12 0zM3 23.25a9 9 0 1 1 18 0 .75.75 0 0 0 1.5 0c0-5.799-4.701-10.5-10.5-10.5S1.5 17.451 1.5 23.25a.75.75 0 0 0 1.5 0z"
                                                                                        style="user-select: auto;">
                                                                                    </path>
                                                                                </svg>
                                                                            </span>
                                                                            <span class="bui-button__text">4</span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                <div class="bui-form__error">
                                                                    <span>요금을 입력해 주세요.</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <a href="#"
                                                            class="bui-link bui-link-primary"><span>제한사항</span></a>
                                                    </div>
                                                    <div class="bui-spacer--largest">
                                                        <div class="bui-spacer--small bui-f-color-grayscale">
                                                            Non-refundable
                                                            Rate</div>
                                                        <div
                                                            class="bui-spacer--small bui-group bui-group--inline bui-group--large">
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 가능</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 불가</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="bui-form__group">
                                                                <div
                                                                    class="bui-input__group bui-text-input__group bui-text-input__group--prepend">
                                                                    <div class="bui-input__addon">KRW</div>
                                                                    <input disabled="disabled" type="text"
                                                                        class="bui-form__control av-monthly__segmented--middle">
                                                                    <div
                                                                        class="bui-input__addon av-monthly__right-bui-addon">
                                                                        <button type="button"
                                                                            class="bui-button bui-button--secondary">
                                                                            <span class="bui-button__icon">
                                                                                <svg width="16" height="16"
                                                                                    fill="currentColor"
                                                                                    viewBox="0 0 24 24"
                                                                                    role="presentation"
                                                                                    aria-hidden="true" focusable="false"
                                                                                    class="bk-icon -streamline-person_half"
                                                                                    style="user-select: auto;">
                                                                                    <path
                                                                                        d="M16.5 6a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zM18 6A6 6 0 1 0 6 6a6 6 0 0 0 12 0zM3 23.25a9 9 0 1 1 18 0 .75.75 0 0 0 1.5 0c0-5.799-4.701-10.5-10.5-10.5S1.5 17.451 1.5 23.25a.75.75 0 0 0 1.5 0z"
                                                                                        style="user-select: auto;">
                                                                                    </path>
                                                                                </svg>
                                                                            </span>
                                                                            <span class="bui-button__text">4</span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <a href="#"
                                                            class="bui-link bui-link--primary"><span>제한사항</span></a>
                                                    </div>
                                                    <div class="bui-spacer--largest">
                                                        <div class="bui-spacer--small bui-f-color-grayscale">Weekly
                                                            Rate</div>
                                                        <div
                                                            class="bui-spacer--small bui-group bui-group--inline bui-group--large">
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 가능</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 불가</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="bui-form__group">
                                                                <div
                                                                    class="bui-input__group bui-text-input__group bui-text-input__group--prepend">
                                                                    <div class="bui-input__addon">KRW</div>
                                                                    <input disabled="disabled" type="text"
                                                                        class="bui-form__control av-monthly__segmented--middle">
                                                                    <div
                                                                        class="bui-input__addon av-monthly__right-bui-addon">
                                                                        <button type="button"
                                                                            class="bui-button bui-button--secondary">
                                                                            <span class="bui-button__icon">
                                                                                <svg width="16" height="16"
                                                                                    fill="currentColor"
                                                                                    viewBox="0 0 24 24"
                                                                                    role="presentation"
                                                                                    aria-hidden="true" focusable="false"
                                                                                    class="bk-icon -streamline-person_half"
                                                                                    style="user-select: auto;">
                                                                                    <path
                                                                                        d="M16.5 6a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zM18 6A6 6 0 1 0 6 6a6 6 0 0 0 12 0zM3 23.25a9 9 0 1 1 18 0 .75.75 0 0 0 1.5 0c0-5.799-4.701-10.5-10.5-10.5S1.5 17.451 1.5 23.25a.75.75 0 0 0 1.5 0z"
                                                                                        style="user-select: auto;">
                                                                                    </path>
                                                                                </svg>
                                                                            </span>
                                                                            <span class="bui-button__text">4</span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <a href="#"
                                                            class="bui-link bui-link--primary"><span>제한사항</span></a>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="bui-f-font-caption bui-spacer--medium">
                                                        <div class="bui-spacer--medium">
                                                            <hr class="bui-divider bui-divider--light">
                                                        </div>
                                                        <span>다음 날짜에 변경사항이 적용됩니다: 2022년 2월 6일</span>
                                                    </div>
                                                    <div class="av-monthly__form-btn-wrap av-monthly-flex-inline__wrap">
                                                        <button type="button" disabled="disabled"
                                                            class="av-monthly-flex-inline__item--equal bui-button bui-button--secondary bui-button--wide">
                                                            <span class="bui-button__text"><span>취소</span></span>
                                                        </button>
                                                        <button type="button" disabled="disabled"
                                                            class="av-monthly-flex-inline__item--equal bui-button bui-button--primary bui-button--wide">
                                                            <span class="bui-button__text"><span>저장</span></span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="av-monthly-container__block">
                                            <div class="bui-spacer--small">
                                                <span class="bui-f-font-strong">최종 업데이트</span>
                                            </div>
                                            <div class="bui-f-font-caption">
                                                <div class="bui-spacer--small"></div>
                                                <div class="bui-f-color-complement">
                                                    <svg width="16" height="16" aria-hidden="true" fill="currentColor"
                                                        focusable="false" role="presentation" viewBox="0 0 24 24"
                                                        class="bk-icon -streamline-warning" style="user-select: auto;">
                                                        <path
                                                            d="M12 15.75A1.125 1.125 0 1 0 12 18a1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm.75-2.25V5.25a.75.75 0 0 0-1.5 0v8.25a.75.75 0 0 0 1.5 0zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                            style="user-select: auto;"></path>
                                                    </svg>
                                                    <span>캘린더 업데이트가 필요합니다.</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <jsp:include page="/WEB-INF/partner/footer.jsp"/>
            </div>
        </div>
    </div>
</body>

</html>