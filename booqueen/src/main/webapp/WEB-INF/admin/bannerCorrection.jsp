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
	<title>배너 수정</title>
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
					<h1 class="mt-4">Banner</h1>
					<div class="card mb-4"></div>
					<div class="card mb-4">
						<div class="card-header"><svg class="svg-inline--fa fa-table fa-w-16 me-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="table" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M464 32H48C21.49 32 0 53.49 0 80v352c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V80c0-26.51-21.49-48-48-48zM224 416H64v-96h160v96zm0-160H64v-96h160v96zm224 160H288v-96h160v96zm0-160H288v-96h160v96z"></path></svg> 배너수정</div>
						<form action="${contextPath}/bannerRegister.mdo" method="post" id="bannerRegister" method="post" enctype="multipart/form-data">
							<table style="width: 90%; margin: 24px; align-self: center;"> 
								<tbody>
									<tr>
										<td style="text-align: center">제목<input type="hidden" name="banner_seq" value="1"></td>
										<td><textarea id="faq_title" name="city" style="width: 90%;">${bannerVO.city}</textarea></td>
									</tr>
									<tr>
										<td><label for="formFileMultiple" class="form-label"></label></td>
										<td>수정 전 파일 : <a href="${bannerVO.file_url}">${bannerVO.file_url}</a><input name="uploadFile" class="form-control" style="width: 90%;" type="file" id="formFileMultiple" multiple></td>
									</tr>
								</tbody>
							</table>
						</form>
						<div style="text-align: center; margin: 0 0 24px;">
							<button form="bannerRegister" type="submit" id="submit" class="btn btn-primary">수정하기</button>
							<a href="${contextPath}/deleteBanner.mdo?seq_city=${bannerVO.seq_city}" class="btn btn-danger">삭제하기</a>
							<a href="banner.mdo" class="btn btn-warning">돌아가기</a>
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
