<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/set-service.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>${hotel.hotelname} · 숙박 업체 상세 정보</title>
</head>
<body
    class="m-property_details m-facilities ua-chrome-97 ua-chrom is_desktop is_cjk is_new_hnav fix-badge-color env-self-manage facilities-buification-1 contents-ready">
<form action="${contextPath}/update-service.pdo?room_id=${basic.room_id}" method="post">
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
                            <div id="error_header"></div>
                            <div id="hidden_inputs">
                            	<input type="hidden" name="roomId" value="${basic.room_id}">
                            </div>
                            <div class="facilities_section">
                                <fieldset class="facility-section--incomplete">
                                    <legend>인기 시설/서비스</legend>
                                    <p>투숙객들이 가장 필요로 하는 시설 및 서비스입니다. 각 질문에 <strong>예</strong> 또는 <strong>아니오</strong>를
                                        선택하고 <strong>저장</strong> 버튼을 클릭하세요.</p>
                                    <div class="row">
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">에어컨</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="ac" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="ac" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item facility_items_parent">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">욕조</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="bathtub" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="bathtub" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">스파욕조</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="spabath" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="spabath" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">테라스</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="terras" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="terras" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">평면TV</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio" name="tv" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label" for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio" name="tv" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label" for="inlineRadio2">아니오</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">발코니</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio" name="balcony" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label" for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio" name="balcony" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label" for="inlineRadio2">아니오</label>
                                                            </div>
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
                                                            <input type="radio" name="breakfast" value="true">
                                                            <span>예</span>        
                                                        </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label>
                                                            <input type="radio" name="breakfast" value="false">
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
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="fitnesscenter" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="fitnesscenter" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">아쿠아 파크</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="aquapark" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="aquapark" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">스파욕조/자쿠지</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="jacuzzi" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="jacuzzi" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8">
                                                        <span class="facility-item__name">사우나</span></div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="sauna" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="sauna" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
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
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio" name="swimming_pool" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label" for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio" name="swimming_pool" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label" for="inlineRadio2">아니오</label>
                                                            </div>
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
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="shuttle" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="shuttle" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">주차가
                                                            가능한가요?</span></div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="parking" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="parking" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
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
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="front_desk" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="front_desk" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8">
                                                        <span class="facility-item__name">라운지</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="lounge" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="lounge" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
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
                                                    <div class="col-sm-8">
                                                        <span class="facility-item__name">금연</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="smoking" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="smoking" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
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
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="elevator" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="elevator" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-6">
                                            <li class="facility_items facility_item">
                                                <div class="facility_items_body clearfix">
                                                    <div class="col-sm-8"><span class="facility-item__name">난방 시설</span>
                                                    </div>
                                                    <div class="col-sm-4 facility-item__radio-buttons">
                                                        <div class="bui-inline-container">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="heater" id="inlineRadio1"
                                                                    value="true">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio1">예</label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio"
                                                                    name="heater" id="inlineRadio2"
                                                                    value="false">
                                                                <label class="form-check-label"
                                                                    for="inlineRadio2">아니오</label>
                                                            </div>
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
<script>
	$(document).ready(function(){
		if(${service.breakfast} == true) {
			$("input:radio[name='breakfast']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='breakfast']:radio[value='false']").prop('checked', true);
		}
		if(${service.front_desk} == true) {
			$("input:radio[name='front_desk']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='front_desk']:radio[value='false']").prop('checked', true);
		}
		if(${service.smoking} == true) {
			$("input:radio[name='smoking']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='smoking']:radio[value='false']").prop('checked', true);
		}
		if(${service.parking} == true) {
			$("input:radio[name='parking']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='parking']:radio[value='false']").prop('checked', true);
		}
		if(${service.sauna} == true) {
			$("input:radio[name='sauna']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='sauna']:radio[value='false']").prop('checked', true);
		}
		if(${service.swimming_pool} == true) {
			$("input:radio[name='swimming_pool']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='swimming_pool']:radio[value='false']").prop('checked', true);
		}
		if(${service.shuttle} == true) {
			$("input:radio[name='shuttle']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='shuttle']:radio[value='false']").prop('checked', true);
		}
		if(${service.ac} == true) {
			$("input:radio[name='ac']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='ac']:radio[value='false']").prop('checked', true);
		}
		if(${service.terras} == true) {
			$("input:radio[name='terras']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='terras']:radio[value='false']").prop('checked', true);
		}
		if(${service.fitnesscenter} == true) {
			$("input:radio[name='fitnesscenter']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='fitnesscenter']:radio[value='false']").prop('checked', true);
		}
		if(${service.aquapark} == true) {
			$("input:radio[name='aquapark']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='aquapark']:radio[value='false']").prop('checked', true);
		}
		if(${service.jacuzzi} == true) {
			$("input:radio[name='jacuzzi']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='jacuzzi']:radio[value='false']").prop('checked', true);
		}
		if(${access.elevator} == true) {
			$("input:radio[name='elevator']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='elevator']:radio[value='false']").prop('checked', true);
		}
		if(${basic.heater} == true) {
			$("input:radio[name='heater']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='heater']:radio[value='false']").prop('checked', true);
		}
		if(${media.tv} == true) {
			$("input:radio[name='tv']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='tv']:radio[value='false']").prop('checked', true);
		}
		if(${view.balcony} == true) {
			$("input:radio[name='balcony']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='balcony']:radio[value='false']").prop('checked', true);
		}
		if(${bath.bathtub} == true) {
			$("input:radio[name='bathtub']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='bathtub']:radio[value='false']").prop('checked', true);
		}
		if(${bath.spabath} == true) {
			$("input:radio[name='spabath']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='spabath']:radio[value='false']").prop('checked', true);
		}
		if(${room_service.lounge} == true) {
			$("input:radio[name='lounge']:radio[value='true']").prop('checked', true);
		} else {
			$("input:radio[name='lounge']:radio[value='false']").prop('checked', true);
		}
	})
</script>
</body>
</html>