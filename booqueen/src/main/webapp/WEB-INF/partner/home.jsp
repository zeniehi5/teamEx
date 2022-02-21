<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/partner/css/home.css">
    <title>Hotel Name</title>
</head>
<body>
    <div class="main-container">
        <div class="content">
            <div class="home">
               <header class="header">
                   <div class="header_container">
                       <section class="logo_container">
                           <a href="#"><img src="${pageContext.request.contextPath}/resources/partner/images/booking_logo_retina.png" class="header_logo"></a>
                           <div class="header_property">Hotel Name - 8126142</div>
                       </section>
                       <div class="side_items">
                           <div class="search_bar">
                               <div class="search_wrap">
                                  <div class="input_container">
                                      <div class="input wrap">
                                          <input class="search_input" type="text" placeholder="예약 검색" autocomplete="off">
                                          <button type="button" class="input_icon">
                                            <svg focusable="false" viewBox="0 0 24 24" role="presentation" aria-hidden="true" width="16" height="16" fill="white" class="ext-search-input__icon ext-search-input__icon--white bk-icon -streamline-magnifying_glass" style="user-select: auto;">
                                                <path d="M17.464 6.56a8.313 8.313 0 1 1-15.302 6.504A8.313 8.313 0 0 1 17.464 6.56zm1.38-.586C16.724.986 10.963-1.339 5.974.781.988 2.9-1.337 8.662.783 13.65c2.12 4.987 7.881 7.312 12.87 5.192 4.987-2.12 7.312-7.881 5.192-12.87zM15.691 16.75l7.029 7.03a.75.75 0 0 0 1.06-1.06l-7.029-7.03a.75.75 0 0 0-1.06 1.06z" style="user-select: auto;"></path>
                                            </svg>
                                          </button>
                                      </div>
                                  </div> 
                               </div>
                           </div>
                           <div class="menu_wrap">
                               <div class="menu_item">
                                   <button class="menu_section">
                                       <div class="menu_avatar">
                                            <svg height="20" fill="currentColor" width="20" aria-hidden="true" role="presentation" focusable="false" viewBox="0 0 24 24" slot="icon" class="ext-action-menu__avatar--icon bk-icon -streamline-question_mark_circle" style="user-select: auto;">
                                                <path d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z" style="user-select: auto;"></path>
                                            </svg>
                                       </div>
                                       <div class="menu_text">호텔명</div>
                                   </button>
                               </div>
                               <div class="menu_item">
                                    <button class="menu_section">
                                        <div class="menu_avatar">
                                            <svg height="20" fill="currentColor" width="20" aria-hidden="true" role="presentation" focusable="false" viewBox="0 0 24 24" slot="icon" class="ext-action-menu__avatar--icon bk-icon -streamline-question_mark_circle" style="user-select: auto;">
                                                <path d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z" style="user-select: auto;"></path>
                                            </svg>
                                        </div>
                                        <div class="menu_text">
                                            <span>헬프</span>
                                        </div>
                                    </button>
                               </div>
                               <div class="menu_item">
                                    <button class="menu_section">
                                        <div class="menu_avatar">
                                            <svg fill="currentColor" height="20" aria-hidden="true" width="20" focusable="false" viewBox="0 0 24 24" role="presentation" slot="icon" class="ext-action-menu__avatar--icon bk-icon -streamline-account_user" style="user-select: auto;">
                                                <path d="M16.5 9.75a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zm1.5 0a6 6 0 1 0-12 0 6 6 0 0 0 12 0zm1.445 10.597c-4.086-4.111-10.732-4.132-14.844-.046l-.046.046a.75.75 0 0 0 1.064 1.058l.04-.04a8.996 8.996 0 0 1 12.722.04.75.75 0 0 0 1.064-1.058zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z" style="user-select: auto;"></path>
                                            </svg>
                                        </div>
                                        <div class="menu_text">
                                            <span>어카운트</span>
                                        </div>
                                    </button>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="header_navigation">
                       <nav class="navigation">
                            <div class="navigation_inner">
                                <div class="navigation_inner_container">
                                    <ul class="item_list">
                                         <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg height="24" fill="currentColor" width="24" aria-hidden="true" role="presentation" viewBox="0 0 24 24" focusable="false" class="bk-icon -streamline-house" style="user-select: auto;">
                                                        <path d="M3 18v3.75A2.25 2.25 0 0 0 5.25 24h4.5a.75.75 0 0 0 .75-.75v-6a.75.75 0 0 1 .75-.75h1.5a.75.75 0 0 1 .75.75v6c0 .414.336.75.75.75h4.5A2.25 2.25 0 0 0 21 21.75V18a.75.75 0 0 0-1.5 0v3.75a.75.75 0 0 1-.75.75h-4.5l.75.75v-6A2.25 2.25 0 0 0 12.75 15h-1.5A2.25 2.25 0 0 0 9 17.25v6l.75-.75h-4.5a.75.75 0 0 1-.75-.75V18A.75.75 0 0 0 3 18zm-1.72-.97L11.47 6.841a.75.75 0 0 1 1.06 0l10.19 10.19a.75.75 0 1 0 1.06-1.061L13.591 5.78a2.25 2.25 0 0 0-3.182 0L.219 15.97a.75.75 0 1 0 1.061 1.06zm15.97-7.28v-1.5L16.5 9h3.75l-.75-.75v5.25a.75.75 0 0 0 1.5 0V8.25a.75.75 0 0 0-.75-.75H16.5a.75.75 0 0 0-.75.75v1.5a.75.75 0 0 0 1.5 0zM16.522.3l-.407.543a1.793 1.793 0 0 0 .279 2.461c.12.102.14.28.045.406l-.411.548a.75.75 0 1 0 1.2.9l.407-.543a1.793 1.793 0 0 0-.279-2.461.295.295 0 0 1-.045-.406l.411-.548a.75.75 0 1 0-1.2-.9zm3.75 0l-.407.543a1.793 1.793 0 0 0 .279 2.461c.12.102.14.28.045.406l-.411.548a.75.75 0 1 0 1.2.9l.407-.543a1.793 1.793 0 0 0-.279-2.461.295.295 0 0 1-.045-.406l.411-.548a.75.75 0 1 0-1.2-.9z" style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">홈</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="navigation_item">
                                            <a class="item_link" href="${pageContext.request.contextPath}/WEB-INF/partner/calendar.jsp">
                                                <span class="navigation_icon">
                                                    <svg viewBox="0 0 24 24" focusable="false" width="24" aria-hidden="true" height="24" fill="currentColor" role="presentation" class="bk-icon -streamline-calendar" style="user-select: auto;">
                                                        <path d="M22.502 13.5v8.25a.75.75 0 0 1-.75.75h-19.5a.75.75 0 0 1-.75-.75V5.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v8.25zm1.5 0V5.25A2.25 2.25 0 0 0 21.752 3h-19.5a2.25 2.25 0 0 0-2.25 2.25v16.5A2.25 2.25 0 0 0 2.252 24h19.5a2.25 2.25 0 0 0 2.25-2.25V13.5zm-23.25-3h22.5a.75.75 0 0 0 0-1.5H.752a.75.75 0 0 0 0 1.5zM7.502 6V.75a.75.75 0 0 0-1.5 0V6a.75.75 0 0 0 1.5 0zm10.5 0V.75a.75.75 0 0 0-1.5 0V6a.75.75 0 0 0 1.5 0z" style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">캘린더</span>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15" aria-hidden="true" width="15" fill="currentColor" role="presentation" class="bk-icon -streamline-arrow_nav_down" style="user-select: auto;">
                                                            <path d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z" style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>캘린더</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>캘린더 연동</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>요금제</span></a></li>
                                                   <li class="submenu_item">
                                                       <a class="submenu_link" href="#">
                                                            <span class="submenu_title">숙박인원 기준 요금</span>
                                                            <span class="submenu_label">NEW</span>
                                                       </a>
                                                   </li> 
                                                </ul>
                                            </div>
                                        </li> 
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg viewBox="0 0 24 24" focusable="false" height="24" aria-hidden="true" width="24" fill="currentColor" role="presentation" class="bk-icon -streamline-list" style="user-select: auto;">
                                                        <path d="M4.5 2.998a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm1.5 0a3 3 0 1 0-6 0 3 3 0 0 0 6 0zm-1.5 9a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm1.5 0a3 3 0 1 0-6 0 3 3 0 0 0 6 0zm-1.5 9a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm1.5 0a3 3 0 1 0-6 0 3 3 0 0 0 6 0zm2.25-16.5h15a.75.75 0 0 0 0-1.5h-15a.75.75 0 0 0 0 1.5zm0 9h15a.75.75 0 0 0 0-1.5h-15a.75.75 0 0 0 0 1.5zm0 9h15a.75.75 0 0 0 0-1.5h-15a.75.75 0 0 0 0 1.5z" style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">예약</span>
                                                </span>
                                            </a>
                                        </li> 
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg fill="currentColor" role="presentation" focusable="false" viewBox="0 0 24 24" width="24" height="24" aria-hidden="true" class="bk-icon -streamline-edit" style="user-select: auto;">
                                                        <path d="M22.72 1.279a4.389 4.389 0 0 0-6.208.013l-.028.029L1.99 15.815a.75.75 0 0 0-.197.344l-1.77 6.905a.75.75 0 0 0 .913.913l6.905-1.771a.75.75 0 0 0 .344-.197l14.5-14.5a4.385 4.385 0 0 0 .067-6.197l-.03-.031zm-1.061 1.06l.02.02a2.887 2.887 0 0 1-.048 4.083L7.125 20.95l.344-.197-6.905 1.771.913.913 1.77-6.905-.197.344 14.5-14.5.025-.025a2.89 2.89 0 0 1 4.086-.009zm-5.583.451l5.134 5.134a.75.75 0 1 0 1.06-1.06L17.136 1.73a.75.75 0 1 0-1.06 1.06zM1.99 16.875l5.14 5.13a.75.75 0 0 0 1.059-1.062l-5.14-5.13a.75.75 0 0 0-1.059 1.062z" style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">숙소</span>
                                                    <span class="title_label"> 8 </span>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15" aria-hidden="true" width="15" fill="currentColor" role="presentation" class="bk-icon -streamline-arrow_nav_down" style="user-select: auto;">
                                                            <path d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z" style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>숙소 페이지 점수</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>일반 정보</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>VAT/세금/기타 비용</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>사진</span><span class="title_label"> 2 </span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>정책</span><span class="title_label"> 1 </span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>시설 및 서비스</span><span class="title_label"> 1 </span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>숙소 레이아웃</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>객실 편의시설</span><span class="title_label"> 2 </span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>찾아오는 길</span><span class="title_label"> 1 </span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>프로필</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>숙소 근처에는 무엇이 있나요?</span><span class="title_label"> 1 </span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>내 숙소 설명 보기</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>메시지 설정</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>지속 가능한 여행 문화</span></a></li>
                                                   <li class="submenu_item">
                                                       <a class="submenu_link" href="#">
                                                            <span class="submenu_title">보건 & 안전</span>
                                                            <span class="submenu_label">NEW</span>
                                                       </a>
                                                   </li> 
                                                </ul>
                                            </div>
                                        </li> 
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg role="presentation" fill="currentColor" width="24" aria-hidden="true" height="24" viewBox="0 0 24 24" focusable="false" class="bk-icon -streamline-rocket" style="user-select: auto;">
                                                        <path d="M22.417.822l-2.158.24a8.25 8.25 0 0 0-4.922 2.366L5.53 13.235a.75.75 0 0 0 0 1.06l4.24 4.242a.75.75 0 0 0 1.06 0l9.81-9.807a8.244 8.244 0 0 0 2.365-4.922l.24-2.158a.75.75 0 0 0-.828-.828zm.166 1.49l-.828-.828-.24 2.158a6.744 6.744 0 0 1-1.936 4.027l-9.81 9.808h1.062l-4.24-4.242v1.06l9.806-9.807a6.75 6.75 0 0 1 4.028-1.936l2.158-.24zM6.297 13.053l-3.622-1.208v.002l.232-.233a5.25 5.25 0 0 1 5.373-1.269l1.255.419-.293-1.242-3.712 3.713.767-.181zm-.474 1.423c.27.09.566.02.767-.18l3.712-3.714a.75.75 0 0 0-.293-1.242l-1.255-.418a6.75 6.75 0 0 0-6.907 1.632l-.232.232a1.498 1.498 0 0 0 .587 2.483l3.62 1.207zm.474-1.423l-3.622-1.208v.002l.232-.233a5.25 5.25 0 0 1 5.373-1.269l1.255.419-.293-1.242-3.712 3.713.767-.181zm-.474 1.423c.27.09.566.02.767-.18l3.712-3.714a.75.75 0 0 0-.293-1.242l-1.255-.418a6.75 6.75 0 0 0-6.907 1.632l-.232.232a1.498 1.498 0 0 0 .587 2.483l3.62 1.207zm3.766 3.768l1.207 3.622a1.499 1.499 0 0 0 2.484.586l.231-.23a6.75 6.75 0 0 0 1.632-6.91l-.416-1.249a.75.75 0 0 0-1.242-.294L9.77 17.476a.75.75 0 0 0-.181.768zm1.422-.474l-.181.768 3.715-3.707-1.242-.294.416 1.25a5.25 5.25 0 0 1-1.267 5.373l-.232.23-.002.002h.002L11.01 17.77zm-1.422.474l1.207 3.622a1.499 1.499 0 0 0 2.484.586l.231-.23a6.75 6.75 0 0 0 1.632-6.91l-.416-1.249a.75.75 0 0 0-1.242-.294L9.77 17.476a.75.75 0 0 0-.181.768zm1.422-.474l-.181.768 3.715-3.707-1.242-.294.416 1.25a5.25 5.25 0 0 1-1.267 5.373l-.232.23-.002.002h.002L11.01 17.77zm-3.982.769c0 .397-.157.778-.439 1.059-.11.11-.406.286-.837.486a18.53 18.53 0 0 1-1.462.586 41.297 41.297 0 0 1-2.674.858l.925.925c.046-.165.132-.457.248-.834.193-.628.399-1.256.609-1.84.205-.569.403-1.064.587-1.463.2-.43.376-.727.484-.835.259-.259.6-.414.964-.438a.75.75 0 1 0-.098-1.496 2.996 2.996 0 0 0-1.926.873c-.266.266-.516.685-.785 1.266-.205.444-.419.978-.637 1.585a42.8 42.8 0 0 0-.89 2.776.75.75 0 0 0 .925.925 42.859 42.859 0 0 0 2.777-.89c.606-.219 1.14-.432 1.582-.637.581-.269 1.001-.518 1.268-.786.564-.561.88-1.325.879-2.122a.75.75 0 0 0-1.5.002z" style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">기회 요인</span>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15" aria-hidden="true" width="15" fill="currentColor" role="presentation" class="bk-icon -streamline-arrow_nav_down" style="user-select: auto;">
                                                            <path d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z" style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>기회 요인 센터</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>Genius 프로그램</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>추천 숙소 프로그램</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>노출 향상 도구</span></a></li> 
                                                </ul>
                                            </div>
                                        </li> 
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg role="presentation" fill="currentColor" width="24" height="24" aria-hidden="true" focusable="false" viewBox="0 0 24 24" class="bk-icon -streamline-email" style="user-select: auto;">
                                                        <path d="M22.5 12v6a.75.75 0 0 1-.75.75H2.25A.75.75 0 0 1 1.5 18V6a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v6zm1.5 0V6a2.25 2.25 0 0 0-2.25-2.25H2.25A2.25 2.25 0 0 0 0 6v12a2.25 2.25 0 0 0 2.25 2.25h19.5A2.25 2.25 0 0 0 24 18v-6zm-8.822-1.474l3.813 3.525a.75.75 0 1 0 1.018-1.102l-3.813-3.525a.75.75 0 1 0-1.018 1.102zM7.804 9.424L3.99 12.95a.75.75 0 1 0 1.018 1.102l3.813-3.525a.75.75 0 1 0-1.018-1.102zm14.65-5.027l-9.513 6.56a1.656 1.656 0 0 1-1.882 0l-9.513-6.56A.75.75 0 1 0 .694 5.63l9.513 6.56a3.156 3.156 0 0 0 3.586 0l9.513-6.56a.75.75 0 1 0-.852-1.234z" style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">메시지</span>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15" aria-hidden="true" width="15" fill="currentColor" role="presentation" class="bk-icon -streamline-arrow_nav_down" style="user-select: auto;">
                                                            <path d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z" style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>예약 관련 메시지</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>Booking.com 메시지</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>숙소 관련 문의</span></a></li>
                                                </ul>
                                            </div>
                                        </li> 
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg role="presentation" fill="currentColor" aria-hidden="true" height="24" width="24" viewBox="0 0 24 24" focusable="false" class="bk-icon -streamline-heart_outline" style="user-select: auto;">
                                                        <path d="M12.541 21.325l-9.588-10a4.923 4.923 0 1 1 6.95-6.976l1.567 1.566a.75.75 0 0 0 1.06 0l1.566-1.566a4.923 4.923 0 0 1 6.963 6.962l-9.6 10.014h1.082zm-1.082 1.038a.75.75 0 0 0 1.082 0l9.59-10.003a6.418 6.418 0 0 0-.012-9.07 6.423 6.423 0 0 0-9.083-.001L11.47 4.854h1.06l-1.566-1.566a6.423 6.423 0 1 0-9.082 9.086l9.577 9.99z" style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">이용 후기</span>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15" aria-hidden="true" width="15" fill="currentColor" role="presentation" class="bk-icon -streamline-arrow_nav_down" style="user-select: auto;">
                                                            <path d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z" style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>고객 이용 후기</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>고객 경험</span></a></li>
                                                </ul>
                                            </div>
                                        </li> 
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg role="presentation" fill="currentColor" height="24" aria-hidden="true" width="24" viewBox="0 0 24 24" focusable="false" class="bk-icon -streamline-page" style="user-select: auto;">
                                                        <path d="M13.629 22.5H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v11.379a.75.75 0 0 1-.22.53L14.16 22.28a.75.75 0 0 1-.53.219zm0 1.5a2.25 2.25 0 0 0 1.59-.659l8.122-8.122A2.25 2.25 0 0 0 24 13.63V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h11.379zM15 23.115V15.75a.75.75 0 0 1 .75-.75h7.365a.75.75 0 0 0 0-1.5H15.75a2.25 2.25 0 0 0-2.25 2.25v7.365a.75.75 0 0 0 1.5 0zM6.75 7.5h12a.75.75 0 0 0 0-1.5h-12a.75.75 0 0 0 0 1.5zm0 4.5H12a.75.75 0 0 0 0-1.5H6.75a.75.75 0 0 0 0 1.5z" style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">재무</span>
                                                    <span class="title_label"> 1 </span>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15" aria-hidden="true" width="15" fill="currentColor" role="presentation" class="bk-icon -streamline-arrow_nav_down" style="user-select: auto;">
                                                            <path d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z" style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>청구서</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>예약 명세서</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>재무 개요</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>은행 계좌 정보</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span class="submenu_title">VAT 정보</span><span class="title_label"> 2 </span></a></li> 
                                                </ul>
                                            </div>
                                        </li> 
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg focusable="false" viewBox="0 0 24 24" height="24" aria-hidden="true" width="24" fill="currentColor" role="presentation" class="bk-icon -streamline-chart" style="user-select: auto;">
                                                        <path d="M.75 22.5h22.5a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5zM6 10.5H3A1.5 1.5 0 0 0 1.5 12v9.75c0 .414.336.75.75.75h4.5a.75.75 0 0 0 .75-.75V12A1.5 1.5 0 0 0 6 10.5zM6 12v9.75l.75-.75h-4.5l.75.75V12h3zm7.5-10.5h-3A1.5 1.5 0 0 0 9 3v18.75c0 .414.336.75.75.75h4.5a.75.75 0 0 0 .75-.75V3a1.5 1.5 0 0 0-1.5-1.5zm0 1.5v18.75l.75-.75h-4.5l.75.75V3h3zM21 6h-3a1.5 1.5 0 0 0-1.5 1.5v14.25c0 .414.336.75.75.75h4.5a.75.75 0 0 0 .75-.75V7.5A1.5 1.5 0 0 0 21 6zm0 1.5v14.25l.75-.75h-4.5l.75.75V7.5h3z" style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">분석</span>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15" aria-hidden="true" width="15" fill="currentColor" role="presentation" class="bk-icon -streamline-arrow_nav_down" style="user-select: auto;">
                                                            <path d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z" style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>분석 게시판</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>예약 현황 | 온북</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>판매 통계</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>예약자 분석</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>예약 리드타임 정보</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>취소 유형</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>투숙객 후기 평점</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>경쟁사 그룹 설정</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span class="submenu_title">랭킹 대시보드</span><span class="submenu_label">NEW</span></a></li>
                                                   <li class="submenu_item"><a class="submenu_link" href="#"><span>성과 대시보드</span></a></li>
                                                </ul>
                                            </div>
                                        </li>    
                                    </ul>
                                </div>    
                            </div>
                       </nav>
                   </div>
               </header>
               <main class="main">
                   <div class="main_container">
                      <div class="grid_container">
                        <div class="main_column">
                            <div class="center">
                                <div class="grid_column">
                                    <div>
                                        <div class="group">
                                            <div class="global_alert">
                                                <div class="partner_alert">
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
                                                        <a href="#" title="작성 완료하기" class="alert_button"><span class="button_text">작성 완료하기</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="alert">
                                           <div class="alert_description">
                                               <span class="alert_text">손님과 파트너사 모두에게 안전한 예약 플랫폼을 제공하기 위해, 환불 불가 설정 및 선결제 설정을 일시적으로 중지하였습니다. 재설정이 가능하게 되면 다시 공지해드리겠습니다.</span>
                                           </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="group">
                                            <div class="global_alert">
                                                <div class="partner_alert">
                                                    <span class="alert_icon">
                                                        <svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" style="user-select: auto;">
                                                            <path d="M14.25 15.75h-.75a.75.75 0 0 1-.75-.75v-3.75a1.5 1.5 0 0 0-1.5-1.5h-.75a.75.75 0 0 0 0 1.5h.75V15a2.25 2.25 0 0 0 2.25 2.25h.75a.75.75 0 0 0 0-1.5zM11.625 6a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z" style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                    <div class="alert_description">
                                                        <span class="alert_title">숙소 위치 인증</span>
                                                        <p class="alert_text">
                                                            <span>Booking.com은 사이트를 통해  고객이 믿고 이용할 수 있는 숙소를 제공하기 위해 최선을 다하고 있습니다. 이에 따라 저희는 파트너님 숙소의 위치 인증 절차를 진행하고자 합니다.</span>
                                                        </p>
                                                        <a href="#" title="작성 완료하기" class="alert_button"><span class="button_text">위치 인증하기</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="welcome_message">
                                            <div class="message_container">
                                               <div class="message_body">
                                                  <h1 class="welcome_h1">이제 Booking.com으로 Hotel Name 예약이 가능합니다.</h1>
                                                  <p class="welcome_p"><span>여기서 고객에게 제공될 정보부터 객실 재고까지 순소 운영 전반을 관리하실 수 있습니다.</span></p>
                                                  <p class="welcome_p"><span>빠른 시일 내로 예약을 접수하기 위해 처리되어야 할 사항을 이 페이지 우측에 표시해드렸습니다.</span></p>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="page_header">
                                        <h1 class="page_header_title">Hotel Name <span class="badge"><span>공개/예약 가능</span></span></h1>
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
                                                                                        <a href="#" class="show_link"><span>예약 모두 보기</span></a>
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
                                                                                <a href="#" class="show_link"><span>예약 더 보기</span></a>
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
               <footer class="footer">
                   <div class="footer_top_content">
                       <div class="footer_container_center">
                           <div class="footer_top_inner">
                               <div class="footer_top_first">
                                   <div class="footer_links">
                                       <a href="#" class="footer_link"><span>회사소개</span></a>
                                       <a href="#" class="footer_link"><span>개인정보 보호정책</span></a>
                                       <a href="#" class="footer_link"><span>자주 묻는 질문</span></a>
                                   </div>
                               </div>
                               <div class="footer_top_second">
                                   <div class="footer_cta">
                                       <a href="#" class="footer_cta_button">
                                           <span class="button_text">신규 숙소 추가</span>
                                       </a>
                                       <div class="feedback_cta">
                                           <button class="footer_cta_button">
                                               <span class="button_text">의견 보내기</span>
                                           </button>
                                       </div>
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="footer_bottom_content">
                       <div class="footer_container_center">
                            <div class="footer_bottom_inner">
                                <div class="footer_bottom_first">
                                    <span>ⓒ Copyright <a href=#" class="footer_link">Booking.com</a> 2022</span>
                                </div>
                                <div class="footer_bottom_second">
                                    <div class="footer_language_select">
                                        <div class="language_form_group">
                                            <div class="input_select">
                                                <select class="form_control">
                                                    <option value="ko">한국어</option>
                                                </select>
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="input_select_icon" style="user-select: auto;">
                                                    <path d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z" style="user-select: auto;"></path>
                                                </svg>
                                            </div>    
                                        </div>    
                                    </div>    
                                </div>    
                            </div>     
                       </div>
                   </div>
               </footer>
            </div>
        </div>
    </div>    
</body>
</html>