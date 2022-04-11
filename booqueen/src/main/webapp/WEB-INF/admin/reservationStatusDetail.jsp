<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>예약현황 상세정보</title>
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
	<link href="${contextPath}/resources/admin/css/style2.css" rel="stylesheet" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<jsp:include page="/WEB-INF/admin/header.jsp"/>
	<div id="layoutSidenav">
		<jsp:include page="/WEB-INF/admin/menubar.jsp"/>
		<div id="layoutSidenav_content">
			<main>
				<br>
				<div class="container-fluid px-4">
					<div class="card mb-4">
						<div class="card-header">
							<div style="font-size: 20px; font-weight: bold;">예약 상세 정보</div>
						</div>
						<div class="card-body">
							<div class="table01"> 
								<div class="left">
									<fmt:parseDate value="${reservationVO.checkin_date}" var="checkin_date" pattern="yyyy-MM-dd"/>
									<fmt:parseDate value="${reservationVO.checkout_date}" var="checkout_date" pattern="yyyy-MM-dd"/>
									<%-- <fmt:parseNumber value="${checkin_date / (1000*60*60*24)}" integerOnly="true" var="checkin_date_number" scope="request"/>
									<fmt:parseNumber value="${checkout_date / (1000*60*60*24)}" integerOnly="true" var="checkout_date_number" scope="request" /> --%>
									<div>체크인<br><h4><fmt:formatDate value="${reservationVO.checkin_date}" pattern="yyyy년 MM월 dd일 (E)"/></h4></div>
									<div>체크아웃<br><h4><fmt:formatDate value="${reservationVO.checkout_date}" pattern="yyyy년 MM월 dd일 (E)"/></h4></div>
									<div>숙박기간<br>1박</div>
									<div>총 투숙객:<br>2</div>
									<div>총 객실 수<br>${reservationVO.count_room}</div>
									<div>총 요금<br><h6><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${reservationVO.price}" /></h6></div>
								</div>
								<div class="right">
									<div>투숙객 이름:<br>${reservationVO.name}</div>
									<div>예약자 ID:<br>${reservationVO.userid}</div> 
									<div class="abc">
										<div><div>예약자 이름:<br>${reservationVO.lastname}${reservationVO.firstname}</div></div> 
										<div>
											<div>채널<br>Booqueen.com</div>
											<div id="as">수수료 부과 대상 금액:<br><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${reservationVO.price}" /></div>
										</div>
										<div>
											<div>예약번호:<br>${reservationVO.reservation_number}</div>
											<div>수수료:<br><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${reservationVO.price * 0.15}" /></div>
										</div>
										<div>예약일<br><fmt:formatDate value="${reservationVO.reservation_date}" pattern="yyyy년 MM월 dd일 (E)"/></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="payment">
						<h4>결제</h4>
						<div>결제현황<br>
							<select class="dataTable-selector">
								<option value="Y">결제 완료</option>
								<option value="N">결제 미완료</option>
							</select>
						</div>
					</div>
				</div>
			</main>
			<jsp:include page="/WEB-INF/admin/footer.jsp"/>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/datatables-simple-demo.js"></script>
</body>
</html>
