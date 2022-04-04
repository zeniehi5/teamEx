<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/partner/css/home.css">
    <title>${hotel.hotelname}</title>
</head>
<body>
    <div class="main-container">
        <div class="content">
            <div class="home">
            	<jsp:include page="/WEB-INF/partner/header.jsp"/>
                <main class="main">
                   <div class="main_container">
                      <div class="grid_container">
                        <div class="main_column">
                            <div class="center">
                                <div class="grid_column">
                                    <div>
                                        <div class="welcome_message">
                                            <div class="message_container">
                                               <div class="message_body">
                                                  <h1 class="welcome_h1">이제 booqueen.com으로 <span>${hotel.hotelname}<span></span> 예약이 가능합니다.</h1>
                                                  <p class="welcome_p"><span>여기서 고객에게 제공될 정보부터 객실 재고까지 순소 운영 전반을 관리하실 수 있습니다.</span></p>
                                                  <p class="welcome_p"><span>빠른 시일 내로 예약을 접수하기 위해 처리되어야 할 사항을 이 페이지 우측에 표시해드렸습니다.</span></p>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="page_header">
                                        <h1 class="page_header_title">${hotel.hotelname} <span class="badge"><span>공개/예약 가능</span></span></h1>
                                    </div>
                                    <div class="main_tab_container">
                                        <div class="tab">
                                            <ul class="tab_nav">
                                               <li class="tab_item">
                                                   <button class="tab_link">
                                                       <div class="group_inline">
                                                            <svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" fill="#6B6B6B" height="20" focusable="false" width="20" class="homepage-tab-item-icon bk-icon -material-ic_today" color="#6B6B6B" style="user-select: auto;">
                                                                <path d="M19 3h-1V1h-2v2H8V1H6v2H5c-1.11 0-1.99.9-1.99 2L3 19c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V8h14v11zM7 10h5v5H7z" style="user-select: auto;"></path>
                                                            </svg>
                                                            <span class="tab_item_wrapper"><span>주요 체크사항</span></span>
                                                       </div>
                                                   </button>
                                               </li>
                                            </ul>
                                            <div class="tab_content">
                                                <div class="spacer"></div>
                                                <div class="hompage_operation_tab">
                                                    <div class="group_large">
                                                        <div>
                                                                <div>
                                                                    <div class="spacer"></div>
                                                                    <div class="homepage_wrapper">
                                                                        <div class="homepage_wrapper_content">
                                                                            <header class="homepage_wrapper_header">
                                                                                <div class="grid_align_center">
                                                                                    <div class="homepage_grid_column">
                                                                                        <div class="group_inline">
                                                                                            <span class="display_one"><span>예약 개요</span></span>
                                                                                            <div class="form_group">
                                                                                            </div>
                                                                                        </div>
                                                                                        
                                                                                    </div>
                                                                                    <div class="homepage_header_text">
                                                                                        <a href="${contextPath}/reservation.pdo" class="show_link"><span>예약 모두 보기</span></a>
                                                                                    </div>    
                                                                                </div>
                                                                            </header>
                                                                            <div>
                                                                                <div class="homepage_activity_tab">
                                                                                    <ul class="tab_navbar">
                                                                                        <li area-selected="true" class="list_tab_item">
                                                                                            <button class="list_tab_selected">
                                                                                                <div class="overview_wrapper">
                                                                                                    <span>체크인</span>
                                                                                                    <span><span class="homepage_custom_bubble"> 0 </span></span>
                                                                                                </div>
                                                                                            </button>
                                                                                        </li>
                                                                                        <li class="list_tab_item">
                                                                                            <button class="list_tab_link">
                                                                                                <div class="overview_wrapper">
                                                                                                    <span>체크아웃</span>
                                                                                                    <span><span class="homepage_custom_bubble_unselected"> 0 </span></span>
                                                                                                </div>    
                                                                                            </button>
                                                                                        </li>
                                                                                        <li class="list_tab_item">
                                                                                            <button class="list_tab_link">
                                                                                                <div class="overview_wrapper">
                                                                                                    <span>숙박 중</span>
                                                                                                    <span><span class="homepage_custom_bubble_unselected"> 0 </span></span>
                                                                                                </div>    
                                                                                            </button>
                                                                                        </li>
                                                                                        <li class="list_tab_item">
                                                                                            <button class="list_tab_link">
                                                                                                <div class="overview_wrapper">
                                                                                                    <span>고객 요청</span>
                                                                                                    <span><span class="homepage_custom_bubble_unselected"> 0 </span></span>
                                                                                                </div>    
                                                                                            </button>
                                                                                        </li>
                                                                                    </ul>
                                                                                    <div class="reservation_tab_content">
                                                                                        <div>
                                                                                        <c:choose>
                                                                    					<c:when test="${empty checkin}">
                                                                                            <div class="empty_state">
                                                                                                <svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="empty_state_icon">
                                                                                                    <path d="M13.629 22.5H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v11.379a.75.75 0 0 1-.22.53L14.16 22.28a.75.75 0 0 1-.53.219zm0 1.5a2.25 2.25 0 0 0 1.59-.659l8.122-8.122A2.25 2.25 0 0 0 24 13.63V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h11.379zM15 23.115V15.75a.75.75 0 0 1 .75-.75h7.365a.75.75 0 0 0 0-1.5H15.75a2.25 2.25 0 0 0-2.25 2.25v7.365a.75.75 0 0 0 1.5 0z"></path>
                                                                                                </svg>
                                                                                                <p class="empty_state_text"><span>선택하신 기간에는 체크인 건이 없습니다.</span></p>    
                                                                                            </div>
                                                                                        </c:when>
                                                                                        <c:otherwise>
                                                                                        <div>
                                                                    					<table class="reservation_list">
                                                                    						<tr>
                                                                    							<th>예약번호</th>
                                                                    							<th>예약자명</th>
                                                                    							<th>객실유형</th>
                                                                    							<th>요금</th>
                                                                    						</tr>
                                                                    						<c:forEach var="checkin" items="${checkin}" end="2">
                                                                    						<tr>
                                                                    							<td>${checkin.reservation_number}</td>
                                                                    							<td>${checkin.lastname}${checkin.firstname}</td>
                                                                    							<td>${checkin.type}</td>
                                                                    							<td>&#8361;<fmt:formatNumber value="${checkin.price}" type="number"/></td>
                                                                    						</tr>
                                                                    						</c:forEach>
                                                                    					</table>
                                                                    					</div>
                                                                                        </c:otherwise>
                                                                                        </c:choose>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>        
                                                                    </div>
                                                                </div>
                                                        </div>
                                                        <div>
                                                            <div class="selectable_card_wrapper">
                                                                <div class="wrapper_content">
                                                                    <div class="card_header">
                                                                        <div class="grid_align_center">
                                                                            <div class="homepage_grid_column">
                                                                                <div class="group_inline">
                                                                                    <span class="display_one"><span>최근 예약</span></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="homepage_header_text">
                                                                                <a href="${contextPath}/reservation.pdo" class="show_link"><span>예약 더 보기</span></a>
                                                                            </div>    
                                                                        </div>
                                                                        <div class="spacer"></div>
                                                                    </div>
                                                                    <c:choose>
                                                                    <c:when test="${empty reservation}">
                                                                    <div class="empty_state">
                                                                        <svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="empty_state_icon">
                                                                            <path d="M13.629 22.5H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v11.379a.75.75 0 0 1-.22.53L14.16 22.28a.75.75 0 0 1-.53.219zm0 1.5a2.25 2.25 0 0 0 1.59-.659l8.122-8.122A2.25 2.25 0 0 0 24 13.63V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h11.379zM15 23.115V15.75a.75.75 0 0 1 .75-.75h7.365a.75.75 0 0 0 0-1.5H15.75a2.25 2.25 0 0 0-2.25 2.25v7.365a.75.75 0 0 0 1.5 0z"></path>
                                                                        </svg>
                                                                        <p class="empty_state_text"><span>접수된 예약이 없습니다.</span></p>    
                                                                    </div>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                    <div>
                                                                    	<table class="reservation_list">
                                                                    		<tr>
                                                                    			<th>예약번호</th>
                                                                    			<th>예약자명</th>
                                                                    			<th>체크인</th>
                                                                    			<th>체크아웃</th>
                                                                    			<th>요금</th>
                                                                    		</tr>
                                                                    		<c:forEach var="ReservationVO" items="${reservation}" end="2">
                                                                    		<tr>
                                                                    			<td>${ReservationVO.reservation_number}</td>
                                                                    			<td>${ReservationVO.lastname}${ReservationVO.firstname}</td>
                                                                    			<td>${ReservationVO.checkin_date}</td>
                                                                    			<td>${ReservationVO.checkout_date}</td>
                                                                    			<td>&#8361;<fmt:formatNumber value="${ReservationVO.price}" type="number"/></td>
                                                                    		</tr>
                                                                    		</c:forEach>
                                                                    	</table>
                                                                    </div>
                                                                    </c:otherwise>
                                                                    </c:choose>
                                                                </div>
                                                            </div>    
                                                        </div>
                                                        <div>
                                                            <div class="selectable_card_wrapper">
                                                                <div class="wrapper_content">
                                                                    <div class="card_header">
                                                                        <div class="grid_align_center">
                                                                            <div class="homepage_grid_column">
                                                                                <div class="group_inline">
                                                                                    <span class="display_one"><span>최근 메시지</span></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="homepage_header_text">
                                                                                <a href="${contextPath}/message.pdo" class="show_link"><span>메시지 모두 보기</span></a>
                                                                            </div>    
                                                                        </div>
                                                                        <div class="spacer"></div>
                                                                    </div>
                                                                    <c:choose>
                                                                    <c:when test="${empty messageList}">
                                                                    <div class="empty_state">
                                                                        <svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="empty_state_icon">
                                                                            <path d="M13.629 22.5H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v11.379a.75.75 0 0 1-.22.53L14.16 22.28a.75.75 0 0 1-.53.219zm0 1.5a2.25 2.25 0 0 0 1.59-.659l8.122-8.122A2.25 2.25 0 0 0 24 13.63V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h11.379zM15 23.115V15.75a.75.75 0 0 1 .75-.75h7.365a.75.75 0 0 0 0-1.5H15.75a2.25 2.25 0 0 0-2.25 2.25v7.365a.75.75 0 0 0 1.5 0z"></path>
                                                                        </svg>
                                                                        <p class="empty_state_text"><span>답변하지 않은 메시지가 없습니다.</span></p>    
                                                                    </div>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                    <div>
                                                                    	<table class="reservation_list">
                                                                    		<tr>
                                                                    			<th>예약자 ID</th>
                                                                    			<th>보낸 날짜</th>
                                                                    			<th>내용</th>
                                                                    		</tr>
                                                                    		<c:forEach var="ChatVO" items="${messageList}" end="2">
                                                                    		<tr>
                                                                    			<td>${ChatVO.userid}</td>
                                                                    			<td>${ChatVO.send_date}</td>
                                                                    			<td>${ChatVO.content}</td>
                                                                    		</tr>
                                                                    		</c:forEach>
                                                                    	</table>
                                                                    </div>
                                                                    </c:otherwise>
                                                                    </c:choose>
                                                                </div>
                                                            </div>    
                                                        </div>
                                                        <div>
                                                            <div class="selectable_card_wrapper">
                                                                <div class="wrapper_content">
                                                                    <div class="card_header">
                                                                        <div class="grid_align_center">
                                                                            <div class="homepage_grid_column">
                                                                                <div class="group_inline">
                                                                                    <span class="display_one"><span>최근 이용후기</span></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="homepage_header_text">
                                                                                <a href="${contextPath}/reviews.pdo" class="show_link"><span>이용후기 모두 보기</span></a>
                                                                            </div>    
                                                                        </div>
                                                                        <div class="spacer"></div>
                                                                    </div>
                                                                    <c:choose>
                                                                    <c:when test="${empty review}">
                                                                    <div class="empty_state">
                                                                        <svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="empty_state_icon">
                                                                            <path d="M13.629 22.5H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v11.379a.75.75 0 0 1-.22.53L14.16 22.28a.75.75 0 0 1-.53.219zm0 1.5a2.25 2.25 0 0 0 1.59-.659l8.122-8.122A2.25 2.25 0 0 0 24 13.63V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h11.379zM15 23.115V15.75a.75.75 0 0 1 .75-.75h7.365a.75.75 0 0 0 0-1.5H15.75a2.25 2.25 0 0 0-2.25 2.25v7.365a.75.75 0 0 0 1.5 0z"></path>
                                                                        </svg>
                                                                        <p class="empty_state_text"><span>최근 작성된 이용후기가 없습니다.</span></p>    
                                                                    </div>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                    <div>
                                                                    	<table class="reservation_list">
                                                                    		<tr>
                                                                    			<th>총점</th>
                                                                    			<th>제목</th>
                                                                    			<th>강점</th>
                                                                    			<th>약점</th>
                                                                    		</tr>
                                                                    		<c:forEach var="review" items="${review}" end="2">
                                                                    		<tr>
                                                                    			<td>${review.score}</td>
                                                                    			<td>${review.title}</td>
                                                                    			<td>${review.strength}</td>
                                                                    			<td>${review.weakness}</td>
                                                                    		</tr>
                                                                    		</c:forEach>
                                                                    	</table>
                                                                    </div>
                                                                    </c:otherwise>
                                                                    </c:choose>
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
                      </div> 
                   </div>
               </main>
               <jsp:include page="/WEB-INF/partner/footer.jsp"/>
            </div>
        </div>
    </div>   
</body>
</html>