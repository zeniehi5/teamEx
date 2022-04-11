<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>거래내역</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="${contextPath}/resources/admin/css/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body class="sb-nav-fixed">
	<jsp:include page="/WEB-INF/admin/header.jsp"/>
	<div id="layoutSidenav">
		<jsp:include page="/WEB-INF/admin/menubar.jsp"/>
		<div id="layoutSidenav_content">
			<main>
				<div class="row" style="width: 100%;">
					<div class="col-xl-1234" style="margin: 23px!important; width: 96%!important;">
						<div class="col-xl-1234" style="width: 100%!important; margin: 0!important;">
							<div class="card-header" style="font-size: 20px"><i class="fas fa-chart-bar me-1"></i>거래 차트</div>
							<div class="card-body"><canvas id="myChart" width="1000%" height="400"></canvas></div>
						</div>
					</div>
				</div>
				<div class="container-fluid px-4">
					<div class="card mb-4">
						<div class="card-header" style="font-size: 20px"><i class="fas fa-table me-1"></i>거래내역</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>Serial No.</th>
										<th>호텔명</th>
										<th>지급 받은 수수료</th>
										<th>마지막 거래</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Serial No.</th>
										<th>호텔명</th>
										<th>총 수수료</th>
										<th>마지막 거래</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="commissionList" items="${commissionList}" varStatus="status">
									<tr>
										<td><a href="transactionDetail.mdo?serialnumber=${commissionList.serialnumber}">${commissionList.serialnumber}</a></td>
										<td><a href="transactionDetail.mdo?serialnumber=${commissionList.serialnumber}"">${commissionList.hotelname}</a></td>
										<td><a href="transactionDetail.mdo?serialnumber=${commissionList.serialnumber}""><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${commissionList.price * 0.15}"/></a></td>
										<td><a href="transactionDetail.mdo?serialnumber=${commissionList.serialnumber}"">${commissionList.commission_date}</a></td>
									<tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</main>
	        <jsp:include page="/WEB-INF/admin/footer.jsp"/>
		</div>
	</div>

<c:forEach var="transactionGraph" items="${transactionGraph}" varStatus="status">
	<c:set var="now_year"><fmt:formatDate value="${now}" pattern="yyyy"/></c:set>
	<c:set var="transaction_year"><fmt:formatDate value="${transactionGraph.commission_date}" pattern="yyyy"/></c:set>
	<c:set var="transaction_month"><fmt:formatDate value="${transactionGraph.commission_date}" pattern="MM"/></c:set>
	<c:if test="${transaction_year eq now_year}">
	<c:choose>
	<c:when test="${transaction_month eq '01'}">
	<c:set var="january" value="${january+1 }"/>
	</c:when>
	<c:when test="${transaction_month eq '02'}">
	<c:set var="february" value="${february+1 }"/>
	</c:when>
	<c:when test="${transaction_month eq '03'}">
	<c:set var="march" value="${march+1 }"/>
	</c:when>
	<c:when test="${transaction_month eq '04'}">
	<c:set var="april" value="${april+1 }"/>
	</c:when>
	<c:when test="${transaction_month eq '05'}">
	<c:set var="may" value="${may+1 }"/>
	</c:when>
	<c:when test="${transaction_month eq '06'}">
	<c:set var="june" value="${june+1 }"/>
	</c:when>
	<c:when test="${transaction_month eq '07'}">
	<c:set var="july" value="${july+1 }"/>
	</c:when>
	<c:when test="${transaction_month eq '08'}">
	<c:set var="august" value="${august+1 }"/>
	</c:when>
	<c:when test="${transaction_month eq '09'}">
	<c:set var="september" value="${september+1 }"/>
	</c:when>
	<c:when test="${transaction_month eq '10'}">
	<c:set var="october" value="${october+1 }"/>
	</c:when>
	<c:when test="${transaction_month eq '11'}">
	<c:set var="november" value="${november+1 }"/>
	</c:when>
	<c:when test="${transaction_month eq '12'}">
	<c:set var="december" value="${december+1 }"/>
	</c:when>
	</c:choose>
	</c:if>
</c:forEach>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/datatables-simple-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script>
	var january = '${january}';
	var february = '${february}';
	var march = '${march}';
	var april = '${april}';
	var may = '${may}';
	var june = '${june}';
	var july = '${july}';
	var august = '${august}';
	var september = '${september}';
	var october = '${october}';
	var november = '${november}';
	var december = '${december}';

	const labels = [
	  '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'
	];

	const data = {
		labels: labels,
		datasets: [{
			label: '거래 수',
			backgroundColor: 'rgb(255, 99, 132)',
			borderColor: 'rgb(255, 99, 132)',
			data: [january, february, march, april, may, june, july, august, september, october, november, december],
		}]
	};
	
	const config = {
		type: 'line',
		data: data,
		options: {}
	};

	const myChart = new Chart(
		document.getElementById('myChart'),
		config
	);
	</script>
</body>
</html>
