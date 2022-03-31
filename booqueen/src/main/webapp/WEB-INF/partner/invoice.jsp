<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>청구서</title>
<link rel="stylesheet"
	href="${contextPath}/resources/partner/css/invoice.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<script src="https://kit.fontawesome.com/fdb0bc6f32.js"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dcdb98d53fde6c7a197566a8729281a3"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	
	function chargeBill(e){
		var answer = confirm("선택한 예약의 결제금 청구를 진행하시겠습니까?")
		if(answer){
			var reservationNumber = e
			
			const reservationVO = {
					"reservation_number":reservationNumber
			}
			
			$.ajax({
				method:"POST",
				url:"chargeBillingStateMent.pdo",
				contentType:"application/json",
				dataType:"json",
				data:JSON.stringify(reservationVO),
				success:function(result){
					if(result.message == "SUCCESS"){
						alert("결제금 청구가 접수되었습니다.")
						location.reload()
					} else {
						alert("다시 시도해 주세요.")
					}
						
				},
				error:function(){
					console.log("통신 실패")
				}
			})
			
		} else {
			alert("결제대금 청구를 취소합니다.")
		}
	}
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/partner/header.jsp" />
	<div class="container">
		<div class="invoice-container">
			<div class="invoice-header">
				<h1 class="invoice-header-title">청구서</h1>
			</div>
			<div class="spacer-large">
				<div class="spacer-medium">청구서는 예약 건의 체크아웃 날짜를 기준으로 발행됩니다.</div>
				<span>법인명</span>
				<button class="link-btn" id="modifyInfoBtn">${hotel.hotelname}</button>
			</div>

			<div class="finance-invoice">
				<div class="finance-invoice-table-header">
					<div class="finance-invoice-table-header-filter">
						<span class="table-header-title">연도별 검색</span>
						<div class="dropdown">
							<button class="dropdown-btn">
								<span>4월</span> <i class="bi bi-chevron-expand"></i>
							</button>

							<div class="dropdown-menu">
								<ul class="dropdown-content">
									<li>
										<button class="dropdown-item">
											<span>2월</span>
										</button>
										<button class="dropdown-item">
											<span>3월</span>
										</button>
										<button class="dropdown-item">
											<span>4월</span>
										</button>
										<button class="dropdown-item">
											<span>5월</span>
										</button>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<a href="#" class="finance-invoice-download" disabled="disabled">
						<span class="button-text">PDF 다운로드</span>
					</a>
				</div>
				<table class="finance-invoice-table">
					<thead class="table-head">
						<tr class="table-row">
							<th class="table-cell-head">예약번호</th>
							<th class="table-cell-head">객실 고유번호</th>
							<th class="table-cell-head">아이디</th>
							<th class="table-cell-head">체크인 날짜</th>
							<th class="table-cell-head">체크아웃 날짜</th>
							<th class="table-cell-head">청구금액</th>
							<th class="table-cell-head">이름</th>
							<th class="table-cell-head">비고</th>
						</tr>
					</thead>
					<tbody class="table-body">

						<c:forEach items="${invoice}" var="InvoiceVO">
							<tr class="table-row">
								<td class="table-cell-head">${InvoiceVO.reservation_number}</td>
								<td class="table-cell-head">${InvoiceVO.room_id}</td>
								<td class="table-cell-head">${InvoiceVO.email}</td>
								<td class="table-cell-head"><fmt:formatDate pattern="yyyy-MM-dd" value="${InvoiceVO.checkin_date}"/></td>
								<td class="table-cell-head"><fmt:formatDate pattern="yyyy-MM-dd" value="${InvoiceVO.checkout_date}"/></td>
								<td class="table-cell-head">&#8361;<fmt:formatNumber type="number"><c:out value="${InvoiceVO.billing}"/></fmt:formatNumber></td>
								<td class="table-cell-head">${InvoiceVO.lastname}${InvoiceVO.firstname}</td>
								<td class="table-cell-head">
									<c:if test="${2 eq InvoiceVO.use_status || InvoiceVO.use_status == 2}">
                                	<button type="button" class="button button_secondary button_wide" onclick="chargeBill('${InvoiceVO.reservation_number}')">
                                		<span class="button_text">
                                			<span>청구하기</span>
                                		</span>
                                	</button>
                                	</c:if>
                                	<c:if test="${3 eq InvoiceVO.use_status || InvoiceVO.use_status == 3}">
                                	<button type="button" class="button button_secondary button_wide" disabled="disabled" onclick="chargeBill('${InvoiceVO.reservation_number}')">
                                		<span class="button_text">
                                			<span>정산 대기중</span>
                                		</span>
                                	</button>
                                	</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</div>
					<div class="table_pagination">
		<div class="pagination_nav">
			<ul class="pagination_list">
				<!-- 이전 -->
				<c:if test="${paging.currentPage eq 1}">
					<li class="pagination_item pagination_prev pagination_disabled">
						<a class="pagination_link"> <svg
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
								width="20" height="20" class="pagination_icon"
								style="user-select: auto;">
                                                <path
									d="M14.55 18a.74.74 0 0 1-.53-.22l-5-5A1.08 1.08 0 0 1 8.7 12a1.1 1.1 0 0 1 .3-.78l5-5a.75.75 0 0 1 1.06 0 .74.74 0 0 1 0 1.06L10.36 12l4.72 4.72a.74.74 0 0 1 0 1.06.73.73 0 0 1-.53.22zm-4.47-5.72zm0-.57z"
									style="user-select: auto;"></path>
                                            </svg> <span
							class="pagination_direction">이전</span>
					</a>
					</li>
				</c:if>
				<c:if test="${paging.currentPage ne 1}">
					<c:url var="before" value="/invoice.pdo">
						<c:param name="currentPage" value="${paging.currentPage -1}" />
					</c:url>
					<li class="pagination_item pagination_prev pagination"><a
						href="${before}" class="pagination_link"> <svg
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
								width="20" height="20" class="pagination_icon"
								style="user-select: auto;">
                                                <path
									d="M14.55 18a.74.74 0 0 1-.53-.22l-5-5A1.08 1.08 0 0 1 8.7 12a1.1 1.1 0 0 1 .3-.78l5-5a.75.75 0 0 1 1.06 0 .74.74 0 0 1 0 1.06L10.36 12l4.72 4.72a.74.74 0 0 1 0 1.06.73.73 0 0 1-.53.22zm-4.47-5.72zm0-.57z"
									style="user-select: auto;"></path>
                                            </svg> <span
							class="pagination_direction">이전</span>
					</a></li>
				</c:if>
				<!-- 현재 페이지 -->
				<c:forEach var="page" begin="${paging.startPage}"
					end="${paging.endPage}">
					<c:if test="${page eq paging.currentPage}">
						<li class="pagination_current_page"><span>${page} 페이지</span></li>
					</c:if>
				</c:forEach>
				<!-- 다음 -->
				<c:if test="${paging.currentPage eq paging.maxPage}">
					<li class="pagination_item pagination_next pagination_disabled">
						<a class="pagination_link"> <span class="pagination_direction">다음</span>
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
								width="20" height="20" class="pagination_icon"
								style="user-select: auto;">
                                                <path
									d="M9.45 6c.2 0 .39.078.53.22l5 5c.208.206.323.487.32.78a1.1 1.1 0 0 1-.32.78l-5 5a.75.75 0 0 1-1.06 0 .74.74 0 0 1 0-1.06L13.64 12 8.92 7.28a.74.74 0 0 1 0-1.06.73.73 0 0 1 .53-.22zm4.47 5.72zm0 .57z"
									style="user-select: auto;"></path>
                                            </svg>
					</a>
					</li>
				</c:if>
				<c:if test="${paging.currentPage ne paging.maxPage}">
					<c:url var="after" value="invoice.pdo">
						<c:param name="currentPage" value="${paging.currentPage + 1}" />
					</c:url>
					<li class="pagination_item pagination_next pagination"><a
						href="${after}" class="pagination_link"> <span
							class="pagination_direction">다음</span> <svg
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
								width="20" height="20" class="pagination_icon"
								style="user-select: auto;">
                                                <path
									d="M9.45 6c.2 0 .39.078.53.22l5 5c.208.206.323.487.32.78a1.1 1.1 0 0 1-.32.78l-5 5a.75.75 0 0 1-1.06 0 .74.74 0 0 1 0-1.06L13.64 12 8.92 7.28a.74.74 0 0 1 0-1.06.73.73 0 0 1 .53-.22zm4.47 5.72zm0 .57z"
									style="user-select: auto;"></path>
                                            </svg>
					</a></li>
				</c:if>
			</ul>
		</div>
	</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/partner/footer.jsp" />

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
		window.onclick = function(event) {
			if (event.target == modalInvoice) {
				modalInvoice.style.display = "none";
			}
			modalClose.onclick = function() {
				modalInvoice.style.display = "none";
			}
			invoiceModalClose.onclick = function() {
				modalInvoice.style.display = "none";
			}
		}
	</script>
</body>
</html>