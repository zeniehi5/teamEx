<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/partner/css/update-picture.css">
    <title>${hotel.hotelname} · 호텔 사진</title>
</head>

<body
    class="m-property_details m-facilities ua-chrome-97 ua-chrom is_desktop is_cjk is_new_hnav fix-badge-color env-self-manage facilities-buification-1 contents-ready">
    <div id="main-container" class="container-fluid tfa_phone_alt container-fluid--color">
        <main id="content">
            <div class="page-body">
                <div class="js-dont-warn-about-unsaved-changes">
                	<jsp:include page="/WEB-INF/partner/header.jsp"/>
                    <main class="main">
                        <div class="bui-container bui-container--center">
                            <div class="bui-page-header">
                                <h1 class="bui-page-header__title">
                                    <div class="bui-spacer">
                                        <span>숙박 시설 사진</span>
                                    </div>
                                </h1>
                            </div>
                            <div class="bui-tab">
                                <ul class="bui-tab__nav">
                                    <li class="bui-tab__item">
                                        <button title="모든 사진" class="bui-tab__link bui-tab__link--selected">
                                            <span>모든 사진</span>
                                            <span class="bui-tab__text-slot">
                                                <span class="bui-bubble">6</span>
                                            </span>
                                        </button>
                                    </li>
                                    <li class="bui-tab__item">
                                        <button title="저화질 사진" class="bui-tab__link bui-tab__link--selected">
                                            <span>저화질 사진</span>
                                            <span class="bui-tab__text-slot">
                                                <span class="bui-bubble bui-bubble--destructive">6</span>
                                            </span>
                                        </button>
                                    </li>
                                    <li class="bui-tab__item">
                                        <button title="사진이 없는 숙박 옵션" class="bui-tab__link bui-tab__link--selected">
                                            <span>사진이 없는 숙박 옵션</span>
                                            <span class="bui-tab__text-slot">
                                                <span class="bui-bubble">0</span>
                                            </span>
                                        </button>
                                    </li>
                                    <li class="bui-tab__item">
                                        <button title="Photos with missing tags"
                                            class="bui-tab__link bui-tab__link--selected">
                                            <span>태그가 없는 사진</span>
                                            <span class="bui-tab__text-slot">
                                                <span class="bui-bubble bui-bubble--destructive">6</span>
                                            </span>
                                        </button>
                                    </li>
                                </ul>
                                <div role="tabpanel">
                                    <div class="photo-uploader">
                                        <input type="file" multiple="multiple" class="visually-hidden">
                                        <div class="gallery-card-container">
                                            <div class="gallery-card_heading">
                                                <h2>메인 갤러리 (사진 6장)</h2>
                                            </div>
                                            <div class="gallery-bulk-actions-container">
                                                <ul class="bulk-actions-list">
                                                    <li>
                                                        <button type="button" class="bui-button bui-button--tertiary">
                                                            <span class="bui-button__text"><span>전체 선택</span></span>
                                                        </button>
                                                    </li>
                                                    <li>
                                                        <button type="button" disabled="disabled"
                                                            class="bui-button bui-button--tertiary">
                                                            <span class="bui-button__text"><span>전체 해제</span></span>
                                                        </button>
                                                    </li>
                                                    <li>
                                                        <button type="button" disabled="disabled"
                                                            class="bui-button bui-button--tertiary">
                                                            <span class="bui-button__text"><span>갤러리에서 숨기기</span></span>
                                                        </button>
                                                    </li>
                                                    <li>
                                                        <button type="button" disabled="disabled"
                                                            class="bui-button bui-button--tertiary">
                                                            <span class="bui-button__text"><span>삭제</span></span>
                                                        </button>
                                                    </li>
                                                </ul>
                                                <button type="button"
                                                    class="gallery-bulk-actions-upload bui-button bui-button--primary">
                                                    <span class="bui-button__icon">
                                                        <svg aria-hidden="true" focusable="false" width="14" height="14"
                                                            fill="#fff" role="presentation" viewBox="0 0 24 24"
                                                            class="bk-icon -streamline-landscape" color="#fff"
                                                            style="user-select: auto;">
                                                            <path
                                                                d="M22.5 12v9.75a.75.75 0 0 1-.75.75H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75V12zm1.5 0V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h19.5A2.25 2.25 0 0 0 24 21.75V12zM5.85 17.7l3.462-4.616a.75.75 0 0 1 1.13-.08l1.028 1.026a.75.75 0 0 0 1.13-.08l3.3-4.4a.75.75 0 0 1 1.2 0l2.67 3.56a.75.75 0 1 0 1.2-.9L18.3 8.65a2.248 2.248 0 0 0-3.6 0l-3.3 4.4 1.13-.08-1.027-1.027a2.25 2.25 0 0 0-3.391.242L4.65 16.8a.75.75 0 1 0 1.2.9zM7.5 6.375a1.125 1.125 0 1 1-2.25 0 1.125 1.125 0 0 1 2.25 0zm1.5 0a2.625 2.625 0 1 0-5.25 0 2.625 2.625 0 0 0 5.25 0zM.75 18h22.5a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5z"
                                                                style="user-select: auto;"></path>
                                                        </svg>
                                                    </span>
                                                    <span class="bui-button__text">
                                                        <span>사진 추가</span>
                                                    </span>
                                                </button>
                                            </div>
                                            <div class="gallery-changes__container">
                                                <div class="gallery-changes__main-block">
                                                    <svg viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" width="16" height="16" focusable="false"
                                                        role="presentation" class="gallery-changes__icon bk-icon -streamline-info_sign" style="user-select: auto;">
                                                        <path
                                                            d="M14.25 15.75h-.75a.75.75 0 0 1-.75-.75v-3.75a1.5 1.5 0 0 0-1.5-1.5h-.75a.75.75 0 0 0 0 1.5h.75V15a2.25 2.25 0 0 0 2.25 2.25h.75a.75.75 0 0 0 0-1.5zM11.625 6a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                            style="user-select: auto;"></path>
                                                    </svg>
                                                    <div class="bui-switch bui-switch--reversed">
                                                        <input area-label="스마트 정렬 기능" class="bui-switch__trigger">
                                                        <label data-on-value="스마트 정렬 기능" data-off-value="스마트 정렬 기능" class="bui-switch__hitbox bui-switch__hitbox--on">
                                                            <span class="bui-switch__indicator"></span>
                                                        </label>
                                                    </div>
                                                </div>    
                                            </div>
                                            <div
                                                class="photo-list-container bui-grid bui-grid--bleed photo-list-container__draggable">
                                                <div
                                                    class="photo-item-container photo-item-container__draggable bui-grid__column-6 bui-grid__column-3@medium bui-grid__column-2@large">
                                                    <div class="photo-item__photo">
                                                        <img
                                                            src="https://q-xx.bstatic.com/xdata/images/hotel/square200/335583325.jpg?k=7a89f7482d16584fb12907e8de4f824a3c18be6a4e28e4ec05fb9a6603f55df1&o=">
                                                        <div class="photo-item__tag-warning">
                                                            <svg width="16" height="16" color="#FEBB02" fill="#FEBB02"
                                                                viewBox="0 0 24 24" role="presentation"
                                                                aria-hidden="true" focusable="false"
                                                                class="bk-icon -streamline-label"
                                                                style="user-select: auto;">
                                                                <path
                                                                    d="M.311 2.56v6.257a3.75 3.75 0 0 0 1.098 2.651l11.56 11.562a2.25 2.25 0 0 0 3.182 0l6.88-6.88a2.25 2.25 0 0 0 0-3.181L11.468 1.408A3.75 3.75 0 0 0 8.818.31H2.56a2.25 2.25 0 0 0-2.25 2.25zm1.5 0a.75.75 0 0 1 .75-.75h6.257a2.25 2.25 0 0 1 1.59.659l11.562 11.56a.75.75 0 0 1 0 1.06l-6.88 6.88a.75.75 0 0 1-1.06 0L2.47 10.409a2.25 2.25 0 0 1-.659-1.59V2.56zm5.25 3.75a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0zm1.5 0a2.25 2.25 0 1 0-4.5 0 2.25 2.25 0 0 0 4.5 0z"
                                                                    style="user-select: auto;"></path>
                                                            </svg>
                                                            &nbsp;<span>태그 추가</span>
                                                        </div>
                                                        <div class="photo-uploader">
                                                            <input type="file" class="visually-hidden">
                                                            <div class="photo-item-container-overlay">
                                                                <div class="photo-info-container">
                                                                    <div class="warning-icon-container">
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-warning"
                                                                            style="user-select: auto;">
                                                                            <path
                                                                                d="M12 15.75A1.125 1.125 0 1 0 12 18a1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm.75-2.25V5.25a.75.75 0 0 0-1.5 0v8.25a.75.75 0 0 0 1.5 0zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                                                style="user-select: auto;"></path>
                                                                        </svg>
                                                                    </div>
                                                                    <div class="photo-resolution warning-resolution">
                                                                        1024&nbsp;x&nbsp;683px</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <span class="photo-item__preferred-badge">
                                                            <span>선호하는 메인 사진</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div
                                                    class="photo-item-container photo-item-container__draggable bui-grid__column-6 bui-grid__column-3@medium bui-grid__column-2@large">
                                                    <div class="photo-item__photo">
                                                        <img
                                                            src="https://q-xx.bstatic.com/xdata/images/hotel/square200/335583325.jpg?k=7a89f7482d16584fb12907e8de4f824a3c18be6a4e28e4ec05fb9a6603f55df1&o=">
                                                        <div class="photo-item__tag-warning">
                                                            <svg width="16" height="16" color="#FEBB02" fill="#FEBB02"
                                                                viewBox="0 0 24 24" role="presentation"
                                                                aria-hidden="true" focusable="false"
                                                                class="bk-icon -streamline-label"
                                                                style="user-select: auto;">
                                                                <path
                                                                    d="M.311 2.56v6.257a3.75 3.75 0 0 0 1.098 2.651l11.56 11.562a2.25 2.25 0 0 0 3.182 0l6.88-6.88a2.25 2.25 0 0 0 0-3.181L11.468 1.408A3.75 3.75 0 0 0 8.818.31H2.56a2.25 2.25 0 0 0-2.25 2.25zm1.5 0a.75.75 0 0 1 .75-.75h6.257a2.25 2.25 0 0 1 1.59.659l11.562 11.56a.75.75 0 0 1 0 1.06l-6.88 6.88a.75.75 0 0 1-1.06 0L2.47 10.409a2.25 2.25 0 0 1-.659-1.59V2.56zm5.25 3.75a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0zm1.5 0a2.25 2.25 0 1 0-4.5 0 2.25 2.25 0 0 0 4.5 0z"
                                                                    style="user-select: auto;"></path>
                                                            </svg>
                                                            &nbsp;<span>태그 추가</span>
                                                        </div>
                                                        <div class="photo-uploader">
                                                            <input type="file" class="visually-hidden">
                                                            <div class="photo-item-container-overlay">
                                                                <div class="photo-info-container">
                                                                    <div class="warning-icon-container">
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-warning"
                                                                            style="user-select: auto;">
                                                                            <path
                                                                                d="M12 15.75A1.125 1.125 0 1 0 12 18a1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm.75-2.25V5.25a.75.75 0 0 0-1.5 0v8.25a.75.75 0 0 0 1.5 0zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                                                style="user-select: auto;"></path>
                                                                        </svg>
                                                                    </div>
                                                                    <div class="photo-resolution warning-resolution">
                                                                        1024&nbsp;x&nbsp;683px</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                    class="photo-item-container photo-item-container__draggable bui-grid__column-6 bui-grid__column-3@medium bui-grid__column-2@large">
                                                    <div class="photo-item__photo">
                                                        <img
                                                            src="https://q-xx.bstatic.com/xdata/images/hotel/square200/335583325.jpg?k=7a89f7482d16584fb12907e8de4f824a3c18be6a4e28e4ec05fb9a6603f55df1&o=">
                                                        <div class="photo-item__tag-warning">
                                                            <svg width="16" height="16" color="#FEBB02" fill="#FEBB02"
                                                                viewBox="0 0 24 24" role="presentation"
                                                                aria-hidden="true" focusable="false"
                                                                class="bk-icon -streamline-label"
                                                                style="user-select: auto;">
                                                                <path
                                                                    d="M.311 2.56v6.257a3.75 3.75 0 0 0 1.098 2.651l11.56 11.562a2.25 2.25 0 0 0 3.182 0l6.88-6.88a2.25 2.25 0 0 0 0-3.181L11.468 1.408A3.75 3.75 0 0 0 8.818.31H2.56a2.25 2.25 0 0 0-2.25 2.25zm1.5 0a.75.75 0 0 1 .75-.75h6.257a2.25 2.25 0 0 1 1.59.659l11.562 11.56a.75.75 0 0 1 0 1.06l-6.88 6.88a.75.75 0 0 1-1.06 0L2.47 10.409a2.25 2.25 0 0 1-.659-1.59V2.56zm5.25 3.75a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0zm1.5 0a2.25 2.25 0 1 0-4.5 0 2.25 2.25 0 0 0 4.5 0z"
                                                                    style="user-select: auto;"></path>
                                                            </svg>
                                                            &nbsp;<span>태그 추가</span>
                                                        </div>
                                                        <div class="photo-uploader">
                                                            <input type="file" class="visually-hidden">
                                                            <div class="photo-item-container-overlay">
                                                                <div class="photo-info-container">
                                                                    <div class="warning-icon-container">
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-warning"
                                                                            style="user-select: auto;">
                                                                            <path
                                                                                d="M12 15.75A1.125 1.125 0 1 0 12 18a1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm.75-2.25V5.25a.75.75 0 0 0-1.5 0v8.25a.75.75 0 0 0 1.5 0zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                                                style="user-select: auto;"></path>
                                                                        </svg>
                                                                    </div>
                                                                    <div class="photo-resolution warning-resolution">
                                                                        1024&nbsp;x&nbsp;683px</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                    class="photo-item-container photo-item-container__draggable bui-grid__column-6 bui-grid__column-3@medium bui-grid__column-2@large">
                                                    <div class="photo-item__photo">
                                                        <img
                                                            src="https://q-xx.bstatic.com/xdata/images/hotel/square200/335583325.jpg?k=7a89f7482d16584fb12907e8de4f824a3c18be6a4e28e4ec05fb9a6603f55df1&o=">
                                                        <div class="photo-item__tag-warning">
                                                            <svg width="16" height="16" color="#FEBB02" fill="#FEBB02"
                                                                viewBox="0 0 24 24" role="presentation"
                                                                aria-hidden="true" focusable="false"
                                                                class="bk-icon -streamline-label"
                                                                style="user-select: auto;">
                                                                <path
                                                                    d="M.311 2.56v6.257a3.75 3.75 0 0 0 1.098 2.651l11.56 11.562a2.25 2.25 0 0 0 3.182 0l6.88-6.88a2.25 2.25 0 0 0 0-3.181L11.468 1.408A3.75 3.75 0 0 0 8.818.31H2.56a2.25 2.25 0 0 0-2.25 2.25zm1.5 0a.75.75 0 0 1 .75-.75h6.257a2.25 2.25 0 0 1 1.59.659l11.562 11.56a.75.75 0 0 1 0 1.06l-6.88 6.88a.75.75 0 0 1-1.06 0L2.47 10.409a2.25 2.25 0 0 1-.659-1.59V2.56zm5.25 3.75a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0zm1.5 0a2.25 2.25 0 1 0-4.5 0 2.25 2.25 0 0 0 4.5 0z"
                                                                    style="user-select: auto;"></path>
                                                            </svg>
                                                            &nbsp;<span>태그 추가</span>
                                                        </div>
                                                        <div class="photo-uploader">
                                                            <input type="file" class="visually-hidden">
                                                            <div class="photo-item-container-overlay">
                                                                <div class="photo-info-container">
                                                                    <div class="warning-icon-container">
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-warning"
                                                                            style="user-select: auto;">
                                                                            <path
                                                                                d="M12 15.75A1.125 1.125 0 1 0 12 18a1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm.75-2.25V5.25a.75.75 0 0 0-1.5 0v8.25a.75.75 0 0 0 1.5 0zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                                                style="user-select: auto;"></path>
                                                                        </svg>
                                                                    </div>
                                                                    <div class="photo-resolution warning-resolution">
                                                                        1024&nbsp;x&nbsp;683px</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                    class="photo-item-container photo-item-container__draggable bui-grid__column-6 bui-grid__column-3@medium bui-grid__column-2@large">
                                                    <div class="photo-item__photo">
                                                        <img
                                                            src="https://q-xx.bstatic.com/xdata/images/hotel/square200/335583325.jpg?k=7a89f7482d16584fb12907e8de4f824a3c18be6a4e28e4ec05fb9a6603f55df1&o=">
                                                        <div class="photo-item__tag-warning">
                                                            <svg width="16" height="16" color="#FEBB02" fill="#FEBB02"
                                                                viewBox="0 0 24 24" role="presentation"
                                                                aria-hidden="true" focusable="false"
                                                                class="bk-icon -streamline-label"
                                                                style="user-select: auto;">
                                                                <path
                                                                    d="M.311 2.56v6.257a3.75 3.75 0 0 0 1.098 2.651l11.56 11.562a2.25 2.25 0 0 0 3.182 0l6.88-6.88a2.25 2.25 0 0 0 0-3.181L11.468 1.408A3.75 3.75 0 0 0 8.818.31H2.56a2.25 2.25 0 0 0-2.25 2.25zm1.5 0a.75.75 0 0 1 .75-.75h6.257a2.25 2.25 0 0 1 1.59.659l11.562 11.56a.75.75 0 0 1 0 1.06l-6.88 6.88a.75.75 0 0 1-1.06 0L2.47 10.409a2.25 2.25 0 0 1-.659-1.59V2.56zm5.25 3.75a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0zm1.5 0a2.25 2.25 0 1 0-4.5 0 2.25 2.25 0 0 0 4.5 0z"
                                                                    style="user-select: auto;"></path>
                                                            </svg>
                                                            &nbsp;<span>태그 추가</span>
                                                        </div>
                                                        <div class="photo-uploader">
                                                            <input type="file" class="visually-hidden">
                                                            <div class="photo-item-container-overlay">
                                                                <div class="photo-info-container">
                                                                    <div class="warning-icon-container">
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-warning"
                                                                            style="user-select: auto;">
                                                                            <path
                                                                                d="M12 15.75A1.125 1.125 0 1 0 12 18a1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm.75-2.25V5.25a.75.75 0 0 0-1.5 0v8.25a.75.75 0 0 0 1.5 0zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                                                style="user-select: auto;"></path>
                                                                        </svg>
                                                                    </div>
                                                                    <div class="photo-resolution warning-resolution">
                                                                        1024&nbsp;x&nbsp;683px</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                    class="photo-item-container photo-item-container__draggable bui-grid__column-6 bui-grid__column-3@medium bui-grid__column-2@large">
                                                    <div class="photo-item__photo">
                                                        <img
                                                            src="https://q-xx.bstatic.com/xdata/images/hotel/square200/335583325.jpg?k=7a89f7482d16584fb12907e8de4f824a3c18be6a4e28e4ec05fb9a6603f55df1&o=">
                                                        <div class="photo-item__tag-warning">
                                                            <svg width="16" height="16" color="#FEBB02" fill="#FEBB02"
                                                                viewBox="0 0 24 24" role="presentation"
                                                                aria-hidden="true" focusable="false"
                                                                class="bk-icon -streamline-label"
                                                                style="user-select: auto;">
                                                                <path
                                                                    d="M.311 2.56v6.257a3.75 3.75 0 0 0 1.098 2.651l11.56 11.562a2.25 2.25 0 0 0 3.182 0l6.88-6.88a2.25 2.25 0 0 0 0-3.181L11.468 1.408A3.75 3.75 0 0 0 8.818.31H2.56a2.25 2.25 0 0 0-2.25 2.25zm1.5 0a.75.75 0 0 1 .75-.75h6.257a2.25 2.25 0 0 1 1.59.659l11.562 11.56a.75.75 0 0 1 0 1.06l-6.88 6.88a.75.75 0 0 1-1.06 0L2.47 10.409a2.25 2.25 0 0 1-.659-1.59V2.56zm5.25 3.75a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0zm1.5 0a2.25 2.25 0 1 0-4.5 0 2.25 2.25 0 0 0 4.5 0z"
                                                                    style="user-select: auto;"></path>
                                                            </svg>
                                                            &nbsp;<span>태그 추가</span>
                                                        </div>
                                                        <div class="photo-uploader">
                                                            <input type="file" class="visually-hidden">
                                                            <div class="photo-item-container-overlay">
                                                                <div class="photo-info-container">
                                                                    <div class="warning-icon-container">
                                                                        <svg width="16" height="16" fill="currentColor"
                                                                            viewBox="0 0 24 24" role="presentation"
                                                                            aria-hidden="true" focusable="false"
                                                                            class="bk-icon -streamline-warning"
                                                                            style="user-select: auto;">
                                                                            <path
                                                                                d="M12 15.75A1.125 1.125 0 1 0 12 18a1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm.75-2.25V5.25a.75.75 0 0 0-1.5 0v8.25a.75.75 0 0 0 1.5 0zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                                                style="user-select: auto;"></path>
                                                                        </svg>
                                                                    </div>
                                                                    <div class="photo-resolution warning-resolution">
                                                                        1024&nbsp;x&nbsp;683px</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                    class="photo-item-container bui-grid__column-6 bui-grid__colum-3@medium bui-grid__column-2@large">
                                                    <div class="photo-item__empty">
                                                        <div class="add-photo-container">
                                                            <svg viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" height="24" width="24" focusable="false"
                                                                role="presentation" class="bk-icon -streamline-landscape" style="user-select: auto;">
                                                                <path
                                                                    d="M22.5 12v9.75a.75.75 0 0 1-.75.75H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75V12zm1.5 0V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h19.5A2.25 2.25 0 0 0 24 21.75V12zM5.85 17.7l3.462-4.616a.75.75 0 0 1 1.13-.08l1.028 1.026a.75.75 0 0 0 1.13-.08l3.3-4.4a.75.75 0 0 1 1.2 0l2.67 3.56a.75.75 0 1 0 1.2-.9L18.3 8.65a2.248 2.248 0 0 0-3.6 0l-3.3 4.4 1.13-.08-1.027-1.027a2.25 2.25 0 0 0-3.391.242L4.65 16.8a.75.75 0 1 0 1.2.9zM7.5 6.375a1.125 1.125 0 1 1-2.25 0 1.125 1.125 0 0 1 2.25 0zm1.5 0a2.625 2.625 0 1 0-5.25 0 2.625 2.625 0 0 0 5.25 0zM.75 18h22.5a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5z"
                                                                    style="user-select: auto;"></path>
                                                            </svg>
                                                            <span class="add-photo-title">
                                                                <span>사진 추가</span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p class="photo-page-footer">
                                <span>
                                    사진 사용과 관련한 정책은 <a href="#">여기</a>에서 확인하시기 바랍니다.
                                </span>
                            </p>
                        </div>
                    </main>
                    <jsp:include page="/WEB-INF/partner/footer.jsp"/>
                </div>
            </div>
        </main>
    </div>
</body>
</html>