<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/set-facilities.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>${hotel.hotelname} · 숙박 업체 상세 정보</title>
</head>
<body
    class="m-property_details m-facilities ua-chrome-97 ua-chrom is_desktop is_cjk is_new_hnav fix-badge-color env-self-manage facilities-buification-1 contents-ready">
    <div class="js-dont-warn-about-unsaved-changes">
    	<jsp:include page="/WEB-INF/partner/header.jsp"/>
    </div>
    <div id="main-container" class="container-fluid tfa_phone_alt container-fluid--color">
        <main id="content">
            <div class="page-body">
                <div class="page-header-component-title th__page-header">
                    <div class="row">
                        <div class="th__page-header__content col-md-12">
                            <h1 class="th__page-header__title">시설 및 서비스</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="clearfix col-md-12">
                            <p class="th__page-header__description">침대 옵션, 구내 시설 및 서비스, 편의 용품 등 호텔의 상세 정보를 수정하십시오.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 main-content">
                        <form id="facilities_form" method="POST">
                            <div id="error_header"></div>
                            <div id="hidden_inputs"></div>
                            <div class="facilities_section">
                                <fieldset class="facility-section--incomplete">
                                    <legend>인기 시설/서비스</legend>
                                    <p>투숙객들이 가장 필요로 하는 시설 및 서비스입니다. 각 질문에 <strong>예</strong> 또는 <strong>아니오</strong>를
                                        선택하고 <strong>저장</strong> 버튼을 클릭하세요.</p>
                                    <div class="row">
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">바</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item facility_items_parent">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">사우나</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">정원</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">테라스</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">금연 객실</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">가족 객실</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">스파
                                                            욕조/자쿠지</span></div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">에어컨</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">수영장</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="facilities_section facilitis_section--breakfast">
                                <fieldset class="policy-fieldset breakfast-section">
                                    <legend>조식</legend>
                                    <input type="hidden">
                                    <div class="row">
                                        <div class="form-group col-lg-12">
                                            <div class="breakfast_option_wrap">
                                                <label>조식을 제공하시나요?</label>
                                                <div class="radio-block">
                                                    <div class="radio">
                                                        <label>
                                                            <input type="radio">
                                                            <span>아니오</span>
                                                        </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label>
                                                            <input type="radio">
                                                            <span>아니오</span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row"></div>
                                </fieldset>
                            </div>
                            <div class="facilities_section">
                                <fieldset>
                                    <legend>구사 언어</legend>
                                    <div class="row">
                                        <div class="lang_spoken_line">
                                            <div class="form-group col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                <select class="form-control lang_spoken">
                                                    <option value="#">선택하십시오</option>
                                                    <option value="ko" selected="selected">한국어</option>
                                                    <option value="en">영어</option>
                                                </select>
                                                <span class="help-block"></span>
                                            </div>
                                            <button type="button" class="remove_lang_link btn btn-link">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
                                                    fill="currentColor" class="bi bi-dash-circle-fill"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h7a.5.5 0 0 0 0-1h-7z" />
                                                </svg> &nbsp;제거
                                            </button>
                                        </div>
                                        <div class="lang_spoken_line">
                                            <div class="form-group col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                <select class="form-control lang_spoken">
                                                    <option value="#">선택하십시오</option>
                                                    <option value="ko">한국어</option>
                                                    <option value="en" selected="selected">영어</option>
                                                </select>
                                                <span class="help-block"></span>
                                            </div>
                                            <button type="button" class="remove_lang_link btn btn-link">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
                                                    fill="currentColor" class="bi bi-dash-circle-fill"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h7a.5.5 0 0 0 0-1h-7z" />
                                                </svg> &nbsp;제거
                                            </button>
                                        </div>
                                    </div>
                                    <button type="button" class="add_lang_link btn btn-link">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
                                            fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                                            <path
                                                d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z" />
                                        </svg> 다른 언어 추가
                                    </button>
                                </fieldset>
                            </div>
                            <div class="facilities_section">
                                <fieldset class="policy-fieldset">
                                    <legend>숙소 건물 정보</legend>
                                    <div class="row">
                                        <label class="col-lg-12 is-block js-building-nr-floors-label">총 판매 객실 수</label>
                                        <div class="form-group col-md-3 col-sm-4">
                                            <input type="number" class="form-control form-control-limited">
                                        </div>
                                        <label class="col-lg-12 is-block js-building-nr-floors-label">건물 전체 층수 (지하층
                                            제외)</label>
                                        <div class="form-group col-md-3 col-sm-4">
                                            <input type="number" class="form-control form-control-limited">
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="facilities_section">
                                <fieldset class="facility-section--incomplete">
                                    <legend>액티비티</legend>
                                    <div class="row">
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">하이킹</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item facility_items_parent">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">볼링</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">아쿠아파크</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">미니골프</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">골프장(3km
                                                            이내)</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">테니스장</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">낚시</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">스키</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="facilities_section">
                                <fieldset class="facility-section--incomplete">
                                    <legend>식음료</legend>
                                    <div class="row">
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">식품 배달</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item facility_items_parent">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">레스토랑</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">룸서비스</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">바비큐
                                                            시설</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">객실 내 조식
                                                            서비스</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">점심
                                                            도시락</span></div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">스낵 바</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">특별 식단 메뉴(요청
                                                            시)</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="facilities_section">
                                <fieldset class="facility-section--incomplete">
                                    <legend>수영장/웰빙</legend>
                                    <div class="row">
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">피트니스
                                                            센터</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item facility_items_parent">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">대중탕</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">마사지</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">일광욕실</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">스파/웰빙</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">터키식
                                                            목욕탕</span></div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">온수 온천
                                                            욕조</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">노천탕</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="facilities_section">
                                <fieldset class="facility-section--incomplete">
                                    <legend>교통편</legend>
                                    <div class="row">
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">공항셔틀
                                                            <span class="facility_item__name__description">숙소와 공항을 오고가는
                                                                셔틀 버스가 있을 경우 이 옵션을 선택해 주십시오. 다른 목적지로 운행하는 셔틀은 '셔틀 서비스'를
                                                                선택해주십시오.</span>
                                                        </span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item facility_items_parent">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">렌터카
                                                            서비스</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">대중교통 이용권
                                                            <span class="facility_item__name__description">대중교통 이용권 구매가
                                                                가능합니다.</span>
                                                        </span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">셔틀 서비스
                                                            <span class="facility_item__name__description">투숙객에게 교통편을
                                                                제공하거나, 교통편 예약을 지원합니다.</span>
                                                        </span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">주차가
                                                            가능한가요?</span></div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12 facility-item__details-button">
                                                        <a href="#"
                                                            class="facilities_attr_toggle facilities_attr_toggle_show">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                height="12" fill="currentColor"
                                                                class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                                                                <path
                                                                    d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z" />
                                                            </svg> 상세정보 입력하기
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="facilities_section">
                                <fieldset class="facility-section--incomplete">
                                    <legend>부가 서비스</legend>
                                    <div class="row">
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">24시간 프런트
                                                            데스크</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item facility_items_parent">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">익스프레스
                                                            체크인/체크아웃</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">환전</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">투어
                                                            데스크</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">ATM/현금
                                                            인출기</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">컨시어지
                                                            서비스</span></div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">전용
                                                            체크인/체크아웃</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">청구서(인보이스)제공
                                                            숙소</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="facilities_section">
                                <fieldset class="facility-section--incomplete">
                                    <legend>공용 공간</legend>
                                    <div class="row">
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">오락실</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item facility_items_parent">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">도서실</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span
                                                            class="facility-item__name">예배당/신사</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span
                                                            class="facility-item__name">일광욕/테라스</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">공용 주방</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">공용 라운지/TV 시청
                                                            공간</span></div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">야외 가구</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">피크닉
                                                            공간</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="facilities_section">
                                <fieldset class="facility-section--incomplete">
                                    <legend>청소 서비스</legend>
                                    <div class="row">
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span
                                                            class="facility-item__name">하우스키핑(매일)</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item facility_items_parent">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">바지
                                                            다림질</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">세탁</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span
                                                            class="facility-item__name">드라이클리닝</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">다림질
                                                            서비스</span></div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="facilities_section">
                                <fieldset class="facility-section--incomplete">
                                    <legend>비즈니스 시설</legend>
                                    <div class="row">
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">비즈니스
                                                            센터</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item facility_items_parent">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">회의/연회
                                                            시설</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">팩스/복사</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="facilities_section">
                                <fieldset class="facility-section--incomplete">
                                    <legend>상점</legend>
                                    <div class="row">
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span
                                                            class="facility-item__name">이발/미용실</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">미니마트(숙소 부지
                                                            내)</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="facilities_section">
                                <fieldset class="facility-section--incomplete">
                                    <legend>기타</legend>
                                    <div class="row">
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">전 구역
                                                            금역</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item facility_items_parent">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">엘리베이터</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">장애인
                                                            편의시설</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">방금 설비된
                                                            객실</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">일부 흡연
                                                            구역</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">난방 시설</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__input">
                                                                <span class="bui-radio__label">예</span>
                                                            </label>
                                                            <label class="bui-radio">
                                                                <input type="radio"
                                                                    class="bui-radio__input js-facility-radio__iinput">
                                                                <span class="bui-radio__label">아니오</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </fieldset>
                            </div>
                            <input type="submit" value="저장" class="btn btn-primary btn-block btn-lg btn-save-bottom">
                            <div class="bottom-sticky-save-button-container show-top">
                                <input type="submit" value="저장" class="btn btn-primary btn-lg">
                            </div>
                        </form>
                    </div>
                </div>
                <div
                    class="bui-toast bui-toast-component js-bui-toast hidden js-facilities-toast facilities-page-toast bui-toast-component__top-center">
                </div>
            </div>
        </main>
    </div>
    <div class="js-dont-warn-about-unsaved-changes">
        <jsp:include page="/WEB-INF/partner/footer.jsp"/>
    </div>
</body>
</html>