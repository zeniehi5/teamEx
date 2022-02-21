<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/parnter/css/calendar.css">
    <title>Hotel Name · 캘린더</title>
</head>

<body>
    <div class="main-container">
        <div class="content">
            <div class="home">
                <header class="header">
                    <div class="header_container">
                        <section class="logo_container">
                            <a href="#"><img src="${pageContext.request.contextPath}/resources/parter/images/booking_logo_retina.png" class="header_logo"></a>
                            <div class="header_property">Hotel Name - 8126142</div>
                        </section>
                        <div class="side_items">
                            <div class="search_bar">
                                <div class="search_wrap">
                                    <div class="input_container">
                                        <div class="input wrap">
                                            <input class="search_input" type="text" placeholder="예약 검색"
                                                autocomplete="off">
                                            <button type="button" class="input_icon">
                                                <svg focusable="false" viewBox="0 0 24 24" role="presentation"
                                                    aria-hidden="true" width="16" height="16" fill="white"
                                                    class="ext-search-input__icon ext-search-input__icon--white bk-icon -streamline-magnifying_glass"
                                                    style="user-select: auto;">
                                                    <path
                                                        d="M17.464 6.56a8.313 8.313 0 1 1-15.302 6.504A8.313 8.313 0 0 1 17.464 6.56zm1.38-.586C16.724.986 10.963-1.339 5.974.781.988 2.9-1.337 8.662.783 13.65c2.12 4.987 7.881 7.312 12.87 5.192 4.987-2.12 7.312-7.881 5.192-12.87zM15.691 16.75l7.029 7.03a.75.75 0 0 0 1.06-1.06l-7.029-7.03a.75.75 0 0 0-1.06 1.06z"
                                                        style="user-select: auto;"></path>
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
                                            <svg height="20" fill="currentColor" width="20" aria-hidden="true"
                                                role="presentation" focusable="false" viewBox="0 0 24 24" slot="icon"
                                                class="ext-action-menu__avatar--icon bk-icon -streamline-question_mark_circle"
                                                style="user-select: auto;">
                                                <path
                                                    d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                    style="user-select: auto;"></path>
                                            </svg>
                                        </div>
                                        <div class="menu_text">호텔명</div>
                                    </button>
                                </div>
                                <div class="menu_item">
                                    <button class="menu_section">
                                        <div class="menu_avatar">
                                            <svg height="20" fill="currentColor" width="20" aria-hidden="true"
                                                role="presentation" focusable="false" viewBox="0 0 24 24" slot="icon"
                                                class="ext-action-menu__avatar--icon bk-icon -streamline-question_mark_circle"
                                                style="user-select: auto;">
                                                <path
                                                    d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                    style="user-select: auto;"></path>
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
                                            <svg fill="currentColor" height="20" aria-hidden="true" width="20"
                                                focusable="false" viewBox="0 0 24 24" role="presentation" slot="icon"
                                                class="ext-action-menu__avatar--icon bk-icon -streamline-account_user"
                                                style="user-select: auto;">
                                                <path
                                                    d="M16.5 9.75a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zm1.5 0a6 6 0 1 0-12 0 6 6 0 0 0 12 0zm1.445 10.597c-4.086-4.111-10.732-4.132-14.844-.046l-.046.046a.75.75 0 0 0 1.064 1.058l.04-.04a8.996 8.996 0 0 1 12.722.04.75.75 0 0 0 1.064-1.058zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                    style="user-select: auto;"></path>
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
                                                    <svg height="24" fill="currentColor" width="24" aria-hidden="true"
                                                        role="presentation" viewBox="0 0 24 24" focusable="false"
                                                        class="bk-icon -streamline-house" style="user-select: auto;">
                                                        <path
                                                            d="M3 18v3.75A2.25 2.25 0 0 0 5.25 24h4.5a.75.75 0 0 0 .75-.75v-6a.75.75 0 0 1 .75-.75h1.5a.75.75 0 0 1 .75.75v6c0 .414.336.75.75.75h4.5A2.25 2.25 0 0 0 21 21.75V18a.75.75 0 0 0-1.5 0v3.75a.75.75 0 0 1-.75.75h-4.5l.75.75v-6A2.25 2.25 0 0 0 12.75 15h-1.5A2.25 2.25 0 0 0 9 17.25v6l.75-.75h-4.5a.75.75 0 0 1-.75-.75V18A.75.75 0 0 0 3 18zm-1.72-.97L11.47 6.841a.75.75 0 0 1 1.06 0l10.19 10.19a.75.75 0 1 0 1.06-1.061L13.591 5.78a2.25 2.25 0 0 0-3.182 0L.219 15.97a.75.75 0 1 0 1.061 1.06zm15.97-7.28v-1.5L16.5 9h3.75l-.75-.75v5.25a.75.75 0 0 0 1.5 0V8.25a.75.75 0 0 0-.75-.75H16.5a.75.75 0 0 0-.75.75v1.5a.75.75 0 0 0 1.5 0zM16.522.3l-.407.543a1.793 1.793 0 0 0 .279 2.461c.12.102.14.28.045.406l-.411.548a.75.75 0 1 0 1.2.9l.407-.543a1.793 1.793 0 0 0-.279-2.461.295.295 0 0 1-.045-.406l.411-.548a.75.75 0 1 0-1.2-.9zm3.75 0l-.407.543a1.793 1.793 0 0 0 .279 2.461c.12.102.14.28.045.406l-.411.548a.75.75 0 1 0 1.2.9l.407-.543a1.793 1.793 0 0 0-.279-2.461.295.295 0 0 1-.045-.406l.411-.548a.75.75 0 1 0-1.2-.9z"
                                                            style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">홈</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg viewBox="0 0 24 24" focusable="false" width="24"
                                                        aria-hidden="true" height="24" fill="currentColor"
                                                        role="presentation" class="bk-icon -streamline-calendar"
                                                        style="user-select: auto;">
                                                        <path
                                                            d="M22.502 13.5v8.25a.75.75 0 0 1-.75.75h-19.5a.75.75 0 0 1-.75-.75V5.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v8.25zm1.5 0V5.25A2.25 2.25 0 0 0 21.752 3h-19.5a2.25 2.25 0 0 0-2.25 2.25v16.5A2.25 2.25 0 0 0 2.252 24h19.5a2.25 2.25 0 0 0 2.25-2.25V13.5zm-23.25-3h22.5a.75.75 0 0 0 0-1.5H.752a.75.75 0 0 0 0 1.5zM7.502 6V.75a.75.75 0 0 0-1.5 0V6a.75.75 0 0 0 1.5 0zm10.5 0V.75a.75.75 0 0 0-1.5 0V6a.75.75 0 0 0 1.5 0z"
                                                            style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">캘린더</span>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15"
                                                            aria-hidden="true" width="15" fill="currentColor"
                                                            role="presentation"
                                                            class="bk-icon -streamline-arrow_nav_down"
                                                            style="user-select: auto;">
                                                            <path
                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z"
                                                                style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                    <li class="submenu_item"><a class="submenu_link"
                                                            href="#"><span>캘린더</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>캘린더
                                                                연동</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link"
                                                            href="#"><span>요금제</span></a></li>
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
                                                    <svg viewBox="0 0 24 24" focusable="false" height="24"
                                                        aria-hidden="true" width="24" fill="currentColor"
                                                        role="presentation" class="bk-icon -streamline-list"
                                                        style="user-select: auto;">
                                                        <path
                                                            d="M4.5 2.998a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm1.5 0a3 3 0 1 0-6 0 3 3 0 0 0 6 0zm-1.5 9a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm1.5 0a3 3 0 1 0-6 0 3 3 0 0 0 6 0zm-1.5 9a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm1.5 0a3 3 0 1 0-6 0 3 3 0 0 0 6 0zm2.25-16.5h15a.75.75 0 0 0 0-1.5h-15a.75.75 0 0 0 0 1.5zm0 9h15a.75.75 0 0 0 0-1.5h-15a.75.75 0 0 0 0 1.5zm0 9h15a.75.75 0 0 0 0-1.5h-15a.75.75 0 0 0 0 1.5z"
                                                            style="user-select: auto;"></path>
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
                                                    <svg fill="currentColor" role="presentation" focusable="false"
                                                        viewBox="0 0 24 24" width="24" height="24" aria-hidden="true"
                                                        class="bk-icon -streamline-edit" style="user-select: auto;">
                                                        <path
                                                            d="M22.72 1.279a4.389 4.389 0 0 0-6.208.013l-.028.029L1.99 15.815a.75.75 0 0 0-.197.344l-1.77 6.905a.75.75 0 0 0 .913.913l6.905-1.771a.75.75 0 0 0 .344-.197l14.5-14.5a4.385 4.385 0 0 0 .067-6.197l-.03-.031zm-1.061 1.06l.02.02a2.887 2.887 0 0 1-.048 4.083L7.125 20.95l.344-.197-6.905 1.771.913.913 1.77-6.905-.197.344 14.5-14.5.025-.025a2.89 2.89 0 0 1 4.086-.009zm-5.583.451l5.134 5.134a.75.75 0 1 0 1.06-1.06L17.136 1.73a.75.75 0 1 0-1.06 1.06zM1.99 16.875l5.14 5.13a.75.75 0 0 0 1.059-1.062l-5.14-5.13a.75.75 0 0 0-1.059 1.062z"
                                                            style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">숙소</span>
                                                    <sapn class="title_label"> 8 </sapn>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15"
                                                            aria-hidden="true" width="15" fill="currentColor"
                                                            role="presentation"
                                                            class="bk-icon -streamline-arrow_nav_down"
                                                            style="user-select: auto;">
                                                            <path
                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z"
                                                                style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>숙소
                                                                페이지 점수</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>일반
                                                                정보</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link"
                                                            href="#"><span>VAT/세금/기타 비용</sapn></a></li>
                                                    <li class="submenu_item"><a class="submenu_link"
                                                            href="#"><span>사진</span><span class="title_label"> 2
                                                            </span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link"
                                                            href="#"><span>정책</span><span class="title_label"> 1
                                                            </span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>시설 및
                                                                서비스</span><span class="title_label"> 1 </span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>숙소
                                                                레이아웃</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>객실
                                                                편의시설</sapn><span class="title_label"> 2 </span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>찾아오는
                                                                길</span>
                                                            <sapn class="title_label"> 1 </span>
                                                        </a></li>
                                                    <li class="submenu_item"><a class="submenu_link"
                                                            href="#"><span>프로필</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>숙소
                                                                근처에는 무엇이 있나요?</span><span class="title_label"> 1
                                                            </span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>내 숙소
                                                                설명 보기</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>메시지
                                                                설정</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>지속
                                                                가능한 여행 문화</span></a></li>
                                                    <li class="submenu_item">
                                                        <a class="submenu_link" href="#">
                                                            <sapn class="submenu_title">보건 & 안전</sapn>
                                                            <span class="submenu_label">NEW</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg role="presentation" fill="currentColor" width="24"
                                                        aria-hidden="true" height="24" viewBox="0 0 24 24"
                                                        focusable="false" class="bk-icon -streamline-rocket"
                                                        style="user-select: auto;">
                                                        <path
                                                            d="M22.417.822l-2.158.24a8.25 8.25 0 0 0-4.922 2.366L5.53 13.235a.75.75 0 0 0 0 1.06l4.24 4.242a.75.75 0 0 0 1.06 0l9.81-9.807a8.244 8.244 0 0 0 2.365-4.922l.24-2.158a.75.75 0 0 0-.828-.828zm.166 1.49l-.828-.828-.24 2.158a6.744 6.744 0 0 1-1.936 4.027l-9.81 9.808h1.062l-4.24-4.242v1.06l9.806-9.807a6.75 6.75 0 0 1 4.028-1.936l2.158-.24zM6.297 13.053l-3.622-1.208v.002l.232-.233a5.25 5.25 0 0 1 5.373-1.269l1.255.419-.293-1.242-3.712 3.713.767-.181zm-.474 1.423c.27.09.566.02.767-.18l3.712-3.714a.75.75 0 0 0-.293-1.242l-1.255-.418a6.75 6.75 0 0 0-6.907 1.632l-.232.232a1.498 1.498 0 0 0 .587 2.483l3.62 1.207zm.474-1.423l-3.622-1.208v.002l.232-.233a5.25 5.25 0 0 1 5.373-1.269l1.255.419-.293-1.242-3.712 3.713.767-.181zm-.474 1.423c.27.09.566.02.767-.18l3.712-3.714a.75.75 0 0 0-.293-1.242l-1.255-.418a6.75 6.75 0 0 0-6.907 1.632l-.232.232a1.498 1.498 0 0 0 .587 2.483l3.62 1.207zm3.766 3.768l1.207 3.622a1.499 1.499 0 0 0 2.484.586l.231-.23a6.75 6.75 0 0 0 1.632-6.91l-.416-1.249a.75.75 0 0 0-1.242-.294L9.77 17.476a.75.75 0 0 0-.181.768zm1.422-.474l-.181.768 3.715-3.707-1.242-.294.416 1.25a5.25 5.25 0 0 1-1.267 5.373l-.232.23-.002.002h.002L11.01 17.77zm-1.422.474l1.207 3.622a1.499 1.499 0 0 0 2.484.586l.231-.23a6.75 6.75 0 0 0 1.632-6.91l-.416-1.249a.75.75 0 0 0-1.242-.294L9.77 17.476a.75.75 0 0 0-.181.768zm1.422-.474l-.181.768 3.715-3.707-1.242-.294.416 1.25a5.25 5.25 0 0 1-1.267 5.373l-.232.23-.002.002h.002L11.01 17.77zm-3.982.769c0 .397-.157.778-.439 1.059-.11.11-.406.286-.837.486a18.53 18.53 0 0 1-1.462.586 41.297 41.297 0 0 1-2.674.858l.925.925c.046-.165.132-.457.248-.834.193-.628.399-1.256.609-1.84.205-.569.403-1.064.587-1.463.2-.43.376-.727.484-.835.259-.259.6-.414.964-.438a.75.75 0 1 0-.098-1.496 2.996 2.996 0 0 0-1.926.873c-.266.266-.516.685-.785 1.266-.205.444-.419.978-.637 1.585a42.8 42.8 0 0 0-.89 2.776.75.75 0 0 0 .925.925 42.859 42.859 0 0 0 2.777-.89c.606-.219 1.14-.432 1.582-.637.581-.269 1.001-.518 1.268-.786.564-.561.88-1.325.879-2.122a.75.75 0 0 0-1.5.002z"
                                                            style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">기회 요인</span>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15"
                                                            aria-hidden="true" width="15" fill="currentColor"
                                                            role="presentation"
                                                            class="bk-icon -streamline-arrow_nav_down"
                                                            style="user-select: auto;">
                                                            <path
                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z"
                                                                style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>기회
                                                                요인 센터</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link"
                                                            href="#"><span>Genius 프로그램</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>추천
                                                                숙소 프로그램</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>노출
                                                                향상 도구</span></a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg role="presentation" fill="currentColor" width="24" height="24"
                                                        aria-hidden="true" focusable="false" viewBox="0 0 24 24"
                                                        class="bk-icon -streamline-email" style="user-select: auto;">
                                                        <path
                                                            d="M22.5 12v6a.75.75 0 0 1-.75.75H2.25A.75.75 0 0 1 1.5 18V6a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v6zm1.5 0V6a2.25 2.25 0 0 0-2.25-2.25H2.25A2.25 2.25 0 0 0 0 6v12a2.25 2.25 0 0 0 2.25 2.25h19.5A2.25 2.25 0 0 0 24 18v-6zm-8.822-1.474l3.813 3.525a.75.75 0 1 0 1.018-1.102l-3.813-3.525a.75.75 0 1 0-1.018 1.102zM7.804 9.424L3.99 12.95a.75.75 0 1 0 1.018 1.102l3.813-3.525a.75.75 0 1 0-1.018-1.102zm14.65-5.027l-9.513 6.56a1.656 1.656 0 0 1-1.882 0l-9.513-6.56A.75.75 0 1 0 .694 5.63l9.513 6.56a3.156 3.156 0 0 0 3.586 0l9.513-6.56a.75.75 0 1 0-.852-1.234z"
                                                            style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">메시지</span>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15"
                                                            aria-hidden="true" width="15" fill="currentColor"
                                                            role="presentation"
                                                            class="bk-icon -streamline-arrow_nav_down"
                                                            style="user-select: auto;">
                                                            <path
                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z"
                                                                style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>예약
                                                                관련 메시지</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link"
                                                            href="#"><span>Booking.com 메시지</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>숙소
                                                                관련 문의</span></a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg role="presentation" fill="currentColor" aria-hidden="true"
                                                        height="24" width="24" viewBox="0 0 24 24" focusable="false"
                                                        class="bk-icon -streamline-heart_outline"
                                                        style="user-select: auto;">
                                                        <path
                                                            d="M12.541 21.325l-9.588-10a4.923 4.923 0 1 1 6.95-6.976l1.567 1.566a.75.75 0 0 0 1.06 0l1.566-1.566a4.923 4.923 0 0 1 6.963 6.962l-9.6 10.014h1.082zm-1.082 1.038a.75.75 0 0 0 1.082 0l9.59-10.003a6.418 6.418 0 0 0-.012-9.07 6.423 6.423 0 0 0-9.083-.001L11.47 4.854h1.06l-1.566-1.566a6.423 6.423 0 1 0-9.082 9.086l9.577 9.99z"
                                                            style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">이용 후기</span>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15"
                                                            aria-hidden="true" width="15" fill="currentColor"
                                                            role="presentation"
                                                            class="bk-icon -streamline-arrow_nav_down"
                                                            style="user-select: auto;">
                                                            <path
                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z"
                                                                style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>고객
                                                                이용 후기</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>고객
                                                                경험</span></a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg role="presentation" fill="currentColor" height="24"
                                                        aria-hidden="true" width="24" viewBox="0 0 24 24"
                                                        focusable="false" class="bk-icon -streamline-page"
                                                        style="user-select: auto;">
                                                        <path
                                                            d="M13.629 22.5H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v11.379a.75.75 0 0 1-.22.53L14.16 22.28a.75.75 0 0 1-.53.219zm0 1.5a2.25 2.25 0 0 0 1.59-.659l8.122-8.122A2.25 2.25 0 0 0 24 13.63V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h11.379zM15 23.115V15.75a.75.75 0 0 1 .75-.75h7.365a.75.75 0 0 0 0-1.5H15.75a2.25 2.25 0 0 0-2.25 2.25v7.365a.75.75 0 0 0 1.5 0zM6.75 7.5h12a.75.75 0 0 0 0-1.5h-12a.75.75 0 0 0 0 1.5zm0 4.5H12a.75.75 0 0 0 0-1.5H6.75a.75.75 0 0 0 0 1.5z"
                                                            style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">재무</span>
                                                    <sapn class="title_label"> 1 </sapn>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15"
                                                            aria-hidden="true" width="15" fill="currentColor"
                                                            role="presentation"
                                                            class="bk-icon -streamline-arrow_nav_down"
                                                            style="user-select: auto;">
                                                            <path
                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z"
                                                                style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                    <li class="submenu_item"><a class="submenu_link"
                                                            href="#"><span>청구서</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>예약
                                                                명세서</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>재무
                                                                개요</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>은행
                                                                계좌 정보</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span
                                                                class="submenu_title">VAT 정보</span><span
                                                                class="title_label"> 2 </sapn></a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="navigation_item">
                                            <a class="item_link" href="#">
                                                <span class="navigation_icon">
                                                    <svg focusable="false" viewBox="0 0 24 24" height="24"
                                                        aria-hidden="true" width="24" fill="currentColor"
                                                        role="presentation" class="bk-icon -streamline-chart"
                                                        style="user-select: auto;">
                                                        <path
                                                            d="M.75 22.5h22.5a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5zM6 10.5H3A1.5 1.5 0 0 0 1.5 12v9.75c0 .414.336.75.75.75h4.5a.75.75 0 0 0 .75-.75V12A1.5 1.5 0 0 0 6 10.5zM6 12v9.75l.75-.75h-4.5l.75.75V12h3zm7.5-10.5h-3A1.5 1.5 0 0 0 9 3v18.75c0 .414.336.75.75.75h4.5a.75.75 0 0 0 .75-.75V3a1.5 1.5 0 0 0-1.5-1.5zm0 1.5v18.75l.75-.75h-4.5l.75.75V3h3zM21 6h-3a1.5 1.5 0 0 0-1.5 1.5v14.25c0 .414.336.75.75.75h4.5a.75.75 0 0 0 .75-.75V7.5A1.5 1.5 0 0 0 21 6zm0 1.5v14.25l.75-.75h-4.5l.75.75V7.5h3z"
                                                            style="user-select: auto;"></path>
                                                    </svg>
                                                </span>
                                                <span class="navigation_title">
                                                    <span class="title_text">분석</span>
                                                    <span class="dropdown_indicator">
                                                        <svg viewBox="0 0 24 24" focusable="false" height="15"
                                                            aria-hidden="true" width="15" fill="currentColor"
                                                            role="presentation"
                                                            class="bk-icon -streamline-arrow_nav_down"
                                                            style="user-select: auto;">
                                                            <path
                                                                d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z"
                                                                style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="submenu">
                                                <ul class="submenu_list">
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>분석
                                                                게시판</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>예약
                                                                현황 | 온북</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>판매
                                                                통계</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>예약자
                                                                분석</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>예약
                                                                리드타임 정보</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>취소
                                                                유형</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>투숙객
                                                                후기 평점</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>경쟁사
                                                                그룹 설정</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span
                                                                class="submenu_title">랭킹 대시보드</span><span
                                                                class="submenu_label">NEW</span></a></li>
                                                    <li class="submenu_item"><a class="submenu_link" href="#"><span>성과
                                                                대시보드</span></a></li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                    </div>
                </header>
                <div>
                    <div class="top_alert">
                        <div class="group">
                            <div>
                                <div class="global_alert">
                                    <div class="alert alert_info alert_large">
                                        <span class="alert_icon">
                                            <svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg"
                                                viewbox="0 0 24 24" style="user-select: auto;">
                                                <path
                                                    d="M14.25 15.75h-.75a.75.75 0 0 1-.75-.75v-3.75a1.5 1.5 0 0 0-1.5-1.5h-.75a.75.75 0 0 0 0 1.5h.75V15a2.25 2.25 0 0 0 2.25 2.25h.75a.75.75 0 0 0 0-1.5zM11.625 6a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                    style="user-select: auto;"></path>
                                            </svg>
                                        </span>
                                        <div class="alert_description">
                                            <span class="alert_title">파트너 신원 인증 양식(KYP) 작성</span>
                                            <p class="alert_text">
                                                <span>다수의 법률 및 규제를 준수하기 위해 저희는 모든 숙소 파트너님께 몇 가지 정보를 작성해주실 것을 요청하고 있습니다.
                                                    자세한 내용은
                                                    <a href="#">파트너 지원 페이지</a>에서 확인하시기 바랍니다.</span>
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
                <main class="main">
                    <div class="bui-spacer">
                        <div class="av-cal-header av-cal-header--fixed-max-width">
                            <div>
                                <div class="bui-spacer">
                                    <div class="bui-alert alert_info">
                                        <span class="icon--hint alert_icon">
                                            <svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg"
                                                viewBox="0 0 24 24" style="user-select: auto;">
                                                <path
                                                    d="M14.25 15.75h-.75a.75.75 0 0 1-.75-.75v-3.75a1.5 1.5 0 0 0-1.5-1.5h-.75a.75.75 0 0 0 0 1.5h.75V15a2.25 2.25 0 0 0 2.25 2.25h.75a.75.75 0 0 0 0-1.5zM11.625 6a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                    style="user-select: auto;"></path>
                                            </svg>
                                        </span>
                                        <div class="alert_description">
                                            <p class="alert_text">
                                                <span>환불 불가 및 선결제 정책 설정이 일시적으로 중단되었습니다. 다시 설정이 가능해지면 바로
                                                    공지해드리겠습니다.</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                                                                class="bui-input__group bui-text-input__group bui-text-inpu__group--prepend">
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
                                                                <input class="bui-form__control" value="2022년 2월 5일">
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
                                                                class="bui-input__group bui-text-input__group bui-text-input__group--prepend">
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
                                                                <input class="bui-form__control" value="2022년 2월 5일">
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
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                                                    class="input_select_icon" style="user-select: auto;">
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
                </footer>
            </div>
        </div>
    </div>
</body>

</html>