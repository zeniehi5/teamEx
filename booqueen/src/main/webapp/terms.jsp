<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>terms</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/d2826a4f92.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <style>
	body {
        font-size: 16px!important;
	    line-height: 25px!important;
	    color: #383838;
	}
	.tc-side-nav {
	    margin: 0 auto;
	}
	.page-top-margin {
	    margin-top: 55px;
	}
	.flex-between {
	    display: flex;
	    justify-content: space-between;
	}
	.text-black {
	    color: black;
	}
	.m-0 {
	    margin: 0 !important;
	}
	.mb-1 {
	    margin-bottom: 4px !important;
	}
	.mb-2 {
	    margin-bottom: 8px;
	}
	.mb-4 {
	    margin-bottom: 16px !important;
	}
	.p-0 {
	    padding: 0 !important;
	}
	.ml-4 {
	    margin-left: 36px;
	    margin-bottom: 8px;
	}
	.mt-4 {
	    margin-top: 8px;
	}
	.mt-8 {
	    margin-top: 32px;
	}
	.list-style-circle {
	    list-style: circle;
	}
	.decoration-none {
	    text-decoration: none !important;
	}
	.list-style-none {
	    list-style: none !important;
	}
	.table-of-contents {
	    margin-bottom: 8px;
	    margin-left: 0;
	}
	.font-normal {
	    font-weight: 400 !important;
	}
	.nav-list-item-link {
	    display: inline-block;
	    width: 100%;
	}
	.page-heading {
	    display: flex;
	    flex-direction: column;
	    align-items: flex-start;
	}
	.section-heading {
	    display: flex;
	    flex-direction: column;
	    align-items: flex-start;
	}
	@media screen and (min-width: 768px) {
	    .terms__navigation {
	        display: none;
	    }
	    .page-heading {
	        flex-direction: row;
	        justify-content: space-between;
	    }
	    .section-heading {
	        display: flex;
	        flex-direction: row-reverse;
	        justify-content: space-between;
	        align-items: center;
			}
	}
	a {
		color: #0071c2;
		text-decoration: none;
	}
	.move-top {
		color: #0071c2;
		border: 0;
		border-radius: 2px;
		padding: 12px 14px;
		font-size: 16px;
		background: none;
	}
	.move-top:hover {
		background-color: #f0f7fb;
	}
	.bui-text--variant-headline_3 {
		font-size: 20px;
		line-height: 28px;
		font-weight: 700;
		margin: 20px 0 10px;
	}
	.bui-text p {
		margin-bottom: 8px;
	}
	.bui-text--variant-body_1 {
		margin-bottom: 10px;
	}
	.bui-text--variant-strong_1 {
		font-weight: bold;
		font-size: 18px;
		margin: 8px 0;
	}
	.bui-list__item {
		margin: 5px 0;
	}
    </style>
</head>
<body>
	<jsp:include page="/WEB-INF/user/member/header.jsp"/>
	
	<div style="padding: 40px 18%;">
		<div class="page-heading" id="tcs_s8" style="margin-bottom: 16px;">
			<div id="tcs_s2">
				<h1 class="bui-text bui-text--variant-headline_1 text-black" style="margin-bottom: 6px;">서비스 이용약관 (고객용)</h1>
				<p class="bui-text bui-text--variant-body_2 bui-text--color-neutral_alt m-0" style="color: #6b6b6b;font-size: 14px;">마지막 업데이트: 2022년 4월 6일</p>
			</div>
			<a href="javascript:window.print()" class="bui-group__item bui-button bui-button--tertiary bui-button--large bui-button--negative-inset-adjustment--start font-normal hide_this_for_print" role="button" data-bui-component="Button" style="color: #0071c2; text-decoration: none; gap: 10px;">
				<span class="bui-button__icon" style="vertical-align: middle;"><svg class="bk-icon -streamline-printer" height="20" width="20" fill="#0071c2" viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false"><path d="M5.25 16.499h-3a.75.75 0 0 1-.75-.75v-7.5a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v7.5a.75.75 0 0 1-.75.75h-3a.75.75 0 0 0 0 1.5h3a2.25 2.25 0 0 0 2.25-2.25v-7.5a2.25 2.25 0 0 0-2.25-2.25H2.25A2.25 2.25 0 0 0 0 8.249v7.5a2.25 2.25 0 0 0 2.25 2.25h3a.75.75 0 0 0 0-1.5zm-1.5-6h1.5a.75.75 0 0 0 0-1.5h-1.5a.75.75 0 0 0 0 1.5zm1.5 3h13.5l-.75-.75v10.5l.75-.75H5.25l.75.75v-10.5l-.75.75zm0-1.5a.75.75 0 0 0-.75.75v10.5c0 .414.336.75.75.75h13.5a.75.75 0 0 0 .75-.75v-10.5a.75.75 0 0 0-.75-.75H5.25zm13.5-6H5.25l.75.75v-4.5a.75.75 0 0 1 .75-.75h10.5a.75.75 0 0 1 .75.75v4.5l.75-.75zm0 1.5a.75.75 0 0 0 .75-.75v-4.5a2.25 2.25 0 0 0-2.25-2.25H6.75a2.25 2.25 0 0 0-2.25 2.25v4.5c0 .414.336.75.75.75h13.5zm-10.5 9h7.5a.75.75 0 0 0 0-1.5h-7.5a.75.75 0 0 0 0 1.5zm0 3h5.25a.75.75 0 0 0 0-1.5H8.25a.75.75 0 0 0 0 1.5z"></path></svg></span>
				<span class="bui-button__text">인쇄</span>
			</a>
		</div>
		<h2 class="bui-text bui-text--variant-headline_2 text-black table-of-contents">목차</h2>
		<ul class="bui-list bui-list--text bui-text bui-text--variant-body_1 m-0 p-0 list-style-none">
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_heading" class="bui-link decoration-none font-normal">A. 모든 여행 상품</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_accommodations_heading" class="bui-link decoration-none font-normal">B. 숙소</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_dictionary_heading" class="bui-link decoration-none font-normal">Booqueen.com 용어 설명</a>
			</li>
		</ul>
		<div class="section-heading mt-8" id="nov2021_terms_all_heading" style="margin-bottom: 8px;">
			<button type="button" class="bui-button bui-button--tertiary bui-button--large bui-button--negative-inset-adjustment--start font-normal move-top" onclick="window.scrollTo({ top: 0, behavior: 'smooth' })">맨 위로 돌아가기</button>
			<h2 class="bui-text bui-text--variant-headline_2 text-black m-0 mb-2 p-0">A. 모든 여행 상품</h2>
		</div>
		<ul class="bui-list bui-list--text bui-text bui-text--variant-body_1 m-0 p-0 list-style-none">
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_definitions_subheading" class="bui-link decoration-none font-normal">A1. 정의</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_about_terms_subheading" class="bui-link decoration-none font-normal">A2. 본 약관에 대한 정보</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_about_booking_subheading" class="bui-link decoration-none font-normal">A3. Booqueen.com 소개</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_platform_subheading" class="bui-link decoration-none font-normal">A4. 당사 플랫폼</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_values_subheading" class="bui-link decoration-none font-normal">A5. 당사의 가치</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_prices_subheading" class="bui-link decoration-none font-normal">A6. 요금</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_payment_subheading" class="bui-link decoration-none font-normal">A7. 결제</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_policies_subheading" class="bui-link decoration-none font-normal">A8. 정책</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_privacy_subheading" class="bui-link decoration-none font-normal">A9. 개인정보 보호 및 쿠키</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_accessibility_subheading" class="bui-link decoration-none font-normal">A10. 접근성 요청</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_insurance_subheading" class="bui-link decoration-none font-normal">A11. 보험</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_ipr_subheading" class="bui-link decoration-none font-normal">A12. 지적재산권</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_wrong_subheading" class="bui-link decoration-none font-normal">A13. 문제가 생기면 어떻게 하나요?</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_communications_subheading" class="bui-link decoration-none font-normal">A14. 서비스 제공업체와의 커뮤니케이션</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_behaviour_subheading" class="bui-link decoration-none font-normal">A15. 용납되지 않는 행동에 대한 조치</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_all_liability_subheading" class="bui-link decoration-none font-normal">A16. 법적 책임에 대한 제한</a>
			</li>
		</ul>
		<div class="text-black">
			<div id="tcs_s0">
				<p id="nov2021_terms_all_definitions_subheading" class="bui-text bui-text--variant-headline_3">A1. 정의</p>
			</div>
			<p class="bui-text bui-text--variant-body_1">1. 본 문서에서 사용되는 일부 단어는 매우 구체적인 의미를 가지고 있으므로 본 약관의 마지막 부분에서 ‘<a href="#nov2021_terms_dictionary_heading" class="bui-link bui-link--primary font-normal">Booqueen.com 용어 설명</a>’을 확인해 주시기 바랍니다.</p>
			<p id="nov2021_terms_all_about_terms_subheading" class="bui-text bui-text--variant-headline_3">A2. 본 약관에 대한 정보</p>
			<div class="bui-text bui-text--variant-body_1">
				<p>1. 고객이 예약을 완료하면 본 약관 및 예약 과정에서 제공되는 기타 약관에 동의한 것으로 간주됩니다.</p>
				<p>2. 본 약관에 명시된 조항이 유효하지 않거나 시행 불가능한 경우(또는 그렇게 되는 경우),</p>
				<ul class="bui-list bui-list--unordered ml-4">
					<li class="bui-list__item">해당 조항은 법률이 허용하는 최대 범위 내에서 시행됩니다.</li>
					<li class="bui-list__item">본 약관의 다른 모든 조항은 여전히 구속력을 지닙니다.</li>
				</ul>
				<p>3. 본 약관은 다음과 같이 구성되어 있습니다.</p>
				<ul class="bui-list bui-list--unordered ml-4">
					<li class="bui-list__item">A절: 모든 유형의 여행 상품에 대한 일반 약관.</li>
					<li class="bui-list__item">B절: 숙소 유형의 여행 상품에 대한 특정 약관.</li>
					<li class="bui-list__item">일반 약관과 특정 약관 간에 불일치가 있는 경우 특정 약관이 적용됩니다.</li>
				</ul>
				<p>4. 본 약관의 원본은 영문 버전입니다. 본 약관에 대해 분쟁이 있거나, 영어 버전의 약관과 다른 언어 버전의 약관에 불일치가 있는 경우 영어 버전의 약관이 적용됩니다. (이 페이지의 상단에서 언어를 변경할 수 있습니다.)</p>
			</div>
			<div id="tcs_s12">
				<p id="nov2021_terms_all_about_booking_subheading" class="bui-text bui-text--variant-headline_3">A3. Booqueen.com 소개</p>
			</div>
			<div class="bui-text bui-text--variant-body_1">
				<p>1. 고객이 숙소를 예약하는 경우 Booqueen.com은 플랫폼을 제공하고 이에 대한 책임이 있지만, 여행 상품 자체에 대한 책임은 없습니다(아래 A4.4 참조).</p>
				<p>2. 당사는 현지 지원 서비스(예: 고객 지원 또는 계정 관리)를 제공하는 회사와 협력합니다. 해당 회사는 다음 사항을 수행하지 않습니다.</p>
				<ul class="bui-list bui-list--unordered ml-4">
					<li class="bui-list__item">플랫폼 제어 또는 관리</li>
					<li class="bui-list__item">자체 플랫폼 보유</li>
					<li class="bui-list__item">고객과 법적 또는 계약상의 관계 유지</li>
					<li class="bui-list__item">여행 상품 제공</li>
					<li class="bui-list__item">당사를 대표하거나, 계약을 체결하거나, 당사의 이름으로 법률 문서를 수락</li>
					<li class="bui-list__item">당사의 ‘절차 또는 서비스 대리인’으로 운영</li>
				</ul>
			</div>
			<div id="tcs_s1">
				<p id="nov2021_terms_all_platform_subheading" class="bui-text bui-text--variant-headline_3">A4. 당사 플랫폼</p>
			</div>
			<div class="bui-text bui-text--variant-body_1">
				<p>1. 당사는 플랫폼을 제공할 때 합당한 주의를 기울이지만, 플랫폼의 모든 사항이 정확하다고 보장할 수는 없습니다(서비스 제공업체로부터 정보를 얻음). 법률이 허용하는 범위 내에서 당사는 오류, 중단 또는 누락된 정보에 대해 책임을 지지 않습니다. 하지만 당사는 해당 사항을 최대한 빨리 수정/정정하기 위해 최선을 다하겠습니다.</p>
				<p>2. 당사 플랫폼은 서비스 제공업체 또는 해당 제품, 서비스, 시설, 차량 등을 추천하거나 보증하지 않습니다.</p>
				<p>3. 당사는 고객과 서비스 제공업체 간의 계약 당사자가 아닙니다. 여행 상품에 대한 책임은 전적으로 서비스 제공업체에 있습니다.</p>
				<p>4. 고객은 예약을 하기 위해 계정을 생성해야 할 수 있습니다. 고객은 결제 및 연락처 정보를 포함하여 모든 정보가 정확하고 최신 상태인지 확인해야 합니다. 그렇지 않으면 여행 상품에 액세스하지 못할 수 있습니다. 계정과 관련하여 발생하는 모든 일에 대한 책임은 고객에게 있으므로 타인이 사용하지 못하게 하고 사용자 이름과 암호를 비밀로 유지하시기 바랍니다.</p>
				<p>5. 당사는 고객이 이용할 수 있는 혜택을 (당사가 생각하는) 고객에게 적합한 언어로 표시해 드립니다. 고객은 언제든지 원하는 다른 언어로 변경할 수 있습니다.</p>
				<p>6. 달리 명시되지 않는 한, 고객은 플랫폼을 사용하려면 만 16세 이상이어야 합니다.</p>
			</div>
			<p id="nov2021_terms_all_values_subheading" class="bui-text bui-text--variant-headline_3">A5. 당사의 가치</p>
			<div class="bui-text bui-text--variant-body_1">
				<p>1. 고객은</p>
				<ul class="bui-list bui-list--unordered ml-4">
					<li class="bui-list__item">당사의 가치를 따라야 합니다.</li>
					<li class="bui-list__item">모든 관련 법을 준수해야 합니다.</li>
					<li class="bui-list__item">당사가 수행해야 하는 사기 방지/자금 세탁 방지 조사에 협조해야 합니다.</li>
					<li class="bui-list__item">플랫폼을 사용하여 소란을 일으키거나 허위 예약을 하지 말아야 합니다.</li>
					<li class="bui-list__item">여행 상품 및/또는 플랫폼을 의도된 목적으로 사용해야 합니다.</li>
					<li class="bui-list__item">소란이나 손해를 일으키지 않으며 서비스 제공업체의 직원(또는 해당 문제와 관련된 다른 사람)에게 부적절하게 행동하지 않아야 합니다.</li>
				</ul>
			</div>
			<p id="nov2021_terms_all_prices_subheading" class="bui-text bui-text--variant-headline_3">A6. 요금</p>
			<div class="bui-text bui-text--variant-body_1">
				<p>1. 고객은 예약을 진행함으로써, 적용될 수 있는 모든 기타 요금 및 세금을 포함하여 여행 상품의 비용을 지불하는 데 동의하는 것으로 간주됩니다.</p>
				<p>2. 표시되는 요금의 일부는 가장 가까운 정수로 반올림되었을 수 있습니다. 고객이 결제하는 요금은 원래의 '반올림되지 않은’ 금액을 기준으로 합니다(실제 차이는 미미함).</p>
				<p>3. 명백한 오류와 오탈자는 구속력이 없습니다. 예를 들어 실수로 €1에 제공된 프리미엄 차량 또는 럭셔리 스위트에서의 1박을 예약하는 경우 당사는 해당 예약을 취소하고 지불한 모든 금액을 환불할 수 있습니다.</p>
				<p>4. 취소선이 그어진 요금은 동일한 조건 하의 예약에 할인이 적용되기 전의 요금을 나타냅니다(‘동일한’이란 동일한 날짜, 동일한 정책, 동일한 품질의 숙소를 의미).</p>
			</div>
			<div id="tcs_s5">
				<p id="nov2021_terms_all_payment_subheading" class="bui-text bui-text--variant-headline_3">A7. 결제</p>
			</div>
			<div class="bui-text bui-text--variant-body_1">
				<p>1. 일부 상품/서비스의 경우, 서비스 제공업체는 선결제 및/또는 여행 상품 이용 중 결제를 요구합니다.</p>
				<ul class="bui-list bui-list--unordered ml-4">
					<li class="bui-list__item"><b>당사가 고객의 결제를 처리하는 경우,</b> 당사(또는 경우에 따라 고객의 결제가 이루어지는 국가의 당사 계열사)는 고객의 결제를 관리하고 당사의 서비스 제공업체와의 거래 완료를 보장할 책임이 있습니다. 이 경우 고객의 결제는 ‘지불해야 하는’ 요금의 최종 지불을 구성합니다.</li>
					<li class="bui-list__item"><b>서비스 제공업체에서 고객에게 요금을 청구하는 경우,</b> 일반적으로 여행 상품의 이용을 시작할 때 고객에게 직접 청구되지만, 예약 시 신용카드로 청구되거나 숙소에서 체크아웃할 때 요금을 지불할 수도 있습니다. 이는 예약 절차에서 고객에게 전달된 서비스 제공업체의 선결제 정책에 따라 다릅니다.</li>
				</ul>
				<p>2. 서비스 제공업체가 선결제를 요구하는 경우, 예약 시 결제가 진행되거나 가승인이 이루어질 수 있으며 환불이 불가할 수 있습니다. 따라서 예약하기 전에 서비스 제공업체의 선결제 정책(예약 과정에서 제공됨)을 확인하시기 바랍니다. 당사는 이 정책에 영향을 미치지 않으며 책임을 지지 않습니다.</p>
				<p>3. 결제 수단과 관련된 사기 또는 무단 사용에 대해 알게 되거나 의심되는 경우, 결제 서비스 제공업체에 문의하시기 바랍니다. 사기 및 무단 사용으로 비용이 발생할 경우 해당 업체에서 부담하는 경우가 있습니다(면책금은 공제될 수 있음).</p>
				<p>4. 플랫폼에서 선택한 통화가 서비스 제공업체의 통화와 다를 경우, 당사는</p>
				<ul class="bui-list bui-list--unordered ml-4">
					<li class="bui-list__item">고객의 통화로 요금을 표시할 수 있습니다.</li>
					<li class="bui-list__item">고객이 사용하는 통화로 결제할 수 있는 옵션을 제공합니다.</li>
				</ul>
				<p>결제 단계에서 고객 계정의 예약 세부정보 또는 (계정이 없는 경우) 당사에서 보낸 이메일에 통화 환산율이 표시됩니다. 당사가 이러한 서비스와 관련하여 고객에게 수수료를 청구하는 경우, 해당 금액은 유럽 중앙 은행의 환율에 대한 백분율로 표시됩니다. 고객의 카드 발급사에서 해외 결제 수수료를 청구할 수도 있습니다.</p>
				<p>5. 당사는 고객의 동의를 얻은 후, 향후 거래를 위해 고객의 결제 수단에 대한 세부 정보를 저장합니다.</p>
			</div>
			<div id="tcs_s6">
				<p id="nov2021_terms_all_policies_subheading" class="bui-text bui-text--variant-headline_3">A8. 정책</p>
			</div>
			<div class="bui-text bui-text--variant-body_1">
				<p>1. 예약 시 고객은 예약 절차에 표시되는 해당 정책에 동의하는 것으로 간주됩니다. 고객은 당사 플랫폼에서 서비스 제공업체의 취소 정책 및 기타 정책(나이 요건, 보안/손해 보증금, 그룹 예약 관련 추가 요금, 엑스트라 베드, 조식, 반려동물, 허용되는 카드 등)을 확인할 수 있습니다. 이는 예약 과정에서 서비스 제공업체의 정보 페이지, 중요 정보 섹션 및/또는 확인 이메일 또는 티켓(해당되는 경우)에 기재됩니다.</p>
				<p>2. 예약을 취소하거나 노쇼가 발생할 경우, 취소/노쇼 비용 및 환불은 서비스 제공업체의 취소/노쇼 정책에 따라 달라집니다.</p>
				<p>3. 일부 예약은 무료로 취소할 수 없으며, 일부 예약은 일정 기한 전에만 무료로 취소할 수 있습니다.</p>
				<p>4. 사전 결제(요금의 모든 요소 및/또는 손해 보증금(해당되는 경우))를 통해 여행 상품을 예약한 경우, 서비스 제공업체는 명시된 날짜에 금액을 수금하지 못하면 통지 없이 예약을 취소할 수 있습니다. 서비스 제공업체가 예약을 취소하면 환불 불가능한 결제 요금의 환불 여부는 서비스 제공업체의 재량에 따라 달라집니다. (은행, 직불카드 또는 신용카드 세부 정보가 올바른지, 계좌에 충분한 금액이 있는지를 확인하여) 결제가 제시간에 진행되게 하는 것은 고객의 책임입니다.</p>
				<p>5. 제시간에 도착하지 못할 것으로 판단될 경우, 고객은 서비스 제공업체가 예약을 취소하지 않도록 미리 연락하여 예상 도착 시간을 알려야 합니다. 고객이 늦을 경우, 당사는 이로 인한 결과(예: 예약 취소 또는 서비스 제공업체가 청구할 수 있는 비용)에 책임을 지지 않습니다.</p>
				<p>6. 예약자로서 고객은 (여행 상품과 관련하여) 예약 그룹 전원의 행위 및 행동에 책임이 있습니다. 또한 고객은 그룹 내 구성원의 개인정보를 당사에 제공하기 전에 이들의 허가를 받아야 할 책임이 있습니다.</p>
			</div>
			<div id="tcs_s3">
				<p id="nov2021_terms_all_privacy_subheading" class="bui-text bui-text--variant-headline_3">A9. 개인정보 보호 및 쿠키</p>
			</div>
			<div class="bui-text bui-text--variant-body_1">
				<p>1. 숙소를 예약하는 경우, 개인정보 보호정책 및 쿠키 정책에서 개인정보 보호, 쿠키, 당사가 고객에게 연락하여 개인 정보를 처리할 수 있는 방법에 대한 자세한 내용을 확인할 수 있습니다.</p>
			</div>
			<p id="nov2021_terms_all_accessibility_subheading" class="bui-text bui-text--variant-headline_3">A10. 접근성 요청</p>
			<div class="bui-text bui-text--variant-body_1">
				<p>1. 다음 사항에 대한 접근성 요청이 있을 경우,</p>
				<ul class="bui-list bui-list--unordered ml-4">
					<li class="bui-list__item">당사 플랫폼 및/또는 서비스에 대한 사안일 경우, 고객 서비스 팀에 문의하시기 바랍니다.</li>
					<li class="bui-list__item">여행 상품(휠체어 이용, 워크인 욕조 등)에 대한 사안일 경우, 서비스 제공업체 또는 공항, 기차역에 문의하시기 바랍니다.</li>
				</ul>
			</div>
			<p id="nov2021_terms_all_insurance_subheading" class="bui-text bui-text--variant-headline_3">A11. 보험</p>
			<p class="bui-text bui-text--variant-body_1">1. 당사 플랫폼을 통해 보험에 가입한 경우, 정책 문서에서 약관과 추가 정보를 확인하시기 바랍니다. 본 약관은 보험에 적용되지 않습니다.</p>
			<p id="nov2021_terms_all_ipr_subheading" class="bui-text bui-text--variant-headline_3">A12. 지적재산권</p>
		</div>
		<div class="bui-text bui-text--variant-body_1">
			<p>1. 달리 명시하지 않는 한, 당사 플랫폼의 모든 권리(기술, 콘텐츠, 상표권, 전체적인 외관 등)는 Booqueen.com(또는 해당 라이선스 제공자)이 소유하며, 당사 플랫폼을 사용함으로써 고객은 의도한 목적으로만 플랫폼을 사용하고 A14.2항 및 A14.3항에 명시된 조건을 존중하는 데 동의하게 됩니다.</p>
			<p>2. 고객은 Booqueen.com 또는 해당 라이선스 제공자의 서면 허가 없이 상업용 목적으로 당사 플랫폼의 항목을 모니터링, 복사, 스크래핑/크롤링, 다운로드, 복제 또는 사용할 수 없습니다.</p>
			<p>3. 당사는 당사 플랫폼의 모든 방문을 면밀하게 주시하며, 다음과 같은 작업을 수행할 것으로 의심되는 사람(및 자동화된 시스템)을 차단합니다.</p>
			<ul class="bui-list bui-list--unordered ml-4">
				<li class="bui-list__item">지나친 양의 검색 수행</li>
				<li class="bui-list__item">기기 또는 소프트웨어를 사용하여 요금 또는 기타 정보 수집</li>
				<li class="bui-list__item">당사 플랫폼에 과도한 스트레스를 일으키는 행위 수행</li>
			</ul>
			<p>4. 당사 플랫폼에 사진을 업로드함으로써(예: 이용후기와 함께), 고객은 해당 사진이 당사 기준에 부합하며 다음과 같다는 것을 확인하신 것으로 간주됩니다.</p>
			<ul class="bui-list bui-list--unordered ml-4">
				<li class="bui-list__item">진실함(예를 들어, 사진을 가공하거나 다른 숙소의 사진을 업로드하지 않았음)</li>
				<li class="bui-list__item">바이러스를 포함하지 않음</li>
				<li class="bui-list__item">당사와의 공유를 허용함</li>
				<li class="bui-list__item">당사 플랫폼에서 향후 상업적 목적(프로포션 포함)으로 모든 곳에서 영구적으로 사용할 수 있음(당사가 더 이상 해당 사진을 사용할 수 없음을 고객이 알리는 경우, 당사는 합리적인 요청을 고려함)</li>
				<li class="bui-list__item">다른 사람들의 개인정보 보호 권리를 침해하지 않음</li>
				<li class="bui-list__item">고객은 이와 관련하여 Booqueen.com에 대한 법적 청구에 대해 전적인 책임을 지님</li>
			</ul>
			<p>5. 당사는 당사 플랫폼에 업로드된 사진에 대해 책임이 없으며, 당사의 재량으로 사진을 삭제할 수 있다는 점을 명확히 밝힙니다(예를 들어, 사진이 위의 기준을 충족하지 않음을 발견할 경우).</p>
		</div>
		<div id="tcs_s7">
			<p id="nov2021_terms_all_wrong_subheading" class="bui-text bui-text--variant-headline_3">A13. 문제가 생기면 어떻게 하나요?</p>
		</div>
		<div class="bui-text bui-text--variant-body_1">
			<p>1. 문의 사항 또는 불만이 있는 경우, 당사 고객 서비스 팀에 문의하시기 바랍니다. 문의는 고객 예약 조회, 앱 또는 고객 센터를 통해 가능하며, 고객 센터에서는 자주 묻는 질문(FAQ) 섹션을 통해 유용한 정보를 확인하실 수도 있습니다. 이때 다음 사항을 제공해 주시면 저희가 가능한 한 신속하게 도움을 드릴 수 있습니다.</p>
			<ul class="bui-list bui-list--unordered ml-4">
				<li class="bui-list__item">고객의 예약번호, 연락처 정보, PIN 코드(있는 경우) 및 예약 시 사용한 이메일 주소</li>
				<li class="bui-list__item">문제에 대한 요약 및 어떠한 도움이 필요한지에 대한 설명</li>
				<li class="bui-list__item">모든 증빙 서류(은행 입출금 내역서, 사진, 영수증 등)</li>
			</ul>
			<p>2. 모든 문의 사항 및 불만은 기록되며, 가장 시급한 것은 최우선으로 처리됩니다.</p>
			<ul class="bui-list bui-list--unordered ml-4">
				<li class="bui-list__item">숙소와 관련된 경우, 고객은 해당 ODR 플랫폼을 사용할 수 있음</li>
			</ul>
			<p>3. 당사는 내부적으로 불만을 해결하기 위해 노력하며, 독립적인 제공업체에서 처리하는 대체 분쟁해결 절차를 따를 의무는 없습니다.</p>
		</div>
		<p id="nov2021_terms_all_communications_subheading" class="bui-text bui-text--variant-headline_3">A14. 서비스 제공업체와의 커뮤니케이션</p>
		<p class="bui-text bui-text--variant-body_1">1. 당사는 고객과 서비스 제공업체와의 커뮤니케이션을 지원할 수 있지만, 해당 서비스 제공업체가 고객의 연락 내용을 읽거나 고객의 요청에 따라 조치를 취할지의 여부는 보장할 수 없습니다. 고객이 서비스 제공업체에 연락하거나 서비스 제공업체가 고객에게 연락한다는 사실 자체는 고객이 법적 조치를 취할 근거가 있음을 의미하지 않습니다.</p>
		<p id="nov2021_terms_all_behaviour_subheading" class="bui-text bui-text--variant-headline_3">A15. 용납되지 않는 행동에 대한 조치</p>
		<div class="bui-text bui-text--variant-body_1">
			<p>1. 당사는 고객의 예약을 중단하거나 이미 생성된 예약을 취소하거나, 당사 플랫폼, 당사의 고객 서비스 및/또는 고객의 계정 사용을 중지할 권리가 있습니다. 물론 당사는 당사의 의견에 따라 타당한 이유가 있는 경우에만 이를 수행합니다. 그 예는 다음과 같습니다.</p>
			<ul class="bui-list bui-list--unordered ml-4">
				<li class="bui-list__item">사기 또는 오용</li>
				<li class="bui-list__item">당사의 가치 또는 관련 법이나 규정을 준수하지 않음</li>
				<li class="bui-list__item">당사, 당사와 협력하는 회사 또는 이 문제에 대한 다른 사람과 관련하여 부적절하거나 불법적인 행동(예: 폭력, 위협 또는 개인정보 침해)</li>
			</ul>
			<p>2. 결과적으로 당사가 예약을 취소하는 경우, 고객은 환불을 받을 자격이 없습니다. 당사는 예약 취소 사유를 고객에게 전달할 수 있습니다. 다만, 전달하는 행위가 (a) 관련 법을 위반하는 것이거나, (b) 사기나 불법 행위의 감지 또는 예방을 막거나 방해하는 경우는 제외됩니다. 당사가 고객의 예약을 잘못 취소했다고 판단되는 경우 고객은 당사 고객 서비스 팀에 문의할 수 있습니다.</p>
		</div>
		<div id="tcs_s9">
			<p id="nov2021_terms_all_liability_subheading" class="bui-text bui-text--variant-headline_3">A16. 법적 책임에 대한 제한</p>
		</div>
		<div class="bui-text bui-text--variant-body_1">
			<p>1. 의무 소비자 법이 허용하는 범위 내에서 당사는 당사가 이행하지 않아 고객에게 직접 발생한 비용에 대해서만 책임을 집니다. 이는 법이 허용하는 범위 내에서 당사는 (예를 들어) 다음에 대한 책임이 없음을 의미합니다.</p>
			<ul class="bui-list bui-list--unordered ml-4">
				<li class="bui-list__item">간접적인 손실 또는 간접적인 손해</li>
				<li class="bui-list__item">서비스 제공업체에 대한 부정확한 정보</li>
				<li class="bui-list__item">서비스 제공업체 또는 다른 비즈니스 파트너의 상품, 서비스 또는 조치</li>
				<li class="bui-list__item">이메일 주소, 전화번호 또는 신용카드 번호 실수 (당사의 실수인 경우 제외)</li>
				<li class="bui-list__item">불가항력 또는 당사가 제어할 수 없는 사건</li>
			</ul>
			<p>2. 법이 허용하는 범위 내에서 고객이 본 약관 및/또는 서비스 제공업체의 약관을 위반한 경우,</p>
			<ul class="bui-list bui-list--unordered ml-4">
				<li class="bui-list__item">당사는 결과적으로 고객이 발생시킨 비용에 대해 책임지지 않음</li>
				<li class="bui-list__item">고객은 환불을 받을 자격이 없음</li>
			</ul>
			<p>3. 법이 허용하는 범위 내에서 당사 또는 서비스 제공업체가 부담하는 가장 큰 책임은 (1개의 사건이든 여러 개의 사건이든 관계없이) 고객의 예약 확인 이메일에 명시된 바와 같이 예약 금액입니다.</p>
			<p>4. 본 약관의 어떤 조항도 당사(또는 서비스 제공업체)에 의한 (i) 사망 또는 상해로 이어지는 과실 또는 (ii) 사기나 허위 진술에 대한 당사(또는 서비스 제공업체)의 책임을 제한하지 않습니다.</p>
			<p>5. 당사는 서비스 제공업체의 상품 및 서비스(본 약관에서 당사가 명시적으로 진술한 사항은 제외)에 대해 약속을 하지 않습니다. 올바른 선택을 하는 것은 전적으로 고객의 책임입니다.</p>
			<p>6. 본 약관의 어떤 조항도 서비스 제공업체 이외의 제3자에게 권리를 부여하는 것은 아님을 명확히 밝힙니다.</p>
			<p>7. 고객은 소비자 보호에 관한 의무적인 법률 및 규정에 따라 보호를 받으며, 이는 회사의 어떤 약관도 무효화할 수 없는 고객의 권리를 보장합니다. 이 경우 당사의 책임은 본 약관뿐만 아니라 관련 소비자 보호법 및 규정에 따라 결정됩니다.</p>
		</div>
		<div class="section-heading mt-8" id="nov2021_terms_accommodations_heading" style="margin-bottom: 8px;">
			<button type="button" class="bui-button bui-button--tertiary bui-button--large bui-button--negative-inset-adjustment--start font-normal move-top" onclick="window.scrollTo({ top: 0, behavior: 'smooth' })">맨 위로 돌아가기</button>
			<h2 class="bui-text bui-text--variant-headline_2 text-black m-0 mb-2 p-0">B. 숙소</h2>
		</div>
		<ul class="bui-list bui-list--text bui-text bui-text--variant-body_1 m-0 p-0 list-style-none">
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_accommodations_scope_subheading" class="bui-link decoration-none font-normal">B1. 본 절의 범위</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_accommodations_contract_subheading" class="bui-link decoration-none font-normal">B2. 계약 관계</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_accommodations_we_subheading" class="bui-link decoration-none font-normal">B3. 당사에서 할 일</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_accommodations_you_subheading" class="bui-link decoration-none font-normal">B4. 고객이 할 일</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_accommodations_price_subheading" class="bui-link decoration-none font-normal">B5. 요금 및 결제</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_accommodations_amendments_subheading" class="bui-link decoration-none font-normal">B6. 변경, 취소 및 환불</a>
			</li>
			<li class="bui-list__item mb-2">
				<a href="#nov2021_terms_accommodations_know_subheading" class="bui-link decoration-none font-normal">B7. 고객이 알아야 할 다른 사항</a>
			</li>
		</ul>
		<div class="text-black">
			<p id="nov2021_terms_accommodations_scope_subheading" class="bui-text bui-text--variant-headline_3">B1. 본 절의 범위</p>
			<p class="bui-text bui-text--variant-body_1">1. 본 절은 숙소 상품 및 서비스에 대한 특정 약관을 포함합니다.</p>
			<p id="nov2021_terms_accommodations_contract_subheading" class="bui-text bui-text--variant-headline_3">B2. 계약 관계</p>
			<div>
				<p class="bui-text bui-text--variant-body_1">1. 고객이 예약할 경우, 서비스 제공업체와 직접 계약 관계를 맺게 됩니다. 당사는 고객의 예약에 대한 ‘계약 당사자’가 아닙니다.</p>
				<p class="bui-text bui-text--variant-body_1">2. Booqueen.com은 플랫폼을 소유 및 운영합니다.</p>
				<p class="bui-text bui-text--variant-body_1">3. 당사 플랫폼은 당사와 상업적 관계가 있는 숙소만 표시하며 해당 숙소의 모든 상품 또는 서비스를 반드시 표시하지는 않습니다.</p>
				<p class="bui-text bui-text--variant-body_1">4. 서비스 제공업체에 대한 정보(예: 시설, 이용 수칙, 지속가능성 조치) 및 해당 여행 상품에 대한 정보(예: 요금, 예약 가능 객실, 취소 정책)는 업체가 당사에 제공한 정보를 기반으로 합니다. 제공업체는 이러한 정보가 정확하고 최신 상태인지 확인할 책임이 있습니다.</p>
			</div>
			<p id="nov2021_terms_accommodations_we_subheading" class="bui-text bui-text--variant-headline_3">B3. 당사에서 할 일</p>
			<div>
				<p class="bui-text bui-text--variant-body_1">1. 당사는 서비스 제공업체가 숙소를 홍보하고 판매할 수 있는 플랫폼을 제공하며, 고객은 숙소를 검색, 비교, 예약할 수 있습니다.</p>
				<p class="bui-text bui-text--variant-body_1">2. 고객이 숙소를 예약하면, 당사는 고객과 서비스 제공업체에 고객의 이름을 포함한 고객 예약의 세부 정보를 제공합니다.</p>
				<p class="bui-text bui-text--variant-body_1">3. 예약의 약관에 따라 당사는 고객이 원하는 경우 예약을 변경하거나 취소하도록 도울 수 있습니다.</p>
			</div>
			<p id="nov2021_terms_accommodations_you_subheading" class="bui-text bui-text--variant-headline_3">B4. 고객이 할 일</p>
			<div>
				<p class="bui-text bui-text--variant-body_1">1. 고객이 연락처 정보를 올바르게 기입해야 당사 및/또는 서비스 제공업체가 고객에게 예약에 대한 정보를 제공하거나 필요한 경우 연락을 취할 수 있습니다.</p>
				<p class="bui-text bui-text--variant-body_1">2. 본 약관과 예약 과정에서 표시되는 약관을 주의 깊게 확인해 주시기 바랍니다.</p>
				<p class="bui-text bui-text--variant-body_1">3. 숙소와 비치된 가구, 비품, 전자 제품 및 기타 품목을 주의해서 다루어 모든 품목이 입실 시와 같은 상태로 유지되어야 합니다. 고장, 손상 또는 분실이 발생한 경우 가능한 한 이를 빨리, 그리고 어떤 경우에도 체크아웃 하기 전에 해당 숙소의 직원에게 알려야 합니다.</p>
				<p class="bui-text bui-text--variant-body_1">4. 숙박하는 동안 숙소 및 내부 품목의 보안을 유지해야 합니다. 따라서 문 또는 창문을 잠그지 않은 상태로 두지 말아주세요.</p>
			</div>
			<p id="nov2021_terms_accommodations_price_subheading" class="bui-text bui-text--variant-headline_3">B5. 요금 및 결제</p>
			<p class="bui-text bui-text--variant-body_1">1. 위에서 ‘요금’(A6) 및 ‘결제’(A7) 부분을 확인하시기 바랍니다.</p>
			<p id="nov2021_terms_accommodations_amendments_subheading" class="bui-text bui-text--variant-headline_3">B6. 변경, 취소 및 환불</p>
			<p class="bui-text bui-text--variant-body_1">1. 위에서 ‘정책’(A8) 부분을 확인하시기 바랍니다.</p>
			<p id="nov2021_terms_accommodations_know_subheading" class="bui-text bui-text--variant-headline_3">B7. 고객이 알아야 할 다른 사항</p>
			<div>
				<p class="bui-text bui-text--variant-strong_1">최저가 맞춤</p>
				<p class="bui-text bui-text--variant-body_1">1. 당사는 고객에게 항상 최고의 요금을 제공하고자 합니다. 당사에서 숙소를 예약한 후 고객이 다른 웹사이트에서 (동일한 조건의) 동일한 숙소가 더 저렴한 요금으로 제공되는 것을 확인한 경우, 당사는 최저가 맞춤 이용약관을 적용하여 차액을 환불해 드릴 것을 약속합니다.</p>
				<p class="bui-text bui-text--variant-strong_1">파트너사 요금</p>
				<div class="bui-text bui-text--variant-body_1">
					<p>2. 당사 플랫폼의 일부 옵션은 ‘파트너사 요금’으로 기재되어 있으며, 이는 해당 옵션이 서비스 제공업체로부터 직접 당사에 제공되는 대신 Booqueen.com의 파트너사를 통해 당사에 제공된다는 것을 의미합니다. 달리 명시되지 않는 한, 고객이 예약한 파트너사 요금에는 다음 조건이 적용됩니다.</p>
					<ul class="bui-list bui-list--unordered ml-4">
						<li class="bui-list__item">예약 시 결제가 이루어져야 합니다.</li>
						<li class="bui-list__item">예약 내용은 변경할 수 없습니다. 하지만 해당 요금에 무료 취소 정책이 적용되어 있을 경우, 고객은 기한 내에 무료로 취소할 수 있습니다.</li>
						<li class="bui-list__item">다른 혜택(프로모션, 인센티브 또는 리워드)과 중복 적용될 수 없습니다.</li>
						<li class="bui-list__item">당사 플랫폼에 평점 또는 이용후기를 남길 수 없습니다.</li>
					</ul>
				</div>
				<p class="bui-text bui-text--variant-strong_1">Booqueen.com의 요금 인센티브</p>
				<p class="bui-text bui-text--variant-body_1">3. 고객에게 표시되는 일부 요금 인하는 서비스 제공업체가 아닌 당사에서 부담합니다. 즉, 당사가 비용의 일부를 지불합니다.</p>
				<p class="bui-text bui-text--variant-strong_1">손해 배상 정책</p>
				<div class="bui-text bui-text--variant-body_1">
					<p>4. 예약 시 일부 서비스 제공업체가 ‘손해 배상 정책’에 대해 언급할 수 있습니다. 이는 고객의 그룹에 속한 누군가가 무언가를 분실하거나 손해를 입히는 경우 다음과 같은 절차를 밟아야 함을 의미합니다.</p>
					<ul class="bui-list bui-list--unordered ml-4">
						<li class="bui-list__item">고객은 해당 사실을 서비스 제공업체에 알려야 합니다.</li>
						<li class="bui-list__item">서비스 제공업체는 고객에게 직접 비용을 청구하는 대신, 14일 이내에 당사 플랫폼을 통해 고객의 예약번호로 손해 배상 요청을 제출합니다.</li>
						<li class="bui-list__item">이 경우 당사가 고객에게 그 사실을 전달하며, 고객은 의견이 있을 경우 당사에 알릴 수 있습니다. 또한 해당 청구에 동의하는지도 알려야 합니다.
							<ul class="bui-list bui-list--unordered list-style-circle mt-4">
								<li class="bui-list__item">고객이 동의하는 경우, 서비스 제공업체를 대신하여 당사가 고객에게 청구합니다.</li>
								<li class="bui-list__item">고객이 동의하지 않을 경우, 당사는 해당 사항을 조사하고 추후 논의 여부를 결정합니다.</li>
							</ul>
						</li>
					</ul>
					<p class="bui-text bui-text--variant-body_1">5. 서비스 제공업체가 당사 플랫폼을 통해 손해 정책에 따라 고객에게 청구할 수 있는 금액에는 제한(예약 과정에서 표시됨)이 있습니다.</p>
					<p class="bui-text bui-text--variant-body_1">6. 고객의 지불은 서비스 제공업체와 고객 간에 이루어지며, 당사는 서비스 제공업체를 대신하여 이를 처리할 뿐입니다.</p>
					<p class="bui-text bui-text--variant-body_1">7. 손해 배상 정책은 일반적인 청소, 정상적인 마모, 범죄(예: 도난) 또는 비물리적 ‘손해’(예: 흡연 또는 반려동물 동반으로 인한 벌금)와 관련이 없습니다.</p>
					<p class="bui-text bui-text--variant-body_1">8. 서비스 제공업체는 체크인 전 또는 체크인 시 ‘손해 보증금’을 요청할 수 있습니다. 이 경우, 당사는 고객이 예약하는 동안 해당 사항에 대해 전달하지만 이는 ‘손해 배상 정책’과 아무 관련이 없습니다. 당사는 손해 보증금과 관련된 어떠한 금전적 합의에도 관여하지 않습니다.</p>
					<p class="bui-text bui-text--variant-body_1">* 손해가 발생한 경우, 서비스 제공업체는 항상 손해 배상 정책과는 별도로 고객에 대한 (법적) 청구를 개시하기로 결정할 수 있습니다. 이 경우 한도액(위의 5항 참조)은 적용되지 않습니다.</p>
				</div>
				<p class="bui-text bui-text--variant-strong_1">서비스 운영 방식</p>
				<p class="bui-text bui-text--variant-body_1">9. 이용후기, 순위, 당사가 수익을 얻는 방법(및 기타)에 대한 정보는 당사의 서비스 운영 방식에 관해 설명하는 페이지를 확인하시기 바랍니다.</p>
			</div>
		</div>
		<div class="section-heading mt-8" id="nov2021_terms_dictionary_heading">
			<button type="button" class="bui-button bui-button--tertiary bui-button--large bui-button--negative-inset-adjustment--start font-normal move-top" onclick="window.scrollTo({ top: 0, behavior: 'smooth' })">맨 위로 돌아가기</button>
			<h2 class="bui-text bui-text--variant-headline_3 text-black m-0 mb-2 p-0">Booqueen.com 용어 설명</h2>
		</div>
		<div class="text-black">
			<p class="bui-text bui-text--variant-body_1">‘계정’은 (Booqueen.com 또는 그룹사의) 계정을 의미하며, 이를 통해 당사 플랫폼에서 여행 상품을 예약할 수 있습니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘숙소’는 서비스 제공업체에 의한 숙소 서비스 제공을 의미합니다(B절 전체에서 ‘서비스 제공업체’는 숙소 서비스를 제공하는 업체를 의미함).</p>
			<p class="bui-text bui-text--variant-body_1">‘예약’은 결제 시점에 상관없이 고객이 당사 플랫폼에서 여행 상품을 예약하는 것을 의미합니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘Booqueen.com’ 또는 ‘당사’는 Booqueen.com 숙소를 의미합니다. </p>
			<p class="bui-text bui-text--variant-body_1">‘신용카드 캐시백’은 당사가 고객을 위해 등록한 결제 수단으로 현금화할 수 있지만 향후 여행 상품의 비용을 충당하는 데는 사용할 수 없는 금전적 가치가 있는 혜택을 의미합니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘요건을 충족하는 예약’은 리워드 자격 요건을 충족하는 예약을 의미합니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘그룹사’는 Booqueen.com의 계열사(Booqueen.com의 지분을 직접 보유하는 회사)를 의미합니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘주 운전자’는 예약 과정에서 세부 정보가 입력된 운전자를 의미하며, 해당 예약을 변경 또는 취소하거나 당사와 협의할 수 있는 유일한 사람입니다(단, 이를 수행할 다른 사람을 지명한다고 당사에 전달하는 경우는 제외).</p>
			<p class="bui-text bui-text--variant-body_1">‘고객이 사용하는 통화로 결제’는 서비스 제공업체가 고객의 통화를 사용하지 않을 경우 당사가 때때로 제공하는 결제 옵션을 의미합니다. 이 옵션을 사용하면 고객은 자신의 통화로 결제할 수 있습니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘결제 수단’은 결제 또는 송금에 사용되는 수단(신용카드, 직불카드, 은행 계좌, PayPal, ApplePay 등)을 의미합니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘플랫폼’은 고객이 여행 상품을 예약할 수 있는 웹사이트/앱을 의미하며, Booqueen.com 또는 제3자 계열사에서 소유 또는 관리합니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘리워드’는 고객이 약속받은 혜택을 의미합니다. 대부분의 경우 리워드는 여행 포인트, 현금 포인트, 신용카드 캐시백 또는 특정 항목으로 교환되는 바우처입니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘서비스 제공업체’는 플랫폼에서 여행 관련 상품이나 서비스를 제공하는 업체를 의미합니다. 이는 호텔 또는 기타 숙소의 소유주를 포함하되 이에 국한되지 않습니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘약관’은 이러한 서비스 약관을 의미합니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘제3자 애그리게이터’는 (a) 고객과 서비스 제공업체를 중개하는 회사, 또는 (b) 여행 상품의 재판매인 역할을 하는 회사를 의미합니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘여행 포인트’는 향후 여행 상품의 비용을 충당하는 데 사용할 수 있지만 ‘현금화’할 수 없는 금전적 가치가 있는 혜택을 의미합니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘여행 상품’은 플랫폼의 여행 관련 상품 또는 서비스 중 하나를 의미합니다.</p>
			<p class="bui-text bui-text--variant-body_1">‘선결제’는 (실제로 이용할 때가 아니라) 상품 또는 서비스를 예약할 때 결제하는 것을 의미합니다.</p>
		</div>
		<div class="bui-text bui-text bui-text--variant-body_1">
			<p class="m-0">버전: 1.0</p>
			<p class="m-0">날짜: 2022년 4월 06일</p>
			<p class="m-0">본 서비스 약관은 정기적(연 1~2회)으로 갱신됩니다.</p>
		</div>
	</div>
</body>
</html>