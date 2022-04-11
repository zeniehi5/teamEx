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
	<title>약관 수정</title>
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
						<div class="card-header" style="font-size: 20px;"><svg class="svg-inline--fa fa-table fa-w-16 me-1" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="table" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M464 32H48C21.49 32 0 53.49 0 80v352c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V80c0-26.51-21.49-48-48-48zM224 416H64v-96h160v96zm0-160H64v-96h160v96zm224 160H288v-96h160v96zm0-160H288v-96h160v96z"></path></svg> 약관 수정</div>
						<form action="${contextPath}/updateTerms.mdo" method="POST" id="updateTerms">
							<table style="width: 90%; margin-top: 24px;"> 
								<tbody>
									<tr>
										<td style="text-align: center">구분</td>
										<td>
											<select name="category" style="padding: 10px; margin-bottom: 8px; width: 100%; padding: 8px;">
												<option value="A. 모든 여행 상품" <c:if test="${termsVO.category eq 'A. 모든 여행 상품'}">selected</c:if>>A. 모든 여행 상품</option>
												<option value="B. 숙소" <c:if test="${termsVO.category eq 'B. 숙소'}">selected</c:if>>B. 숙소</option>
												<option value="Booqueen.com 용어 설명" <c:if test="${termsVO.category eq 'Booqueen.com 용어 설명'}">selected</c:if>>Booqueen.com 용어 설명</option>
											</select>
										</td>
									</tr>
									<tr>
										<td style="text-align: center">제목<input type="hidden" name="seq" value="${termsVO.seq }"></td>
										<td><textarea id="terms_title" name="title" style="width: 100%; padding: 8px;">${termsVO.title }</textarea></td>
									</tr>
									<tr>
										<td style="text-align: center">약관내용</td>
										<td><textarea id="terms_content" name="contents" style="width: 100%; height: 200px; padding: 8px;">${termsVO.contents }</textarea></td>
									</tr>
								</tbody>
							</table>
							<input type="hidden" name="seq" value="${termsVO.seq}"/>
						</form>
						<div style="align-self: center; margin: 12px 0 24px;">
							<button form="updateTerms" type="submit" id="submit" class="btn btn-primary">수정하기</button>
							<c:set var="seq" value="${termsVO.seq}"/>
							<a class="btn btn-danger" href="${contextPath}/deleteTerms.mdo?seq=${seq}">삭제하기</a>
							<a href="${contextPath}/terms.mdo" class="btn btn-warning">돌아가기</a>
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
