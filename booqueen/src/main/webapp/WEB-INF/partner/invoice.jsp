<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>청구서</title>
<link rel="stylesheet" href="${contextPath}/resources/partner/css/invoice.css" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<script src="https://kit.fontawesome.com/fdb0bc6f32.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dcdb98d53fde6c7a197566a8729281a3"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/partner/header.jsp"/>
	<div class="container">
		<div class="invoice-container">
			<div class="invoice-header">
				<h1 class="invoice-header-title">청구서</h1>
			</div>
			<div class="spacer-large">
				<div class="spacer-medium">청구서는 예약 건의 체크아웃 날짜를 기준으로 발행됩니다.</div>
				<span>법인명</span>
				<button class="link-btn" id="modifyInfoBtn">Mapo</button>
			</div>
			<div class="spacer-large" id="guideBanner">
				<div class="banner-small">
					<div class="banner-content">
						<span>사용자 가이드를 통해 '청구서' 페이지의 주요 항목을 간단히 살펴보세요.</span>
						<button class="link-btn"><span>가이드 보기</span></button>
					</div>
					<button class="banner-close-btn" id="guideBannerClose"><i class="bi bi-x"></i></button>
				</div>
			</div>
			<div class="finance-invoice-banner" id="invoiceBanner">
				<div class="banner">
					<div class="banner-icon">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M304 0h-224c-35.35 0-64 28.65-64 64v384c0 35.35 28.65 64 64 64h224c35.35 0 64-28.65 64-64V64C368 28.65 339.3 0 304 0zM192 480c-17.75 0-32-14.25-32-32s14.25-32 32-32s32 14.25 32 32S209.8 480 192 480zM304 64v320h-224V64H304z"/></svg>
					</div>
					<div class="banner-content">
						<h1 class="banner-title"><span>미납 대금 알림 설정하기</span></h1>
						<p class="banner-text">
							<span>문자 알림을 허용하시면 미납 대금 발생 시 <strong>김 상민</strong>님(<strong>010 4129 9941</strong>)께 메시지를 보내드립니다.</strong></span>
						</p>
						<div class="banner-sms-btn">
							<button class="sms-btn" disabled="disabled">
								<span class="button-text">허용</span>
							</button>
							<button class="button-white">
								<span class="button-text">연락처 수정</span>
							</button>
							<button class="banner-close-btn" id="invoiceBannerClose"><i class="bi bi-x"></i></button>
						</div>
					</div>
				</div>
			</div>
			<div class="spacer-large">
				<div class="outstanding-balance">
					<div class="outstanding-balance-header"><span>미납금액</span></div>
					<table class="outstanding-balance-table">
						<thead class="table-head">
							<tr class="table-row">
								<th class="table-cell-head">문서명</th>
								<th class="table-cell-head">번호</th>
								<th class="table-cell-head">날짜</th>
								<th class="table-cell-head">기간</th>
								<th class="table-cell-head">옵션</th>
								<th class="table-cell-head">상태</th>
								<th class="table-cell-head table-cell-head-end">금액</th>
							</tr>
						</thead>
						<tbody class="table-body">
							<tr class="table-row">
								<td colspan="7" class="table-cell">
									<div class="table-empty-state">
										<img src="https://q-xx.bstatic.com/backend_static/common/icons/partner-thumbnails/hand-ok/35ce634a9dfc76bc30e3e4c5ce28722043d3f503.svg" alt="">
										<p class="empty-state-text">
											<span>현재 즉시 조치를 취해야 하는 청구서가 없습니다.</span>
										</p>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="finance-invoice">
				<div class="finance-invoice-table-header">
					<div class="finance-invoice-table-header-filter">
						<span class="table-header-title">연도별 검색</span>
						<div class="dropdown">
							<button class="dropdown-btn">
								<span>2022</span>
								<i class="bi bi-chevron-expand"></i>
							</button>
							<div class="dropdown-menu">
								<ul class="dropdown-content">
									<li>
										<button class="dropdown-item"><span>2022</span></button>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<a href="#" class="finance-invoice-download" disabled="disabled">
						<span class="button-text">2022 PDF 모두 다운로드</span>
					</a>
				</div>
				<table class="finance-invoice-table">
					<thead class="table-head">
						<tr class="table-row">
							<th class="table-cell-head">문서명</th>
							<th class="table-cell-head">번호</th>
							<th class="table-cell-head">날짜</th>
							<th class="table-cell-head">기간</th>
							<th class="table-cell-head">옵션</th>
							<th class="table-cell-head">상태</th>
							<th class="table-cell-head table-cell-head-end">금액</th>
						</tr>
					</thead>
					<tbody class="table-body">
						<tr class="table-row">
							<td colspan="7" class="table-cell">
								<div class="table-empty-state">
									<img src="https://r-xx.bstatic.com/backend_static/common/icons/partner-thumbnails/document-checklist/29227254544747731347d29e01feaab84a29af96.svg" alt="">
									<p class="empty-state-text">
										<span>올해 파트너님께 발행된 청구서가 아직 없습니다.</span>
									</p>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	<!-- Modal -->
	<!-- 청구서 상세 정보 -->
	<div class="modal-invoice" id="invoiceModal">
		<div class="modal-invoice-content">
			<div class="modal-header">
				<h1 class="modal-header-title">청구서 상세 정보</h1>
			</div>
			<hr class="modal-divider-light">
			<div class="modal-body">
				<div class="modal-spacer">
					<span>청구서 상세 정보는 여기서 확인하실 수 있습니다. 변경할 사항이 있으면 엑스트라넷 메시지 인박스를 통해 전달해 주시기 바랍니다.</span>
				</div>
				<div class="modal-spacer">
					<hr class="modal-divider">
					<table class="modal-invoice-table">
						<tbody class="table-body">
							<tr class="table-row">
								<td class="table-cell">법인명</td>
								<td class="table-cell table-value">Mapo</td>
							</tr>
							<tr class="table-row">
								<td class="table-cell">수령인</td>
								<td class="table-cell table-value"></td>
							</tr>
							<tr class="table-row">
								<td class="table-cell">주소</td>
								<td class="table-cell table-value">마포구 와우산로26길 9</td>
							</tr>
							<tr class="table-row">
								<td class="table-cell">Postal code</td>
								<td class="table-cell table-value">04059</td>
							</tr>
							<tr class="table-row">
								<td class="table-cell">도시</td>
								<td class="table-cell table-value">서울</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-invoice-button">
					<a href="#" class="button-blue">
						<span class="button-text">청구서 상세 정보 수정</span>
					</a>
					<button class="button-white button-white-modal" id="invoiceModalClose">
						<span class="button-text">닫기</span>
					</button>
				</div>
			</div>
			<button class="modal-close"><i class="bi bi-x"></i></button>
		</div>
	</div>
	<jsp:include page="/WEB-INF/partner/footer.jsp"/>
	<!-- 연락처 수정 -->
	<!-- <div class="modal-contact">
		<div class="modal-contact-content">
			<div class="modal-contact-header">

			</div>
		</div>
	</div> -->

	<script>
		// 연도별 검색 토굴
		$(document).ready(function() {
			$(".dropdown-btn").click(function() {
				$(".dropdown-menu").toggle();
			});
			$("#guideBannerClose").click(function() {
				$("#guideBanner").remove();
			});
			$("#invoiceBannerClose").click(function() {
				$("#invoiceBanner").remove();
			});
			$("#modifyInfoBtn").click(function() {
				$("#invoiceModal").toggle();
			})
		});

		// 청구서 상세 정보 열고 닫기
		var modalInvoice = document.getElementById("invoiceModal");
		var modalClose = document.getElementsByClassName("modal-close")[0];
		var invoiceModalClose = document.getElementById("invoiceModalClose");
		window.onclick = function (event) {
    if (event.target == modalInvoice) {
			modalInvoice.style.display = "none";
    }
		modalClose.onclick = function () {
			modalInvoice.style.display = "none";
		}
		invoiceModalClose.onclick = function () {
			modalInvoice.style.display = "none";
		}
	}

	</script>
</body>
</html>