<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/partner/css/home.css">
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
                                                  <h1 class="welcome_h1">이제 Booking.com으로 <span>${hotel.hotelname}<span></span> 예약이 가능합니다.</h1>
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
                                               <li class="tab_item_hidden">
                                                    <button class="tab_link">
                                                        <div class="group_inline">
                                                            <svg focusable="false" aria-hidden="true" height="20" role="presentation" viewBox="0 0 24 24" width="20" fill="#6B6B6B" class="homepage-tab-item-icon bk-icon -material-ic_timeline" color="#6B6B6B" style="user-select: auto;">
                                                                <path d="M23 8c0 1.1-.9 2-2 2-.18 0-.35-.02-.51-.07l-3.56 3.55c.05.16.07.34.07.52 0 1.1-.9 2-2 2s-2-.9-2-2c0-.18.02-.36.07-.52l-2.55-2.55c-.16.05-.34.07-.52.07s-.36-.02-.52-.07l-4.55 4.56c.05.16.07.33.07.51 0 1.1-.9 2-2 2s-2-.9-2-2 .9-2 2-2c.18 0 .35.02.51.07l4.56-4.55C8.02 9.36 8 9.18 8 9c0-1.1.9-2 2-2s2 .9 2 2c0 .18-.02.36-.07.52l2.55 2.55c.16-.05.34-.07.52-.07s.36.02.52.07l3.55-3.56C19.02 8.35 19 8.18 19 8c0-1.1.9-2 2-2s2 .9 2 2z" style="user-select: auto;"></path>
                                                            </svg>
                                                        <span class="tab_item_wrapper"><span>데이터</span></span> 
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
                                                                                                <div class="input_select">
                                                                                                    <select class="form_control">
                                                                                                        <option>지난 7일</option>
                                                                                                        <option>어제</option>
                                                                                                        <option selected="selected">오늘</option>
                                                                                                        <option>내일</option>
                                                                                                        <option>향후 7일</option>
                                                                                                        <option>향후 30일</option>
                                                                                                        <option>향후 60일</option>
                                                                                                        <option>다른 날짜</option>    
                                                                                                    </select>
                                                                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="input_select_icon" style="user-select: auto;">
                                                                                                        <path d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z" style="user-select: auto;"></path>
                                                                                                    </svg>
                                                                                                </div>
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
                                                                                            <div class="empty_state">
                                                                                                <svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="empty_state_icon">
                                                                                                    <path d="M13.629 22.5H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v11.379a.75.75 0 0 1-.22.53L14.16 22.28a.75.75 0 0 1-.53.219zm0 1.5a2.25 2.25 0 0 0 1.59-.659l8.122-8.122A2.25 2.25 0 0 0 24 13.63V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h11.379zM15 23.115V15.75a.75.75 0 0 1 .75-.75h7.365a.75.75 0 0 0 0-1.5H15.75a2.25 2.25 0 0 0-2.25 2.25v7.365a.75.75 0 0 0 1.5 0z"></path>
                                                                                                </svg>
                                                                                                <p class="empty_state_text"><span>선택하신 기간에는 체크인 건이 없습니다.</span></p>    
                                                                                            </div>
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
                                                                    <div class="empty_state">
                                                                        <svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="empty_state_icon">
                                                                            <path d="M13.629 22.5H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v11.379a.75.75 0 0 1-.22.53L14.16 22.28a.75.75 0 0 1-.53.219zm0 1.5a2.25 2.25 0 0 0 1.59-.659l8.122-8.122A2.25 2.25 0 0 0 24 13.63V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h11.379zM15 23.115V15.75a.75.75 0 0 1 .75-.75h7.365a.75.75 0 0 0 0-1.5H15.75a2.25 2.25 0 0 0-2.25 2.25v7.365a.75.75 0 0 0 1.5 0z"></path>
                                                                        </svg>
                                                                        <p class="empty_state_text"><span>지난 60일 간 접수된 예약이 없습니다.</span></p>    
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
                                                                                    <span class="display_one"><span>답변하지 않은 메시지</span></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="homepage_header_text">
                                                                                <a href="#" class="show_link"><span>메시지 모두 보기</span></a>
                                                                            </div>    
                                                                        </div>
                                                                        <div class="spacer"></div>
                                                                    </div>
                                                                    <div class="empty_state">
                                                                        <svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="empty_state_icon">
                                                                            <path d="M13.629 22.5H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v11.379a.75.75 0 0 1-.22.53L14.16 22.28a.75.75 0 0 1-.53.219zm0 1.5a2.25 2.25 0 0 0 1.59-.659l8.122-8.122A2.25 2.25 0 0 0 24 13.63V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h11.379zM15 23.115V15.75a.75.75 0 0 1 .75-.75h7.365a.75.75 0 0 0 0-1.5H15.75a2.25 2.25 0 0 0-2.25 2.25v7.365a.75.75 0 0 0 1.5 0z"></path>
                                                                        </svg>
                                                                        <p class="empty_state_text"><span>답변하지 않은 메시지가 없습니다.</span></p>    
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
                                                                                    <span class="display_one"><span>최근 이용후기</span></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="homepage_header_text">
                                                                                <a href="#" class="show_link"><span>이용후기 모두 보기</span></a>
                                                                            </div>    
                                                                        </div>
                                                                        <div class="spacer"></div>
                                                                    </div>
                                                                    <div class="empty_state">
                                                                        <svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="empty_state_icon">
                                                                            <path d="M13.629 22.5H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v11.379a.75.75 0 0 1-.22.53L14.16 22.28a.75.75 0 0 1-.53.219zm0 1.5a2.25 2.25 0 0 0 1.59-.659l8.122-8.122A2.25 2.25 0 0 0 24 13.63V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h11.379zM15 23.115V15.75a.75.75 0 0 1 .75-.75h7.365a.75.75 0 0 0 0-1.5H15.75a2.25 2.25 0 0 0-2.25 2.25v7.365a.75.75 0 0 0 1.5 0z"></path>
                                                                        </svg>
                                                                        <p class="empty_state_text"><span>최근 작성된 이용후기가 없습니다.</span></p>    
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
                        <div class="main_side_bar">
                            <div>
                                <div>
                                    <div>
                                        <div class="module_wrap">
                                            <h3 class="module_title"><span>시작하기</span></h3>
                                            <p class="module_title_sub"><span>다가오는 첫 번째 예약부터 성공적으로 관리하실 수 있도록 아래와 같이 절차를 간단하게 설명해드리겠습니다.</span></p>
                                            <div class="module_item">
                                                <img src="https://q-xx.bstatic.com/backend_static/common/img/dashboard/addphotos_icon@2x/d7046b4d351fea822a949281759ba1686d881898.png" class="module_image" style="user-select: auto;">
                                                <div class="module_body">
                                                    <div class="module_text">사진을 4장 더 올려주세요.</div>
                                                    <div>
                                                        <a href="#" class="module_button">사진 4장 추가하기</a>    
                                                    </div>
                                                </div>
                                                <div class="module_close">
                                                    <svg viewBox="0 0 24 24" width="20" aria-hidden="true" height="20" role="presentation" fill="currentColor" focusable="false" class="bk-icon -material-ic_close" color="currentColor" style="user-select: auto;">
                                                        <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" style="user-select: auto;"></path>
                                                    </svg>
                                                </div>
                                            </div>
                                            <div class="module_item">
                                                <img src="https://r-xx.bstatic.com/backend_static/common/img/dashboard/setprice_icon@2x/3c0d485b988415bb0977f6fa1c2fe7854e5c00f7.png" class="module_image" style="user-select: auto;">
                                                <div class="module_body">
                                                    <div class="module_text">경쟁사와 요금 비교</div>
                                                    <div>
                                                        <a href="#" class="module_action">다른 숙소 살펴보기</a>
                                                    </div>
                                                </div>
                                                <div class="module_close">
                                                    <svg viewBox="0 0 24 24" width="20" aria-hidden="true" height="20" role="presentation" fill="currentColor" focusable="false" class="bk-icon -material-ic_close" color="currentColor" style="user-select: auto;">
                                                        <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" style="user-select: auto;"></path>
                                                    </svg>
                                                </div>   
                                            </div>
                                            <div class="module_item">
                                                <img src="https://q-xx.bstatic.com/backend_static/common/img/dashboard/addfacilities_icon@2x/5a276eaab16127258582f79c1ff08563cd02e420.png" class="module_image" style="user-select: auto;">
                                                <div class="module_body">
                                                    <div class="module_text">인기 편의시설을 체크해주세요</div>
                                                    <div>
                                                        <a href="#" class="module_action">아직 확인하지 않은 편의시설: 8개</a>
                                                    </div>
                                                </div>
                                                <div class="module_close">
                                                    <svg viewBox="0 0 24 24" width="20" aria-hidden="true" height="20" role="presentation" fill="currentColor" focusable="false" class="bk-icon -material-ic_close" color="currentColor" style="user-select: auto;">
                                                        <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" style="user-select: auto;"></path>
                                                    </svg>
                                                </div>   
                                            </div>
                                            <div class="module_item">
                                                <img src="https://q-xx.bstatic.com/backend_static/common/img/dashboard/previewProperty_icon@2x/82f0a8591b9a972ce1bb0478ea6c8dcedfa5fb95.png" class="module_image" style="user-select: auto;">
                                                <div class="module_body">
                                                    <div class="module_text">Booking.com에서 숙소 확인</div>
                                                    <div>
                                                        <a href="#" class="module_action">Booking.com에서 숙소 확인하기</a>
                                                    </div>
                                                </div>
                                                <div class="module_close">
                                                    <svg viewBox="0 0 24 24" width="20" aria-hidden="true" height="20" role="presentation" fill="currentColor" focusable="false" class="bk-icon -material-ic_close" color="currentColor" style="user-select: auto;">
                                                        <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" style="user-select: auto;"></path>
                                                    </svg>
                                                </div>   
                                            </div>
                                            <div class="module_item">
                                                <img src="https://q-xx.bstatic.com/backend_static/common/img/dashboard/checkCalendar_icon@2x/49323e446dfc964df4249a2bb71a8b1d15fbe0d8.png" class="module_image" style="user-select: auto;">
                                                <div class="module_body">
                                                    <div class="module_text">오픈 날짜 확인</div>
                                                    <div>
                                                        <a href="#" class="module_action">캘린더 확인하기</a>
                                                    </div>
                                                </div>
                                                <div class="module_close">
                                                    <svg viewBox="0 0 24 24" width="20" aria-hidden="true" height="20" role="presentation" fill="currentColor" focusable="false" class="bk-icon -material-ic_close" color="currentColor" style="user-select: auto;">
                                                        <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" style="user-select: auto;"></path>
                                                    </svg>
                                                </div>   
                                            </div>
                                            <div class="module_item">
                                                <img src="https://r-xx.bstatic.com/backend_static/common/img/dashboard/hostprofile_icon@2x/4256172c991c4a918ea8e2e87e38d1d9e3f8e811.png" class="module_image" style="user-select: auto;">
                                                <div class="module_body">
                                                    <div class="module_text">본인 소개를 부탁드립니다</div>
                                                    <div>
                                                        <a href="#" class="module_action">프로필 만들기</a>
                                                    </div>
                                                </div>
                                                <div class="module_close">
                                                    <svg viewBox="0 0 24 24" width="20" aria-hidden="true" height="20" role="presentation" fill="currentColor" focusable="false" class="bk-icon -material-ic_close" color="currentColor" style="user-select: auto;">
                                                        <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" style="user-select: auto;"></path>
                                                    </svg>
                                                </div>   
                                            </div>
                                            <div class="module_item">
                                                <img src="https://r-xx.bstatic.com/backend_static/common/img/dashboard/pulse_icon@2x/25955ee0d00bf2e2013e0030f5b39e7cea498c08.png" class="module_image" style="user-select: auto;">
                                                <div class="module_body">
                                                    <div class="module_text">언제 어디서나 손쉬운 예약 관리</div>
                                                    <div>
                                                        <a href="#" class="module_action">무료 앱 다운로드</a>
                                                    </div>
                                                </div>
                                                <div class="module_close">
                                                    <svg viewBox="0 0 24 24" width="20" aria-hidden="true" height="20" role="presentation" fill="currentColor" focusable="false" class="bk-icon -material-ic_close" color="currentColor" style="user-select: auto;">
                                                        <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" style="user-select: auto;"></path>
                                                    </svg>
                                                </div>   
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tour_alert">
                                    <div>
                                        <h3 class="title_with_icon">
                                            <svg role="presentation" fill="#6B6B6B" focusable="false" width="16" viewBox="0 0 24 24" aria-hidden="true" height="16" class="bell_icon" style="user-select: auto;">
                                                <path d="M9.28 21.961a2.837 2.837 0 0 0 5.445 0 .75.75 0 1 0-1.44-.422 1.337 1.337 0 0 1-2.565 0 .75.75 0 1 0-1.44.422zM12.75 3V.75a.75.75 0 0 0-1.5 0V3a.75.75 0 0 0 1.5 0zm-.75.75a6.75 6.75 0 0 1 6.75 6.75c0 3.154.29 5.436.785 6.994.323 1.02.684 1.59.995 1.84L21 18H3l.59 1.212c.248-.315.572-.958.88-2 .49-1.66.78-3.872.78-6.712A6.75 6.75 0 0 1 12 3.75zm0-1.5a8.25 8.25 0 0 0-8.25 8.25c0 2.702-.272 4.772-.72 6.288-.254.864-.493 1.336-.62 1.5A.75.75 0 0 0 3 19.5h18c.708 0 1.022-.892.47-1.335.019.016-.008-.015-.07-.113-.14-.223-.29-.553-.435-1.012-.443-1.396-.715-3.529-.715-6.54A8.25 8.25 0 0 0 12 2.25z" style="user-select: auto;"></path>
                                            </svg>
                                            <span>알림</span>
                                        </h3>
                                        <div class="font_caption">
                                            <span>알림 설정 완료! 새로운 처리사항이 발생할 경우 여기에 알림이 나타납니다.</span>
                                            <div class="spacer"></div>
                                        </div>
                                        <hr class="divider">
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