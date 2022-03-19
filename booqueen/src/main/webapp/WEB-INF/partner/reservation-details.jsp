<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="ko_kr"/>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/reservation-details.css" >
<title>${hotel.hotelname} · 예약 상세 정보</title>
</head>
<body>
<body>
    <div class="main-container">
        <div class="content">
            <div class="home">
            	<jsp:include page="/WEB-INF/partner/header.jsp"/>
                <main class="main">
                    <div class="details container container_center">
                        <div class="page_header">
                            <div class="page_header_breadcrumbs">
                                <div class="breadcrumb breadcrumb_back">
                                    <div class="breadcrumb_item">
                                        <svg role="presentation" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 24 24"
                                            width="16" height="16" class="breadcrumb_icon" style="user-select: auto;">
                                            <path
                                                d="M14.55 18a.74.74 0 0 1-.53-.22l-5-5A1.08 1.08 0 0 1 8.7 12a1.1 1.1 0 0 1 .3-.78l5-5a.75.75 0 0 1 1.06 0 .74.74 0 0 1 0 1.06L10.36 12l4.72 4.72a.74.74 0 0 1 0 1.06.73.73 0 0 1-.53.22zm-4.47-5.72zm0-.57z"
                                                style="user-select: auto;"></path>
                                        </svg>
                                        <div class="breadcrumb_text">
                                            <a href="${contextPath}/reservation.pdo" class="link link_secondary">
                                                <span>예약 개요로 돌아가기</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h1 class="page_header_title">
                                <span><span>예약 상세 정보</span></span>
                            </h1>
                        </div>
                        <div class="details_wrapper grid">
                            <div class="main_reservation_wrapper grid_column_full">
                                <div class="reservation_content">
                                    <div class="panel_group">
                                        <div class="reservation_overview panel">
                                            <div class="grid">
                                                <div class="grid_column_full grid_column_left">
                                                    <div>
                                                        <p class="reservation_content_label">
                                                            <span>체크인</span>
                                                        </p>
                                                        <p
                                                            class="reservation_content_info reservation_content_info_emphasized">
                                                            <span>${details.checkin_date}</span>
                                                        </p>
                                                        <p class="reservation_content_label">
                                                            <span>체크아웃</span>
                                                        </p>
                                                        <p
                                                            class="reservation_content_info reservation_content_info_emphasized">
                                                            <span>${details.checkout_date}</span>
                                                        </p>
                                                        <p class="reservation_content_label">
                                                            <span>숙박 기간:</span>
                                                        </p>
                                                        <p class="reservation_content_info">
                                                            <span>1박</span>
                                                        </p>
                                                        <p class="reservation_content_label">
                                                            <span>총 투숙객:</span>
                                                        </p>
                                                        <p class="reservation_content_info">2</p>
                                                        <p class="reservation_content_label">
                                                            <span>총 객실 수</span>
                                                        </p>
                                                        <p class="reservation_content_info">1</p>
                                                        <p class="reservation_content_label">
                                                            <span>총 요금</span>
                                                        </p>
                                                        <p
                                                            class="reservation_content_info reservation_content_info_emphasized">
                                                            <span><fmt:formatNumber value="${details.price}" type="currency"/></span>
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="grid_column_full grid_column_right">
                                                    <div>
                                                        <address class="reservation_overview_address">
                                                            <p class="reservation_content_label">
                                                                <span>투숙객 이름:</span>
                                                            </p>
                                                            <div
                                                                class="reservation_content_info reservation_content_info_emphasized">
                                                                <div class="inline">
                                                                    <button class="link link_primary">
                                                                        <span>${details.lastname}${details.firstname}</span>
                                                                    </button>
                                                                </div>
                                                                <div class="flag">
                                                                    <img src="https://r.bstatic.com/backend_static/common/flags/16/kr.png"
                                                                        class="flag"
                                                                        style="height: auto; user-select: auto;">
                                                                    <span class="flag_text">대한민국</span>
                                                                </div>
                                                            </div>
                                                            <p class="font_featured">
                                                                <a href="#"
                                                                    class="link link_primary">${details.userid}</a>
                                                                <br>
                                                            </p>
                                                        </address>
                                                        <div class="reservation_overview_extra grid grid_align_center">
                                                            <div class="grid_column_full grid_column_full_medium">
                                                                <div
                                                                    class="reservation_overview_extra grid grid_align_center">
                                                                    <div
                                                                        class="grid_column_full grid_column_half_medium">
                                                                        <p class="reservation_content_label">
                                                                            <span>사용 언어</span>
                                                                        </p>
                                                                        <p class="reservation_content_info">한국어</p>
                                                                    </div>
                                                                    <div
                                                                        class="grid_column_full grid_column_half_medium">
                                                                        <p class="reservation_content_label">
                                                                            <span>예약자 이름:</span>
                                                                        </p>
                                                                        <p class="reservation_content_info">${details.lastname}${details.firstname}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="grid_column_full grid_column_half_medium">
                                                                <p class="reservation_content_label">
                                                                    <span>채널</span>
                                                                </p>
                                                                <p class="reservation_content_info">
                                                                    <span>Booking.com</span>
                                                                </p>
                                                            </div>
                                                            <div class="grid_column_full grid_column_half_medium">
                                                                <p class="reservation_content_label">
                                                                    <span>IATA/TIDS 코드:</span>
                                                                </p>
                                                                <p class="reservation_content_info">PC029090</p>
                                                            </div>
                                                            <div class="grid_column_full grid_column_half_medium">
                                                                <p class="reservation_content_label">
                                                                    <span>예약 번호</span>
                                                                </p>
                                                                <p class="reservation_content_info">${details.reservation_number}</p>
                                                            </div>
                                                            <div class="grid_column_full grid_column_half_medium">
                                                                <p class="reservation_content_label">
                                                                    <span>수수료 부과 대상 금액:</span>
                                                                </p>
                                                                <p class="reservation_content_info"><fmt:formatNumber value="${details.price}" type="currency"/></p>
                                                            </div>
                                                            <div class="grid_column_full grid_column_half_medium">
                                                                <p class="reservation_content_label">
                                                                    <span>예약일</span>
                                                                </p>
                                                                <p class="reservation_content_info">${details.reservation_date}</p>
                                                            </div>
                                                            <div class="grid_column_full grid_column_half_medium">
                                                                <p class="reservation_content_label">
                                                                    <span>수수료:</span>
                                                                </p>
                                                                <p class="reservation_content_info"><fmt:formatNumber value="${details.commission}" type="currency"/></p>
                                                            </div>
                                                            <div class="grid_column_full grid_column_full_medium">
                                                                <div>
                                                                    <p class="reservation_content_label">
                                                                        <span>예약 메모(내부용)</span>
                                                                    </p>
                                                                    <div class="reservation_content_info">
                                                                        <button class="link link_primary">
                                                                            <span>메모 추가</span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="grid_column_full grid_column_full_medium">
                                                                <p class="reservation_content_label">
                                                                    <span>이 투숙객에 대해 유의할 점</span>
                                                                </p>
                                                                <p class="reservation_content_info">출장 목적이며 법인카드를 사용할 수
                                                                    있습니다.</p>
                                                            </div>
                                                            <div class="grid_column_full grid_column_full_medium">
                                                                <p class="reservation_content_label">
                                                                    <span>예상 도착 시간</span>
                                                                </p>
                                                                <p class="reservation_content_info">
                                                                    <span>${details.time_arrival}</span>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="reservation_room_wrapper">
                                        <ul class="reservation_room_block accordion">
                                            <li class="accordion_row">
                                                <button class="accordion_row_inner">
                                                    <div class="accordion_row_header">
                                                        <h1 class="accordion_title">
                                                            <div class="reservation_room_title">
                                                                <div class="room_title_name">${details.type}</div>
                                                                <div class="price_display test_right room_price">
                                                                    <div class="price_display_value">
                                                                        <span>₩180,000</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </h1>
                                                        <p class="accordion_subtitle">
                                                            <span class="room_subtitle">
                                                                <span class="room_subtitle_item">
                                                                    <svg role="presentation" aria-hidden="true"
                                                                        fill="currentColor" focusable="false"
                                                                        height="20" width="20" viewbox="0 0 128 128"
                                                                        class="check_in_icon"
                                                                        style="user-select: auto;">
                                                                        <path
                                                                            d="M87.33 66.22c.06-.1.11-.2.16-.3.077-.125.143-.255.2-.39.054-.133.097-.27.13-.41.04-.112.073-.225.1-.34.1-.515.1-1.045 0-1.56a3.352 3.352 0 0 0-.1-.34 2.802 2.802 0 0 0-.13-.41 2.868 2.868 0 0 0-.2-.39c0-.1-.1-.2-.16-.3a4.922 4.922 0 0 0-.5-.61l-24-24a4.002 4.002 0 1 0-5.66 5.66L74.34 60H20a4 4 0 0 0 0 8h54.34L57.17 85.17a4.002 4.002 0 1 0 5.66 5.66l24-24c.183-.19.35-.394.5-.61zM92 0h-8a4 4 0 0 0 0 8h8c6.627 0 12 5.373 12 12v88c0 6.627-5.373 12-12 12h-8a4 4 0 0 0 0 8h8c11.046 0 20-8.954 20-20V20c0-11.046-8.954-20-20-20z"
                                                                            style="user-select: auto;"></path>
                                                                    </svg>
                                                                    <span>${details.checkin_date}</span>
                                                                </span>
                                                                <span class="room_subtitle_item">
                                                                    <svg fill="currentColor" focusable="false"
                                                                        aria-hidden="true" role="presentation"
                                                                        height="20" width="20" viewbox="0 0 128 128"
                                                                        class="check_out_icon"
                                                                        style="user-select: auto;">
                                                                        <path
                                                                            d="M111.33 66.22c.06-.1.11-.2.16-.3.05-.1.15-.25.21-.39s.08-.27.12-.41c.039-.112.073-.225.1-.34.1-.515.1-1.045 0-1.56a3.352 3.352 0 0 0-.1-.34c0-.14-.07-.28-.12-.41-.05-.13-.14-.26-.21-.39-.07-.13-.1-.2-.16-.3a4.886 4.886 0 0 0-.5-.61l-24-24a4.002 4.002 0 1 0-5.66 5.66L98.34 60H44a4 4 0 0 0 0 8h54.34L81.17 85.17a4.002 4.002 0 1 0 5.66 5.66l24-24c.183-.19.35-.394.5-.61zM44 120h-8c-6.627 0-12-5.373-12-12V20c0-6.627 5.373-12 12-12h8a4 4 0 0 0 0-8h-8C24.954 0 16 8.954 16 20v88c0 11.046 8.954 20 20 20h8a4 4 0 0 0 0-8z"
                                                                            style="user-select: auto;"></path>
                                                                    </svg>
                                                                    <span>${details.checkout_date}</span>
                                                                </span>
                                                            </span>
                                                        </p>
                                                    </div>
                                                    <span class="accordion_icon_container">
                                                        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 24 24"
                                                            class="accordion_icon" style="user-select: auto;">
                                                            <path
                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z"
                                                                style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </button>
                                                <div class="accordion_content">
                                                    <div class="spacer">
                                                        <hr class="divider">
                                                    </div>
                                                    <div class="grid">
                                                        <div class="grid_column_full grid_column_left">
                                                            <div>
                                                                <p class="reservation_content_label">
                                                                    <span>투숙객 이름</span>
                                                                </p>
                                                                <p class="reservation_content_info">
                                                                    <span>투숙객명</span>
                                                                </p>
                                                                <p class="reservation_content_label">
                                                                    <span>최대 정원</span>
                                                                </p>
                                                                <p class="reservation_content_info">
                                                                    <span>4명</span>
                                                                </p>
                                                                <p><img src="https://q-xx.bstatic.com/xdata/images/hotel/max600/335583335.jpg?k=a5898ee557a61281a790f337857a0ba24f2f767570b49817d8022ac967edd1d2&amp;o="
                                                                        alt="imageAlt" class="reservation_content_image"
                                                                        style="user-select: auto;"></p>
                                                            </div>
                                                        </div>
                                                        <div class="grid_column_full grid_column_right">
                                                            <table class="reservation_content_table bui_table">
                                                                <thead class="bui_table_head">
                                                                    <tr class="bui_table_row">
                                                                        <th class="bui_table_cell bui_table_cell_head">
                                                                            <span>날짜</span>
                                                                        </th>
                                                                        <th class="bui_table_cell bui_table_cell_head">
                                                                            <span>요금</span>
                                                                        </th>
                                                                        <th
                                                                            class="bui_table_cell bui_table_cell_head bui_table_align_end">
                                                                            <span>1박 요금</span>
                                                                        </th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody class="bui_table_body">
                                                                    <tr class="bui_table_row">
                                                                        <th class="bui_table_cell bui_table_cell_head">
                                                                            15 - 16 7월</th>
                                                                        <td class="bui_table_cell">
                                                                            <div>Standard Rate</div>
                                                                            <div class="res_fantasyflex_status"></div>
                                                                        </td>
                                                                        <td
                                                                            class="bui_table_cell bui_table_cell_align_end">
                                                                            <span>₩180,000</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="bui_table_row res_room_row_subtotal">
                                                                        <th colspan="2" scope="row"
                                                                            class="res_room_total_cell bui_table_cell bui_table_cell_row_head">
                                                                            <strong>
                                                                                <span>소계</span></strong>
                                                                        </th>
                                                                        <td
                                                                            class="bui_table_cell bui_table_cell_align_end">
                                                                            <strong>₩180,000</strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="bui_table_row res_room_row_total">
                                                                        <th colspan="2" scope="row"
                                                                            class="res_room_total_cell bui_table_cell bui_table_cell_row_head">
                                                                            <strong>
                                                                                <span>객실 요금 합계</span></strong>
                                                                        </th>
                                                                        <td
                                                                            class="bui_table_cell bui_table_cell_align_end">
                                                                            <strong>
                                                                                <span>₩180,000</span></strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="bui_table_row res_room_row_included">
                                                                        <td
                                                                            class="res_room_included_cell bui_table_cell">
                                                                            <span>요금에 포함:
                                                                            </span>
                                                                        </td>
                                                                        <td colspan="2"
                                                                            class="res_room_included_cell bui_table_cell">
                                                                            <span>10% 세금</span>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="reservation_msg_wrapper container">
                                        <div class="guest_requests reservation_guest_requests">
                                            <ul class="guest_requests_wrapper accordion">
                                                <li class="accordion_row bui-is-active">
                                                    <button aria-expanded=" true" type="button"
                                                        class="accordion_row_inner">
                                                        <div class="accordion_row_header">
                                                            <h3 class="accordion_title">
                                                                <div class="guest_requests_title">
                                                                    <span>고객 요청 사항</span>
                                                                </div>
                                                            </h3>
                                                            <p class="accordion_subtitle"></p>
                                                        </div>
                                                        <span role="presentation" class="accordion_icon_container">
                                                            <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 24 24"
                                                                class="accordion_icon" style="user-select: auto;">
                                                                <path
                                                                    d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z"
                                                                    style="user-select: auto;"></path>
                                                            </svg>
                                                        </span>
                                                    </button>
                                                    <div class="accordion_content">
                                                        <div class="conversation-requests_item">
                                                            "${details.special_request}"
                                                            <div class="conversation-requests__item-status"></div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="reservation_msg_wrapper container"></div>
                                    <div class="reservation_policies">
                                        <div class="bui-card">
                                            <div class="bui-card__content">
                                                <div class="res-policies__rooms">
                                                    <div class="bui-spacer--largest">
                                                        <h1 class="res-policies__title">${details.type}</h1>
                                                        <div class="res-policies__row">
                                                            <div class="grid bui-grid--bleed">
                                                                <div class="grid_column grid_column_left">
                                                                    <strong>예약 취소</strong>
                                                                </div>
                                                                <div class="grid_column grid_column_right">
                                                                    <div>
                                                                        <p class="res-policies__rule">체크인 날짜까지 하루 이상 남은
                                                                            경우 무료 취소가 가능합니다.</p>
                                                                        <p class="res-policies__rule">체크인 날짜까지 1일 남은
                                                                            시점부터는 취소할 경우 고객이 지불해야 할 위약금으로 총 예약 요금이
                                                                            부과됩니다.</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="res-policies__row">
                                                            <div class="grid bui-grid--bleed">
                                                                <div class="grid_column grid_column_left">
                                                                    <strong>선결제</strong>
                                                                </div>
                                                                <div class="grid_column grid_column_right">
                                                                    <div>
                                                                        <p class="res-policies__rule">선결제가 필요없습니다.</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="res-policies__row">
                                                            <div class="grid bui-grid--bleed">
                                                                <div class="grid_column grid_column_left">
                                                                    <strong>손해 보증금</strong>
                                                                </div>
                                                                <div class="grid_column grid_column_right">
                                                                    <div>
                                                                        <p class="res-policies__rule">손해 보증금이 설정되어 있지
                                                                            않습니다.</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="res-policies__row">
                                                            <div class="grid bui-grid--bleed">
                                                                <div class="grid_column grid_column_left">
                                                                    <strong>인터넷</strong>
                                                                </div>
                                                                <div class="grid_column grid_column_right">
                                                                    <div>
                                                                        <p class="res-policies__rule">인터넷 접속이 불가능합니다.
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="res-policies__row">
                                                            <div class="grid bui-grid--bleed">
                                                                <div class="grid_column grid_column_left">
                                                                    <strong>어린이 및 엑스트라 베드 정책</strong>
                                                                </div>
                                                                <div class="grid_column grid_column_right">
                                                                    <div>
                                                                        <p class="res-policies__rule">아동 이용 불가</p>
                                                                        <p class="res-policies__rule">유아용 침대 제공하지 않음</p>
                                                                        <p class="res-policies__rule">엑스트라베드 제공하지 않음</p>
                                                                        <p class="res-policies__rule">투숙객 정원은 최대 4명입니다.
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="res-policies__row">
                                                            <div class="grid bui-grid--bleed">
                                                                <div class="grid_column grid_column_left">
                                                                    <strong>주차</strong>
                                                                </div>
                                                                <div class="grid_column grid_column_right">
                                                                    <div>
                                                                        <p class="res-policies__rule">호텔 인근(사전 예약 불필요)
                                                                            공영 주차장이 무료로 이용 가능합니다.</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="res-policies__row">
                                                            <div class="grid bui-grid--bleed">
                                                                <div class="grid_column grid_column_left">
                                                                    <strong>애완동물</strong>
                                                                </div>
                                                                <div class="grid_column grid_column_right">
                                                                    <div>
                                                                        <p class="res-policies__rule">애완동물 동반이 불가능합니다.
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="res-policies__row">
                                                            <div class="grid bui-grid--bleed">
                                                                <div class="grid_column grid_column_left">
                                                                    <strong>단체</strong>
                                                                </div>
                                                                <div class="grid_column grid_column_right">
                                                                    <div>
                                                                        <p class="res-policies__rule">예약 시 적용되는 별도의 조건이
                                                                            없습니다.</p>
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
                            </div>
                            <div class="action_sidebar_wrapper grid_column_sidebar">
                                <div class="sidebar_panel">
                                    <div class="spacer">
                                        <h3 class="actions_heading">
                                            <span>이 예약 업데이트</span>
                                        </h3>
                                    </div>
                                    <div class="group">
                                        <div class="group">
                                            <button type="button" class="button button_secondary button_wide">
                                                <span class="button_text">
                                                    <span>숙박일정 변경 제안하기</span>
                                                </span>
                                            </button>
                                        </div>
                                        <div class="group">
                                            <button type="button" class="button button_secondary button_wide">
                                                <span class="button_text">
                                                    <span>노쇼 표시</span>
                                                </span>
                                            </button>
                                        </div>
                                        <div class="group">
                                            <button type="button" class="button button_secondary button_wide">
                                                <span class="button_text">
                                                    <span>투숙객 부정/불법 행위 신고하기</span>
                                                </span>
                                            </button>
                                        </div>
                                        <button type="button" class="button button_secondary button_wide" onClick="window.print()">
                                            <span class="button_text">
                                                <span>이 페이지 인쇄하기</span>
                                            </span>
                                        </button>
                                        <div class="group">
                                            <button type="button" class="button button_secondary button_wide">
                                                <span class="button_text">
                                                    <span>예약 취소 요청</span>
                                                </span>
                                            </button>
                                        </div>
                                        <div class="spacer">
                                            <hr class="divider">
                                        </div>
                                        <div class="spacer">
                                            <h3 class="actions_heading">
                                                <span>결제</span>
                                            </h3>
                                        </div>
                                        <div>
                                            <div class="group">
                                                <button type="button" class="button button_secondary button_wide"
                                                    disabled="disabled">
                                                    <span class="button_text">
                                                        <span>유효하지 않은 신용카드로 등록하기</span>
                                                    </span>
                                                </button>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="group">
                                                <button type="button" class="button button_secondary button_wide"
                                                    disabled="disabled">
                                                    <span class="button_text">
                                                        <span>신용카드 정보 보기</span>
                                                    </span>
                                                </button>
                                            </div>
                                            <div class="view_cc">
                                                <div class="view_cc_badge">
                                                    <span class="badge badge_constructive">
                                                        <span>입력됨</span>
                                                    </span>
                                                    2022년 1월 21일 금요일 - 09:14:43
                                                </div>
                                                <div class="view_cc_additional_info">
                                                    <span>신용카드 정보 접근 권한이 없습니다.</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="action_payment_status">
                                            <div class="group">
                                                <div class="form_group">
                                                    <label>
                                                        <span class="actions_label">결제 현황</span>
                                                    </label>
                                                    <dis class="input_select">
                                                        <select class="form_control">
                                                            <option>
                                                                -- 결제 상태 선택 --
                                                            </option>
                                                            <option>투숙객이 전액을 지불하였습니다</option>
                                                            <option>투숙객이 선결제를 지불하였습니다</option>
                                                            <option>카드는 사전 승인되었습니다</option>
                                                            <option>투숙객이 아직 지불하지 않았습니다</option>
                                                        </select>
                                                        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 24 24"
                                                            class="input_select_icon" style="user-select: auto;">
                                                            <path
                                                                d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z"
                                                                style="user-select: auto;"></path>
                                                        </svg>
                                                    </dis>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="sidebar_banners_wrapper container">
                                    <div class="group">
                                        <div
                                            class="no_show_info_banner sidebar_banner sidebar_banner_small sidebar_banner_hint">
                                            <span class="banner_icon">
                                                <svg height="24" viewbox="0 0 128 128" aria-hidden="true"
                                                    role="presentation" width="24" focusable="false"
                                                    class="no_show_banner_icon" style="user-select: auto;">
                                                    <path
                                                        d="M49.4 85l4.2-17.2c.7-2.7.8-3.8 0-3.8a29 29 0 0 0-8.8 3.8l-1.8-3A48 48 0 0 1 66.7 53c3.7 0 4.3 4.3 2.5 11l-5 18c-.7 3.3-.3 4.3.5 4.3a19 19 0 0 0 8.2-4L75 85c-8.6 8.7-18.2 12-21.8 12s-6.4-2.3-3.8-12zM75 36a9.2 9.2 0 0 1-9.2 9c-4.4 0-7-2.7-6.8-7a9 9 0 0 1 9.1-9c4.6 0 6.9 3.2 6.9 7z"
                                                        style="user-select: auto;"></path>
                                                    <path
                                                        d="M62 16a48 48 0 1 1-48 48 48 48 0 0 1 48-48m0-8a56 56 0 1 0 56 56A56 56 0 0 0 62 8z"
                                                        style="user-select: auto;"></path>
                                                </svg>
                                            </span>
                                            <div class="banner_content">
                                                <p class="banner_text">
                                                    <span>노 쇼의 경우</span>
                                                    <br>
                                                    <button type="button" class="button button_primary button_link">
                                                        <span class="button_text">
                                                            <span>어떻게 처리하나요?</span>
                                                        </span>
                                                    </button>
                                                </p>
                                            </div>
                                            <button type="button" class="banner_close">
                                                <svg role="presentation" xmlns="http://www.w3.org/2000/svg"
                                                    viewbox="0 0 24 24" style="user-select: auto;">
                                                    <path
                                                        d="M13 12l6.26-6.26a.73.73 0 0 0-1-1L12 11 5.74 4.71a.73.73 0 1 0-1 1L11 12l-6.29 6.26a.73.73 0 0 0 .52 1.24.73.73 0 0 0 .51-.21L12 13l6.26 6.26a.74.74 0 0 0 1 0 .74.74 0 0 0 0-1z"
                                                        style="user-select: auto;"></path>
                                                </svg>
                                            </button>
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