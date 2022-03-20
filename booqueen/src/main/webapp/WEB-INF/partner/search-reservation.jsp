<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="ko_kr"/>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/search-reservation.css">
<title>${hotel.hotelname} · 예약</title>
</head>
<body>
<body>
    <div class="main-container">
        <div class="content">
            <div class="home">
            	<jsp:include page="/WEB-INF/partner/header.jsp"/>
               <div>
                   <div class="top_alert">
                    <div class="group">
                        <div>
                            <div class="global_alert">
                                <div class="alert alert_info alert_large">
                                    <span class="alert_icon">
                                        <svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" style="user-select: auto;">
                                            <path d="M14.25 15.75h-.75a.75.75 0 0 1-.75-.75v-3.75a1.5 1.5 0 0 0-1.5-1.5h-.75a.75.75 0 0 0 0 1.5h.75V15a2.25 2.25 0 0 0 2.25 2.25h.75a.75.75 0 0 0 0-1.5zM11.625 6a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z" style="user-select: auto;"></path>
                                        </svg>
                                    </span>
                                    <div class="alert_description">
                                        <span class="alert_title">파트너 신원 인증 양식(KYP) 작성</span>
                                        <p class="alert_text">
                                            <span>다수의 법률 및 규제를 준수하기 위해 저희는 모든 숙소 파트너님께 몇 가지 정보를 작성해주실 것을 요청하고 있습니다. 자세한 내용은 <a href="#">파트너 지원 페이지</a>에서 확인하시기 바랍니다.</span>
                                        </p>
                                        <a href="#" class="button button_primary">
                                            <span class="button_text">작성 완료하기</span>
                                        </a>
                                    </div>
                                </div>    
                            </div>    
                        </div>    
                    </div>    
                   </div>
               </div>
               <main class="main" style="padding-bottom: 66px;">
                    <div class="main_container main_container_center">
                        <div class="page_header">
                            <h1 class="header_title"><span>예약</span></h1>
                            <div class="header_actions">
                                <a class="header_action_button">
                                    <svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" width="16" focusable="false" height="16" class="file_download_icon" style="user-select: auto;">
                                        <path d="M19 9h-4V3H9v6H5l7 7 7-7zM5 18v2h14v-2H5z" style="user-select: auto;"></path>
                                    </svg>
                                    다운로드
                                </a>
                                <a class="header_action_button" href="javascript:window.print()">
                                    <svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" width="16" focusable="false" height="16" class="print_icon" style="user-select: auto;">
                                        <path d="M19 8H5c-1.66 0-3 1.34-3 3v6h4v4h12v-4h4v-6c0-1.66-1.34-3-3-3zm-3 11H8v-5h8v5zm3-7c-.55 0-1-.45-1-1s.45-1 1-1 1 .45 1 1-.45 1-1 1zm-1-9H6v4h12V3z" style="user-select: auto;"></path>
                                    </svg>
                                    <span>예약 리스트 인쇄</span>    
                                </a>
                            </div>
                        </div>
                        <form method="post" class="filter_wrapper">
                            <div class="filter_row">
                                <fieldset>
                                    <div class="group_inline">
                                        <div class="form_group">
                                            <label>날짜 기준</label>
                                            <div class="input_select">
                                                <select class="form_control">
                                                    <option value="#">예약</option>
                                                    <option value="#">체크인</option>
                                                    <option value="#">체크아웃</option>
                                                    <option value="#">인보이스</option>
                                                    <option value="#">숙박</option>
                                                </select>
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="input_select_icon" style="user-select: auto;">
                                                    <path d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z" style="user-select: auto;"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <div class="datepicker_wrap">
                                            <div class="date_form_group">
                                                <label>부터</label>
                                                <input type="datepicker" value="2022-01-22" class="date_form_control">
                                            </div>
                                        </div>
                                        <div class="datepicker_wrap">
                                            <div class="date_form_group">
                                                <label>까지</label>
                                                <input type="datepicker" value="2022-01-22" class="date_form_control">
                                            </div>    
                                        </div>
                                        <button type="button" class="button button_primary button_align">
                                            <span class="button_text"><span>검색</span></span>     
                                        </button>
                                    </div>
                                </fieldset>
                            </div>
                        </form>
                        <div class="reservation_table_wrapper spacer">
                            <table class="reservation_table">
                                <thead class="table_head">
                                    <tr clas="table_row">
                                        <th class="table_cell">
                                            <button class="column_sort"><span>투숙객 이름</span></button>
                                        </th>
                                        <th class="table_cell">
                                            <button class="column_sort">
                                                <span>체크인</span>
                                                <svg width="12" height="12" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" class="column_sort_icon" style="user-select: auto;">
                                                    <path d="M4 12l1.41 1.41L11 7.83V20h2V7.83l5.58 5.59L20 12l-8-8-8 8z" style="user-select: auto;"></path>
                                                </svg>
                                            </button>
                                        </th>
                                        <th class="table_cell">
                                            <button class="column_sort">
                                                <span>체크아웃</span>
                                            </button>
                                        </th>
                                        <th class="table_cell">
                                            <button class="column_sort">
                                                <span>객실</span>
                                            </button>
                                        </th>
                                        <th class="table_cell">
                                            <button class="column_sort">
                                                <span>예약 날짜</span>
                                            </button>
                                        </th>
                                        <th class="table_cell">
                                            <button class="column_sort">
                                                <span>예약 상태</span>
                                            </button>
                                        </th>
                                        <th class="table_cell">
                                            <button class="column_sort">
                                                <span>요금</span>
                                            </button>
                                        </th>
                                        <th class="table_cell">
                                            <button class="column_sort">
                                                <span>수수료</span>
                                            </button>
                                        </th>
                                        <th class="table_cell">
                                            <button class="column_sort">
                                                <span>예약 번호</span>
                                            </button>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody class="table_body">
                                <c:forEach var="ReservationVO" items="${reservation}">
                                    <tr class="table_row">
                                        <th class="table_cell_head">                    
                                            <a href="${contextPath}/details.pdo?reservation_number=${ReservationVO.reservation_number}" class="table_link"><span>${ReservationVO.lastname}${ReservationVO.firstname}</span></a>
                                            <span class="font_caption"><span>투숙객 1명</span></span>
                                            <div><a href="#" class="font_caption font_color">
                                                <svg data-v-18ad7ee8="" width="14" height="14" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" class="msg_icon" style="user-select: auto;">
                                                    <path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z" style="user-select: auto;"></path>
                                                </svg>
                                                <span class="font_color">답변이 필요한 메시지 1건</span>
                                            </a></div>
                                        </th>                                        
                                        	<td class="table_cell" data-heading="체크인"><span>${ReservationVO.checkin_date}</span></td>
                                        	<td class="table_cell" data-heading="체크아웃"><span>${ReservationVO.checkout_date}</span></td>
                                        	<td class="table_cell" data-heading="객실"><span>${ReservationVO.type}</span></td>
                                        	<td class="table_cell" data-heading="예약 날짜"><span>${ReservationVO.reservation_date}</span></td>
                                        	<c:choose>
                                        	<c:when test="${ReservationVO.status eq true}">
                                        		<td class="table_cell" data-heading="예약 상태"><div class="reservation_status"><span>정상</span></td>
                                        	</c:when>
                                        	<c:otherwise>
                                        		<td class="table_cell" data-heading="예약 상태"><div class="reservation_status"><span>취소</span></td>
                                        	</c:otherwise>
                                        	</c:choose>
                                        	<td class="table_cell" data-heading="요금"><span><fmt:formatNumber value="${ReservationVO.price}" type="currency"/></span></td>
                                        	<td class="table_cell" data-heading="수수료"><span><fmt:formatNumber value="${ReservationVO.commission}" type="currency"/></span></td>
                                        	<td class="table_cell" data-heading="예약 번호"><a href="${contextPath}/details.pdo?reservation_number=${ReservationVO.reservation_number}" class="table_link">${ReservationVO.reservation_number}</a></td>     
                                    </tr>
                                   </c:forEach>
                                </tbody>
                                <tfoot class="table_foot">
                                    <tr class="table_row">
                                        <td class="text_right table_cell" colspan="9">
                                            <div>
                                                <span class="totals_spacing">
                                                    <span>수수료: </span>
                                                    <span>₩27,000</span>
                                                </span>
                                                <div class="font_strong">
                                                    <span>총 금액: </span>
                                                    <span>₩180,000</span>
                                                    <div class="item_inline">
                                                        <svg data-v-10eccdf1="" width="20" height="20" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" class="help_icon" style="user-select: auto;">
                                                            <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 17h-2v-2h2v2zm2.07-7.75l-.9.92C13.45 12.9 13 13.5 13 15h-2v-.5c0-1.1.45-2.1 1.17-2.83l1.24-1.26c.37-.36.59-.86.59-1.41 0-1.1-.9-2-2-2s-2 .9-2 2H8c0-2.21 1.79-4 4-4s4 1.79 4 4c0 .88-.36 1.68-.93 2.25z" style="user-select: auto;"></path>
                                                        </svg>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>    
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="table_pagination">
                            <div class="pagination_nav">
                                <ul class="pagination_list">
                                	<!-- 이전 -->
                                	<c:if test="${paging.currentPage eq 1}">
                                    <li class="pagination_item pagination_prev pagination_disabled">
                                        <a class="pagination_link">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20" height="20" class="pagination_icon" style="user-select: auto;">
                                                <path d="M14.55 18a.74.74 0 0 1-.53-.22l-5-5A1.08 1.08 0 0 1 8.7 12a1.1 1.1 0 0 1 .3-.78l5-5a.75.75 0 0 1 1.06 0 .74.74 0 0 1 0 1.06L10.36 12l4.72 4.72a.74.74 0 0 1 0 1.06.73.73 0 0 1-.53.22zm-4.47-5.72zm0-.57z" style="user-select: auto;"></path>
                                            </svg>
                                            <span class="pagination_direction">이전</span>
                                        </a>
                                    </li>
                                    </c:if>
                                    <c:if test="${paging.currentPage ne 1}">
                                    <c:url var="before" value="/reservation.pdo">
                                    	<c:param name="currentPage" value="${paging.currentPage -1}"/>
                                    </c:url>
                                    <li class="pagination_item pagination_prev pagination">
                                        <a href="${before}" class="pagination_link">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20" height="20" class="pagination_icon" style="user-select: auto;">
                                                <path d="M14.55 18a.74.74 0 0 1-.53-.22l-5-5A1.08 1.08 0 0 1 8.7 12a1.1 1.1 0 0 1 .3-.78l5-5a.75.75 0 0 1 1.06 0 .74.74 0 0 1 0 1.06L10.36 12l4.72 4.72a.74.74 0 0 1 0 1.06.73.73 0 0 1-.53.22zm-4.47-5.72zm0-.57z" style="user-select: auto;"></path>
                                            </svg>
                                            <span class="pagination_direction">이전</span>
                                        </a>
                                    </li>
                                    </c:if>
                                    <!-- 현재 페이지 -->
                                    <c:forEach var="page" begin="${paging.startPage}" end="${paging.endPage}">
                                    	<c:if test="${page eq paging.currentPage}">
                                    		<li class="pagination_current_page"><span>${page} 페이지</span></li>
                                    	</c:if>
                                    </c:forEach>
                                    <!-- 다음 -->
                                    <c:if test="${paging.currentPage eq paging.maxPage}">
                                    <li class="pagination_item pagination_next pagination_disabled">
                                        <a class="pagination_link">
                                            <span class="pagination_direction">다음</span>
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20" height="20" class="pagination_icon" style="user-select: auto;">
                                                <path d="M9.45 6c.2 0 .39.078.53.22l5 5c.208.206.323.487.32.78a1.1 1.1 0 0 1-.32.78l-5 5a.75.75 0 0 1-1.06 0 .74.74 0 0 1 0-1.06L13.64 12 8.92 7.28a.74.74 0 0 1 0-1.06.73.73 0 0 1 .53-.22zm4.47 5.72zm0 .57z" style="user-select: auto;"></path>
                                            </svg>    
                                        </a>
                                    </li>
                                    </c:if>
                                    <c:if test="${paging.currentPage ne paging.maxPage}">
                                    <c:url var="after" value="reservation.pdo">
                                    	<c:param name="currentPage" value="${paging.currentPage + 1}"/>
                                    </c:url>
                                    <li class="pagination_item pagination_next pagination">
                                        <a href="${after}" class="pagination_link">
                                            <span class="pagination_direction">다음</span>
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20" height="20" class="pagination_icon" style="user-select: auto;">
                                                <path d="M9.45 6c.2 0 .39.078.53.22l5 5c.208.206.323.487.32.78a1.1 1.1 0 0 1-.32.78l-5 5a.75.75 0 0 1-1.06 0 .74.74 0 0 1 0-1.06L13.64 12 8.92 7.28a.74.74 0 0 1 0-1.06.73.73 0 0 1 .53-.22zm4.47 5.72zm0 .57z" style="user-select: auto;"></path>
                                            </svg>    
                                        </a>
                                    </li>
                                    </c:if>
                                </ul>
                            </div>
                            <div class="pagination_control">
                                <div class="pagination_select">
                                    <label></label>
                                    <div class="input_select">
                                        <select class="form_control pagination_control select_width">
                                            <option value="5">5개씩 보기</option>
                                            <option value="10" selected>10개씩 보기</option>
                                        </select>
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="input_select_icon" style="user-select: auto;">
                                            <path d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z" style="user-select: auto;"></path>
                                        </svg>
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
</body>
</html>
