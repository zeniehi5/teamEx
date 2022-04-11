
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>호텔 목록</title>
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
	<link href="${contextPath}/resources/admin/css/styles.css" rel="stylesheet" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<jsp:include page="/WEB-INF/admin/header.jsp"/>
	<div id="layoutSidenav">
		<jsp:include page="/WEB-INF/admin/menubar.jsp"/>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<br>
					<div class="card mb-4">
						<div class="card-header" style="font-size: 20px;"><i class="fas fa-table me-1"></i>호텔 목록</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>호텔명</th>
										<th>주소</th>
										<th>담당자</th>
										<th>연락처</th>
										<th>성급</th>
										<th>자세히 보기</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="hotelList" items="${hotelList }" varStatus="status">
									<input type ="hidden" value="${hotelList.serialnumber }">
									<tr>
										<td>${hotelList.hotelname }</td>
										<td>${hotelList.city }</td>
										<td>${hotelList.manager}</td>
										<td>${hotelList.telephone}</td>
										<td>
											<c:if test="${hotelList.star+0 == '5'}">★★★★★</c:if>
											<c:if test="${hotelList.star+0 == '4'}">★★★★</c:if>
											<c:if test="${hotelList.star+0 == '3'}">★★★</c:if>
											<c:if test="${hotelList.star+0 == '2'}">★★</c:if>
											<c:if test="${hotelList.star+0 == '1'}">★</c:if>
										</td>
										<td><a class="btn btn-danger" href="${contextPath}/hotelDetail.mdo?serialnumber=${hotelList.serialnumber }">상세정보</a></td>
									</tr>
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/datatables-simple-demo.js"></script>
</body>
</html>
