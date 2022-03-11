<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/set-policies.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>${hotel.hotelname} · 정책</title>
</head>
<body
    class="m-property_details m-facilities ua-chrome-97 ua-chrom is_desktop is_cjk is_new_hnav fix-badge-color env-self-manage facilities-buification-1 contents-ready">
    <div id="main-container" class="container-fluid tfa_phone_alt container-fluid--color">
    	<jsp:include page="/WEB-INF/partner/header.jsp"/>
        <main class="main">
                        <div class="bui-container bui-container--center">
                            <div class="bui-page-header">
                                <h1 class="bui-page-header__title">
                                    <span>정책</span>
                                </h1>
                                <p class="bui-page-header__description">
                                    <span>모든 결제, 취소 및 기타 정책 정보를 여기서 찾을 수 있습니다. 한 곳에서 한눈에 보고 쉽게 관리할 수 있도록 하였습니다.</span>
                                </p>
                            </div>
                            <div>
                                <div class="bui-spacer">
                                    <h2>취소 및 선결제 정책</h2>
                                    <hr class="bui-divider">
                                </div>
                                <div class="policies-group">
                                    <div class="cancellation-policies-wrapper">
                                        <div class="policies-block">
                                            <div class="policy-block__content">
                                                <div class="policy-block__row">
                                                    <div class="policy-block__col-info">
                                                        <header
                                                            class="policy-block__header-wrapper policy-block__header-wrapper_transparent">
                                                            <h4 class="policy-block__header js-smp-term-title">변경 가능 -
                                                                1일 전까지</h4>
                                                        </header>
                                                        <div class="policy-block__content-wrapper">
                                                            <ul class="policy-block__item-option-list">
                                                                <li class="policy-block__item-option">체크인 날짜까지 하루 이상 남은
                                                                    경우 무료 취소가 가능합니다. 체크인 날짜까지 1일 남은 시점부터는 취소할 경우 고객이
                                                                    지불해야 할 위약금으로 총 예약 요금이 부과됩니다.</li>
                                                                <li class="policy-block__item-option">선결제가 필요 없습니다.</li>
                                                            </ul>
                                                            <p><span>캘린더에서 특정 일자에 환불 불가 정책을 설정할 수 있습니다.</span></p>
                                                        </div>
                                                        <div class="policy-block__button-wrapper">
                                                            <button type="button" href="#modal" id="btnEdit" class="bui-button bui-button--primary">
                                                                <span class="bui-button__text"><span>수정</span></span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="ChildrenAndExtraBeds">
                                <div class="bui-spacer">
                                    <h2>아동 & 반려동물 정책</h2>
                                    <hr class="bui-divider">
                                </div>
                                <div class="policies-group">
                                    <div class="policies-block">
                                        <div class="policies-block__content">
                                            <header class="policies-block__header-wrapper">
                                                <h4 class="policies-block__header">아동 정책</h4>
                                            </header>
                                            <div class="policies-block__content-wrapper">
                                                <h6 class="policy-block__item-header"><span>아동 정책</span></h6>
                                                <ul>
                                                    <li><span>아동 이용 불가</span></li>
                                                </ul>
                                                <h6 class="policy-block__item-header"><span>아동 요금</span></h6>
                                                <ul>
                                                    <li><span>아동 요금이 설정되어 있지 않습니다</span></li>
                                                </ul>
                                            </div>
                                            <div class="policies-block__footer">
                                                <button type="button" href="#modalKid" class="bui-button bui-button--primary" id="btnKid">
                                                    <span class="bui-button__text"><span>수정</span></span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="policies-block">
                                        <div class="policies-block__content">
                                            <header class="policies-block__header-wrapper">
                                                <h4 class="policies-block__header">반려동물 </h4>
                                            </header>
                                            <div class="policies-block__content-wrapper">
                                                <h6 class="policy-block__item-header"><span>반려동물 동반</span></h6>
                                                <ul>
                                                    <li><span>반려동물 동반을 허용하지 않습니다.</span></li>
                                                </ul>
                                            </div>
                                            <div class="policies-block__footer">
                                                <button type="button" class="bui-button bui-button--primary" href="#modalPet" id="btnPet">
                                                    <span class="bui-button__text"><span>수정</span></span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="Rest">
                                <div class="bui-spacer">
                                    <h2>다른 정책</h2>
                                    <hr class="bui-divider">
                                </div>
                                <div class="policies-group">
                                    <div class="policies-block">
                                        <div class="policies-block__content">
                                            <header class="policies-block__header-wrapper">
                                                <h4 class="policies-block__header">투숙객 결제 옵션</h4>
                                            </header>
                                            <div class="policies-block__content-wrapper">
                                                <div>
                                                    <h6 class="policy-block__item-header"><span>현금만 허용</span></h6>
                                                </div>
                                            </div>
                                            <div class="policies-block__footer">
                                                <button type="button" class="bui-button bui-button--primary">
                                                    <span class="bui-button__text">
                                                        <span>수정</span>
                                                    </span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="policies-block">
                                        <div class="policies-block__content">
                                            <header class="policies-block__header-wrapper">
                                                <h4 class="policies-block__header">인터넷 및 주차</h4>
                                            </header>
                                            <div class="policies-block__content-wrapper">
                                                <h6 class="policy-block__item-header"><span>인터넷</span></h6>
                                                <ul>
                                                    <li><span>인터넷 접속이 불가능합니다</span></li>
                                                </ul>
                                                <h6 class="policy-block__item-header"><span>주차</span></h6>
                                                <ul class="policy-block__list-item-alert">
                                                    <div class="bui-alert bui-alert--inline bui-alert--info">
                                                        <span class="icon--hint bui-alert__icon">
                                                            <svg data-test-id="default-icon"
                                                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                                                                style="user-select: auto;">
                                                                <path
                                                                    d="M14.25 15.75h-.75a.75.75 0 0 1-.75-.75v-3.75a1.5 1.5 0 0 0-1.5-1.5h-.75a.75.75 0 0 0 0 1.5h.75V15a2.25 2.25 0 0 0 2.25 2.25h.75a.75.75 0 0 0 0-1.5zM11.625 6a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                                                    style="user-select: auto;"></path>
                                                            </svg>
                                                        </span>
                                                        <div class="bui-alert__description">
                                                            <p class="bui-alert__text">
                                                                <span>주차 관련 정보는 <a href="#">시설 및 서비스</a> 페이지에서 확인하실 수
                                                                    있습니다</span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </ul>
                                            </div>
                                            <div class="policies-block__footer">
                                                <button type="button" class="bui-button bui-button--primary" href="#modalWifi" id="btnWifi">
                                                    <span class="bui-button__text"><span>수정</span></span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="policies-block">
                                        <div class="policies-block__content">
                                            <header class="policies-block__header-wrapper">
                                                <h4 class="policies-block__header">고객 정보</h4>
                                            </header>
                                            <div class="policies-block__content-wrapper">
                                                <div>
                                                    <h6 class="policy-block__item-header"><span>체크인/체크아웃 시간</span></h6>
                                                    <ul>
                                                        <li class="policy-block__item-option">
                                                            <span>15:00부터 체크인</span>
                                                        </li>
                                                        <li class="policy-block__item-option">
                                                            <span>11:00까지 체크아웃</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div>
                                                    <h6 class="policy-block__item-header"><span>고객 주소</span></h6>
                                                    <ul>
                                                        <li class="policy-block__item-option">
                                                            <span>예약 시 주소를 기입하지 않아도 괜찮습니다.</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div>
                                                    <h6 class="policy-block__item-header"><span>고객 전화번호</span></h6>
                                                    <ul>
                                                        <li class="policy-block__item-option">
                                                            <span>예약 시 전화번호를 기입해야 합니다.</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                                
                                            </div>
                                            <div class="policies-block__footer">
                                                <button type="button" class="bui-button bui-button--primary" href="#timeModal" id="btnTime">
                                                    <span class="bui-button__text">
                                                        <span>수정</span>
                                                    </span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="policies-block">
                                        <div class="policies-block__content">
                                            <header class="policies-block__header-wrapper">
                                                <h4 class="policies-block__header">흡연 정책</h4>
                                            </header>
                                            <div class="policies-block__content-wrapper">
                                                <h6 class="policy-block__item-header"><span>귀사께서 적용한 흡연 정책은 다음과
                                                        같습니다</span></h6>
                                                <ul>
                                                    <li><span>숙소에서 흡연이 불가능합니다</span></li>
                                                </ul>
                                            </div>
                                            <div class="policies-block__footer">
                                                <button type="button" class="bui-button bui-button--primary" href="#smokingModal" id="btnSmoking">
                                                    <span class="bui-button__text"><span>수정</span></span>
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
    <div class="bui-modal" id="cancellation-modal">
    	<form action="${contextPath}/update-policies.pdo" method="post">
        <div class="bui-modal__wrapper">
            <div class="bui-modal__align">
                <aside class="bui-modal__content bui-f-depth-1">
                    <div class="bui-modal__body">
                        <div>
                            <h3 class="policy-form-title">변경 가능 - 1일 전까지 </h3>
                            <div>
                                <div class="policy-form-section">
                                    <h4 class="policy-form-section-title">
                                        <span>조건 설정</span>
                                    </h4>
                                    <ul class="list-unstyled row clearfix list-smp-customized-condition">
                                        <li class="col-xs-12 col-sm-6">
                                            <div>
                                                <div class="form-group">
                                                    <label>체크인 이전 언제까지 고객이 무료로 취소할 수 있습니까?</label>
                                                    <select class="form-control" name="free_cancel_allowed">
                                                        <option value="18h">도착일(18:00)</option>
                                                        <option value="1d">1일</option>
                                                        <option value="2d">2일</option>
                                                        <option value="3d">3일</option>
                                                        <option value="7d">7일</option>
                                                        <option value="14d">14일</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label>무료 취소 기한이 경과한 시점부터는 취소 시 고객이 지불해야 할 금액이 얼마입니까?</label>
                                                    <select class="form-control" name="refund_policy">
                                                        <option value="1">숙박료 전액을 지불합니다.</option>
                                                        <option value="0">첫 1박 요금을 지불합니다.</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div></div>
                        </div>
                    </div>
                    <footer class="bui-modal__footer">
                        <div class="bui-group bui-group--inline">
                            <button type="submit" class="bui-button bui-button--primary">
                                <span class="bui-button__text"><span>저장</span></span>
                            </button>
                            <button type="button" id="btnClose" class="bui-button bui-button--secondary">
                                <span class="bui-button__text"><span>취소</span></span>
                            </button>
                        </div>
                    </footer>
                    <button type="button" id="xClose" class="bui-modal__close">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                            <path
                                d="M13 12l6.26-6.26a.73.73 0 0 0-1-1L12 11 5.74 4.71a.73.73 0 1 0-1 1L11 12l-6.29 6.26a.73.73 0 0 0 .52 1.24.73.73 0 0 0 .51-.21L12 13l6.26 6.26a.74.74 0 0 0 1 0 .74.74 0 0 0 0-1z">
                            </path>
                        </svg>
                    </button>
                </aside>
            </div>
            <div class="bui-modal__overlay"></div>
        </div>
    	</form>
    </div>
    <div class="bui-modal bui-modal-kid" id="kid-modal">
   	<form action="${contextPath}/update-kid-policies.pdo" method="post">
    <div class="bui-modal__wrapper">
  	        <div class="bui-modal__align">
                <aside class="bui-modal__content bui-f-depth-1">
                    <div class="bui-modal__body">
                        <div>
                            <h3 class="policy-form-title">아동</h3>
                            <div>
                                <div class="policy-form-section">
                                    <h4 class="policy-form-section-title">
                                        <span>조건 설정</span>
                                    </h4>
                                    <ul class="list-unstyled row clearfix list-smp-customized-condition">
                                        <li class="col-xs-12 col-sm-6">
                                            <div>
                                                <div class="form-group">
                                                    <label>만 18세 미만의 아동 숙박이 가능한가요?</label>
                                                    <select class="form-control" name="kid_allowed">
                                                        <option value="true">예</option>
                                                        <option value="false">아니오</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div></div>
                        </div>
                    </div>
                    <footer class="bui-modal__footer">
                        <div class="bui-group bui-group--inline">
                            <button type="submit" class="bui-button bui-button--primary">
                                <span class="bui-button__text"><span>저장</span></span>
                            </button>
                            <button type="button" id="btnCloseKid" class="bui-button bui-button--secondary">
                                <span class="bui-button__text"><span>취소</span></span>
                            </button>
                        </div>
                    </footer>
                    <button type="button" id="xCloseKid" class="bui-modal__close">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                            <path
                                d="M13 12l6.26-6.26a.73.73 0 0 0-1-1L12 11 5.74 4.71a.73.73 0 1 0-1 1L11 12l-6.29 6.26a.73.73 0 0 0 .52 1.24.73.73 0 0 0 .51-.21L12 13l6.26 6.26a.74.74 0 0 0 1 0 .74.74 0 0 0 0-1z">
                            </path>
                        </svg>
                    </button>
                </aside>
            </div>
            <div class="bui-modal__overlay"></div>
        </div>
    	</form>
    </div>
    <div class="bui-modal bui-modal-time" id="check-in-out-modal">
    	<form action="${contextPath}/update-time-policies.pdo" method="post">
        <div class="bui-modal__wrapper">
            <div class="bui-modal__align">
                <aside class="bui-modal__content bui-f-depth-1">
                    <div class="bui-modal__body">
                        <div>
                            <h3 class="policy-form-title">체크인/체크아웃 </h3>
                            <div>
                                <div class="policy-form-section">
                                    <h4 class="policy-form-section-title">
                                        <span>체크인/체크아웃 시간을 선택해 주세요.</span>
                                    </h4>
                                    <ul class="list-unstyled row clearfix list-smp-customized-condition">
                                        <li class="col-xs-12 col-sm-6">
                                            <div>
                                                <div class="form-group">
                                                    <label>체크인 시간</label>
                                                    <select class="form-control" name="check_in_start">
                                                        <option value="14">14:00</option>
                                                        <option value="15">15:00</option>
                                                        <option value="16">16:00</option>
                                                        <option value="18">18:00</option>
                                                    </select>
                                                    부터
                                                    <select class="form-control" name="check_in_end">
                                                        <option value="19">19:00</option>
                                                        <option value="20">20:00</option>
                                                        <option value="21">21:00</option>
                                                        <option value="22">22:00</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label>체크아웃 시간</label>
                                                    <select class="form-control" name="check_out_start">
                                                        <option value="06">06:00</option>
                                                        <option value="07">07:00</option>
                                                        <option value="08">08:00</option>
                                                        <option value="09">09:00</option>
                                                    </select>
                                                    부터
                                                    <select class="form-control" name="check_out_end">
                                                        <option value="11">11:00</option>
                                                        <option value="12">12:00</option>
                                                        <option value="13">13:00</option>
                                                        <option value="14">14:00</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <footer class="bui-modal__footer">
                        <div class="bui-group bui-group--inline">
                            <button type="submit" class="bui-button bui-button--primary">
                                <span class="bui-button__text"><span>저장</span></span>
                            </button>
                            <button type="button" id="btnCloseTime" class="bui-button bui-button--secondary">
                                <span class="bui-button__text"><span>취소</span></span>
                            </button>
                        </div>
                    </footer>
                    <button type="button" id="xCloseTime" class="bui-modal__close">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                            <path
                                d="M13 12l6.26-6.26a.73.73 0 0 0-1-1L12 11 5.74 4.71a.73.73 0 1 0-1 1L11 12l-6.29 6.26a.73.73 0 0 0 .52 1.24.73.73 0 0 0 .51-.21L12 13l6.26 6.26a.74.74 0 0 0 1 0 .74.74 0 0 0 0-1z">
                            </path>
                        </svg>
                    </button>
                </aside>
            </div>
            <div class="bui-modal__overlay"></div>
        </div>
    	</form>
    </div>
        <div class="bui-modal bui-modal-wifi" id="wifi-modal">
    	<form action="${contextPath}/update-wifi-policies.pdo" method="post">
        <div class="bui-modal__wrapper">
            <div class="bui-modal__align">
                <aside class="bui-modal__content bui-f-depth-1">
                    <div class="bui-modal__body">
                        <div>
                            <h3 class="policy-form-title">인터넷 </h3>
                            <div>
                                <div class="policy-form-section">
                                    <h4 class="policy-form-section-title">
                                        <span>인터넷 이용가능 여부를 선택해 주세요.</span>
                                    </h4>
                                    <ul class="list-unstyled row clearfix list-smp-customized-condition">
                                        <li class="col-xs-12 col-sm-6">
                                            <div>
                                                <div class="form-group">
                                                    <label>인터넷 이용이 가능한가요?</label>
                                                    <select class="form-control" name="wifi">
                                                        <option value="true">예</option>
                                                        <option value="false">아니오</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div></div>
                        </div>
                    </div>
                    <footer class="bui-modal__footer">
                        <div class="bui-group bui-group--inline">
                            <button type="submit" class="bui-button bui-button--primary">
                                <span class="bui-button__text"><span>저장</span></span>
                            </button>
                            <button type="button" id="btnCloseWifi" class="bui-button bui-button--secondary">
                                <span class="bui-button__text"><span>취소</span></span>
                            </button>
                        </div>
                    </footer>
                    <button type="button" id="xCloseWifi" class="bui-modal__close">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                            <path
                                d="M13 12l6.26-6.26a.73.73 0 0 0-1-1L12 11 5.74 4.71a.73.73 0 1 0-1 1L11 12l-6.29 6.26a.73.73 0 0 0 .52 1.24.73.73 0 0 0 .51-.21L12 13l6.26 6.26a.74.74 0 0 0 1 0 .74.74 0 0 0 0-1z">
                            </path>
                        </svg>
                    </button>
                </aside>
            </div>
            <div class="bui-modal__overlay"></div>
        </div>
    	</form>
    </div>
    <div class="bui-modal bui-modal-pet" id="pet-modal">
   	<form action="${contextPath}/update-pet-policies.pdo" method="post">
    <div class="bui-modal__wrapper">
  	        <div class="bui-modal__align">
                <aside class="bui-modal__content bui-f-depth-1">
                    <div class="bui-modal__body">
                        <div>
                            <h3 class="policy-form-title">반려동물</h3>
                            <div>
                                <div class="policy-form-section">
                                    <h4 class="policy-form-section-title">
                                        <span>조건 설정</span>
                                    </h4>
                                    <ul class="list-unstyled row clearfix list-smp-customized-condition">
                                        <li class="col-xs-12 col-sm-6">
                                            <div>
                                                <div class="form-group">
                                                    <label>숙소 내 반려동물의 동반이 가능한가요?</label>
                                                    <select class="form-control" name="pet_allowed">
                                                        <option value="true">예</option>
                                                        <option value="false">아니오</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div></div>
                        </div>
                    </div>
                    <footer class="bui-modal__footer">
                        <div class="bui-group bui-group--inline">
                            <button type="submit" class="bui-button bui-button--primary">
                                <span class="bui-button__text"><span>저장</span></span>
                            </button>
                            <button type="button" id="btnClosePet" class="bui-button bui-button--secondary">
                                <span class="bui-button__text"><span>취소</span></span>
                            </button>
                        </div>
                    </footer>
                    <button type="button" id="xClosePet" class="bui-modal__close">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                            <path
                                d="M13 12l6.26-6.26a.73.73 0 0 0-1-1L12 11 5.74 4.71a.73.73 0 1 0-1 1L11 12l-6.29 6.26a.73.73 0 0 0 .52 1.24.73.73 0 0 0 .51-.21L12 13l6.26 6.26a.74.74 0 0 0 1 0 .74.74 0 0 0 0-1z">
                            </path>
                        </svg>
                    </button>
                </aside>
            </div>
            <div class="bui-modal__overlay"></div>
        </div>
    	</form>
    </div>
    <div class="bui-modal bui-modal-smoking" id="smoking-modal">
   	<form action="${contextPath}/update-smoking-policies.pdo" method="post">
    <div class="bui-modal__wrapper">
  	        <div class="bui-modal__align">
                <aside class="bui-modal__content bui-f-depth-1">
                    <div class="bui-modal__body">
                        <div>
                            <h3 class="policy-form-title">흡연 정책</h3>
                            <div>
                                <div class="policy-form-section">
                                    <h4 class="policy-form-section-title">
                                        <span>조건 설정</span>
                                    </h4>
                                    <ul class="list-unstyled row clearfix list-smp-customized-condition">
                                        <li class="col-xs-12 col-sm-6">
                                            <div>
                                                <div class="form-group">
                                                    <label>숙소 내에서 흡연이 가능한가요?</label>
                                                    <select class="form-control" name="smoking">
                                                        <option value="true">예</option>
                                                        <option value="false">아니오</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div></div>
                        </div>
                    </div>
                    <footer class="bui-modal__footer">
                        <div class="bui-group bui-group--inline">
                            <button type="submit" class="bui-button bui-button--primary">
                                <span class="bui-button__text"><span>저장</span></span>
                            </button>
                            <button type="button" id="btnCloseSmoking" class="bui-button bui-button--secondary">
                                <span class="bui-button__text"><span>취소</span></span>
                            </button>
                        </div>
                    </footer>
                    <button type="button" id="xCloseSmoking" class="bui-modal__close">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                            <path
                                d="M13 12l6.26-6.26a.73.73 0 0 0-1-1L12 11 5.74 4.71a.73.73 0 1 0-1 1L11 12l-6.29 6.26a.73.73 0 0 0 .52 1.24.73.73 0 0 0 .51-.21L12 13l6.26 6.26a.74.74 0 0 0 1 0 .74.74 0 0 0 0-1z">
                            </path>
                        </svg>
                    </button>
                </aside>
            </div>
            <div class="bui-modal__overlay"></div>
        </div>
    	</form>
    </div>
    <script type="text/javascript">
        const open = document.getElementById("btnEdit");
        const close = document.getElementById("btnClose");
        const closeModal = document.getElementById("xClose");
        const modal = document.querySelector(".bui-modal");
        open.addEventListener('click', () => {
           modal.style.display = 'block';
        });
        close.addEventListener('click', () => {
           modal.style.display = 'none';
        });
        closeModal.addEventListener('click', () => {
        	modal.style.display = 'none';
        });
        const openKid = document.getElementById("btnKid");
        const closeKid = document.getElementById("btnCloseKid");
        const closeKidModal = document.getElementById("xCloseKid");
        const kidModal = document.querySelector(".bui-modal-kid");
        openKid.addEventListener('click', () => {
           kidModal.style.display = 'block';
        });
        closeKid.addEventListener('click', () => {
           kidModal.style.display = 'none';
        });
        closeKidModal.addEventListener('click', () => {
        	kidModal.style.display = 'none';
        });
        const openTime = document.getElementById("btnTime");
        const closeTime = document.getElementById("btnCloseTime");
        const closeTimeModal = document.getElementById("xCloseTime");
        const timeModal = document.querySelector(".bui-modal-time");
        openTime.addEventListener('click', () => {
           timeModal.style.display = 'block';
        });
        closeTime.addEventListener('click', () => {
           timeModal.style.display = 'none';
        });
        closeTimeModal.addEventListener('click', () => {
        	timeModal.style.display = 'none';
        });
        const openWifi = document.getElementById("btnWifi");
        const closeWifi = document.getElementById("btnCloseWifi");
        const closeWifiModal = document.getElementById("xCloseWifi");
        const wifiModal = document.querySelector(".bui-modal-wifi");
        openWifi.addEventListener('click', () => {
           wifiModal.style.display = 'block';
        });
        closeWifi.addEventListener('click', () => {
           wifiModal.style.display = 'none';
        });
        closeWifiModal.addEventListener('click', () => {
        	wifiModal.style.display = 'none';
        });
        const openPet = document.getElementById("btnPet");
        const closePet = document.getElementById("btnClosePet");
        const closePetModal = document.getElementById("xClosePet");
        const petModal = document.querySelector(".bui-modal-pet");
        openPet.addEventListener('click', () => {
           petModal.style.display = 'block';
        });
        closePet.addEventListener('click', () => {
           petModal.style.display = 'none';
        });
        closePetModal.addEventListener('click', () => {
        	petModal.style.display = 'none';
        });
        const openSmoking = document.getElementById("btnSmoking");
        const closeSmoking = document.getElementById("btnCloseSmoking");
        const closeSmokingModal = document.getElementById("xCloseSmoking");
        const smokingModal = document.querySelector(".bui-modal-smoking");
        openSmoking.addEventListener('click', () => {
           smokingModal.style.display = 'block';
        });
        closeSmoking.addEventListener('click', () => {
           smokingModal.style.display = 'none';
        });
        closeSmokingModal.addEventListener('click', () => {
        	smokingModal.style.display = 'none';
        });
    </script>
</body>
</html>