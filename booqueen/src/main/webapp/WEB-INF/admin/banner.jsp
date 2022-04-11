<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>배너</title>
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
					<div class="row">
   						<div class="col-xl-3 col-md-6">
       						<div class="card bg-primary text-white mb-4">
           						<div class="card-body" style="text-align:center;">배너 등록</div>
								<a class="small text-white stretched-link" href="bannerUpload.mdo"></a>
							</div>
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header" style="font-size: 20px;"><i class="fas fa-table me-1"></i>배너 리스트</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>No.</th>
										<th>도시명</th>
										<th>이미지 링크 <span style="color: #adb5bd;">(URL 클릭 시 이미지 확인 가능)</span></th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="bannerList" items="${bannerList}" varStatus="status">
									<tr>
										<th>${status.index+1}</th>
										<th>${bannerList.city}</th>
										<th><a href="${bannerList.file_url}">${bannerList.file_url}</a></th>
										<td><a class="btn btn-danger" href="bannerCorrection.mdo?seq_city=${bannerList.seq_city}">수정 및 삭제</a></td>
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
