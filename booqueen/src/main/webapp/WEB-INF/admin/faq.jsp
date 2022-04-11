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
	<title>문의 게시판</title>
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
						<div class="card-header" style="font-size: 20px;"><svg class="svg-inline--fa fa-table fa-w-16 me-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="table" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M464 32H48C21.49 32 0 53.49 0 80v352c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V80c0-26.51-21.49-48-48-48zM224 416H64v-96h160v96zm0-160H64v-96h160v96zm224 160H288v-96h160v96zm0-160H288v-96h160v96z"></path></svg>문의 게시판</div>
						<div class="card-body">
							<a class="btn btn-primary" href="${contextPath}/faqUpload.mdo">등록하기</a>
							<hr>
							<div class="dataTable-wrapper dataTable-loading no-footer sortable searchable fixed-columns">
								<div class="dataTable-top">
									<div class="dataTable-dropdown">
										<label>
											<select class="dataTable-selector">
												<option value="5">5</option>
												<option value="10" selected>10</option>
												<option value="15">15</option>
												<option value="20">20</option>
												<option value="25">25</option>
											</select>
										</label>
									</div>
									<div class="dataTable-search"><input class="dataTable-input" placeholder="Search..." type="text"></div>
								</div>
								<div class="dataTable-container">
									<table id="datatablesSimple" class="dataTable-table">
										<thead>
											<tr>
												<th style="width: 5.25815%;">No.</th>
												<th style="width: 10.25815%;">구분</th>
												<th style="width: 19.6817%;">제목</th>
												<th style="width: 54.9875%;">내용</th>
												<th style="width: 13.07268%;">비고</th>
											</tr>
										</thead>
									<tbody>
										<c:forEach var="faqList" items="${faqList}" varStatus="status">
										<tr>
											<td>${status.index+1}</td>
											<td>${faqList.category}</td>
											<td>${faqList.title}</td>
											<td>${faqList.contents}</td>
											<td style="vertical-align: middle; text-align: center;"><button id="faqCorrection" class="btn btn-danger" onclick="location.href='${contextPath}/faqCorrection.mdo?seq=${faqList.seq}';">수정 및 삭제</button></td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="dataTable-bottom">
								<div class="dataTable-info">Showing 1 to 10 of 39 entries</div>
									<nav class="dataTable-pagination">
										<ul class="dataTable-pagination-list">
											<li class="active"><a href="#" data-page="1">1</a></li>
											<li class=""><a href="#" data-page="2">2</a></li>
											<li class=""><a href="#" data-page="3">3</a></li>
											<li class=""><a href="#" data-page="4">4</a></li>
											<li class="pager"><a href="#" data-page="2">›</a></li>
										</ul>
									</nav>
								</div>
							</div>
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
