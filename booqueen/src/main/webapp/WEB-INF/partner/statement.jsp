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
		<div class="reservation-container">
			<div class="page-container">
				<div class="page-header">
					<div class="header-row">
						<h1 class="page-header-title">예약 명세서</h1>
					</div>
					<div class="header-row">
						<p class="page-header-content">청구서에 포함된 예약 상세 정보를 확인하실 수 있습니다.</p>
					</div>
				</div>
				<div class="finance-reservations">
					<div class="body-row">
						<div class="form-container">
							<form action="" class="form-period">
								<div class="form-group">
									<label for="period">기간</label>
									<select name="" id="" class="select-period">
										<option value="">-- 다음 중 하나를 선택해주세요 --</option>
									</select>
								</div>
							</form>
						</div>
					</div>
					<div class="body-row">
						<div class="button-group">
							<a href="#" class="button-blue">
								<span class="button-inner">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M344 240h-56L287.1 152c0-13.25-10.75-24-24-24h-16C234.7 128 223.1 138.8 223.1 152L224 240h-56c-9.531 0-18.16 5.656-22 14.38C142.2 263.1 143.9 273.3 150.4 280.3l88.75 96C243.7 381.2 250.1 384 256.8 384c7.781-.3125 13.25-2.875 17.75-7.844l87.25-96c6.406-7.031 8.031-17.19 4.188-25.88S353.5 240 344 240zM256 0C114.6 0 0 114.6 0 256s114.6 256 256 256s256-114.6 256-256S397.4 0 256 0zM256 464c-114.7 0-208-93.31-208-208S141.3 48 256 48s208 93.31 208 208S370.7 464 256 464z"/></svg>
									XLS 파일로 다운로드
								</span>
							</a>
							<a href="#" class="button-blue">
								<span class="button-inner">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M344 240h-56L287.1 152c0-13.25-10.75-24-24-24h-16C234.7 128 223.1 138.8 223.1 152L224 240h-56c-9.531 0-18.16 5.656-22 14.38C142.2 263.1 143.9 273.3 150.4 280.3l88.75 96C243.7 381.2 250.1 384 256.8 384c7.781-.3125 13.25-2.875 17.75-7.844l87.25-96c6.406-7.031 8.031-17.19 4.188-25.88S353.5 240 344 240zM256 0C114.6 0 0 114.6 0 256s114.6 256 256 256s256-114.6 256-256S397.4 0 256 0zM256 464c-114.7 0-208-93.31-208-208S141.3 48 256 48s208 93.31 208 208S370.7 464 256 464z"/></svg>
									CSV 파일로 다운로드
								</span>
							</a>
							<a href="#" class="button-blue">
								<span class="button-inner">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M344 240h-56L287.1 152c0-13.25-10.75-24-24-24h-16C234.7 128 223.1 138.8 223.1 152L224 240h-56c-9.531 0-18.16 5.656-22 14.38C142.2 263.1 143.9 273.3 150.4 280.3l88.75 96C243.7 381.2 250.1 384 256.8 384c7.781-.3125 13.25-2.875 17.75-7.844l87.25-96c6.406-7.031 8.031-17.19 4.188-25.88S353.5 240 344 240zM256 0C114.6 0 0 114.6 0 256s114.6 256 256 256s256-114.6 256-256S397.4 0 256 0zM256 464c-114.7 0-208-93.31-208-208S141.3 48 256 48s208 93.31 208 208S370.7 464 256 464z"/></svg>
									이 페이지 인쇄하기
								</span>
							</a>
						</div>
					</div>
					<div class="alert-danger" role="alert">
						<ul>
							<li>예약 명세서를 찾을 수 없습니다.</li>
						</ul>
					</div>
				</div>
			</div>
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