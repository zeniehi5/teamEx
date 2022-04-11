<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
	<title>호텔 상세정보</title>
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
	<link href="${contextPath}/resources/admin/css/styles.css" rel="stylesheet" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<style type="text/css">
	table.type02 {
		border-collapse: separate;
		border-spacing: 0;
		text-align: left;
		line-height: 1.5;
		border-top: 1px solid #ccc;
		border-left: 1px solid #ccc;
		margin : 20px 10px;
	}
	table.type02 th {
		width: 250px;
		padding: 10px;
		font-weight: bold;
		vertical-align: top;
		border-right: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
		border-top: 1px solid #fff;
		border-left: 1px solid #fff;
		background: #eee;
	}
	table.type02 td {
		width: 90%;
		padding: 10px;
		vertical-align: top;
		border-right: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
	}
	table.type02 td >input{
		width: 100%;
		height: 100%;
		border: none;
		resize: none;
	}
	textarea {
		width: 100%;
		height: 100%;
		border: none;
		resize: none;
	}
	textarea:focus, input:focus{
		outline: none;
	}
	</style>
</head>
<body class="sb-nav-fixed">
	<jsp:include page="/WEB-INF/admin/header.jsp"/>
	<div id="layoutSidenav">
		<jsp:include page="/WEB-INF/admin/menubar.jsp"/>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<br>
					<c:choose>
					<c:when test="${empty hotelDatail && hotelDetail == null}">          
					<div class="card mb-4">
						<div class="card-header">
							<div class="col three">
								<div style="font-size: 20px; font-weight: bold;">호텔 정보</div>
							</div>
						</div>
						<div class="card-body">
							<form action="" name="goodsForm" method="POST" enctype="multipart/form-data">
								<table class="type02">
									<tr style="margin: 100px;">
										<th>이미지</th>
										<td><img name="img" style="width: 30%; height: 30%" src="${contextPath}/resources/admin/images/default-hotel-img.png" /></td>
									</tr>
									<tr>
										<th>호텔명</th>
										<td><input type="text" name="hotel_name" style="width: 100%; height: 100%" readonly value="준비중입니다"></td>
									</tr>
									<tr>
										<th>대표자</th>
										<td><input type="text" name="hotel_name" style="width: 100%; height: 100%" readonly value="준비중입니다"></td>
									</tr>
									<tr>
										<th>대표자 이메일</th>
										<td><input type="text" name="partner_email" readonly value="준비중입니다"></td>
									</tr>
									<tr>
										<th>주소</th>
										<td><input type="text" name="hotel_name" style="width: 100%; height: 100%" readonly value="준비중입니다"></td>
									</tr>
									<tr>
										<th>호텔번호</th>
										<td><input type="text" name="partner_Phone"  readonly value="준비중입니다"></td>
									</tr>
								</table>
								<br>
							</form>
						</div>
					</div>
					</c:when>
					<c:otherwise>
					<div class="card mb-4">
						<div class="card-header">
							<div class="col three">
								<div style="font-size: 20px; font-weight: bold;">호텔 정보</div>
							</div>
						</div>
						<div class="card-body">
							<form action="" name="goodsForm" method="POST" enctype="multipart/form-data">
								<table class="type02">
									<tr style="margin: 100px;">
										<th>이미지</th>
										<td><img name="img" style="width: 30%; height: 30%" src="${hotelDetail.file_url}"/></td>
									</tr>
									<tr>
										<th>호텔명</th>
										<td><input type="text" name="hotel_name" style="width: 100%; height: 100%" readonly value="${hotelDetail.hotelname}"></td>
									</tr>
									<tr>
										<th>담당자</th>
										<td><input type="text" name="hotel_name" style="width: 100%; height: 100%" readonly value="${hotelDetail.manager}"></td>
									</tr>
									<tr>
										<th>담당자 이메일</th>
										<td><input type="text" name="partner_email" readonly value="${hotelDetail.member_email}"></td>
									</tr>
									<tr>
										<th>위치</th>
										<td><input type="text" name="hotel_name" style="width: 100%; height: 100%" readonly value="${hotelDetail.address1}${hotelDetail.address2}"></td>
									</tr>
									<tr>
										<th>호텔번호</th>
										<td><input type="text" name="partner_Phone"  readonly value="${hotelDetail.serialnumber}"></td>
									</tr>
								</table>
								<br>
							</form>
						</div>
					</div>
					</c:otherwise>
					</c:choose>
					
					<c:choose>
					<c:when test="${empty roomList && roomList == null}">
					<div class="card mb-4">
						<div class="card-header">
							<div class="col three">
								<div style="font-size: 20px; font-weight: bold;">객실 정보</div>
							</div>
						</div>
						<div class="card-body">
							<form action="" name="goodsForm" method="POST" enctype="multipart/form-data">
								<div class="table-responsive">
									<table class="table align-middle">
										<thead>
											<tr>
												<th class="w-25" scope="col">객실 유형</th>
												<th class="w-25" scope="col">기본 판매가</th>
												<th class="w-25" scope="col">선택 사항</th>
												<th class="w-25" scope="col">비고</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<span>
							                            <!-- <a href="roomDetail.mdo"> -->
							              				<strong>준비중입니다</strong>
							              				<!-- </a> -->
							              			</span>
							              		</td>
							              		<td><strong>&#8361;</strong></td>
							              		<td>조식 포함<br>무료취소</td>
							              		<td></td>
							              	</tr>
										</tbody>
									</table>
								</div>
								<br>
							</form>
						</div>
					</div>
					</c:when>
					<c:otherwise>
					<div class="card mb-4">
    					<div class="card-header">
							<div class="col three">
								<div style="font-size: 20px; font-weight: bold;">객실 정보</div>
							</div>
						</div>
						<div class="card-body">
							<form action="" name="goodsForm" method="POST" enctype="multipart/form-data">
								<div class="table-responsive">
									<table class="table align-middle">
										<thead>
											<tr>
												<th class="w-25" scope="col">객실 유형</th>
												<th class="w-25" scope="col">기본 판매가</th>
												<th class="w-25" scope="col">선택 사항</th>
												<th class="w-25" scope="col">비고</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${empty roomList || roomList == null}">
											<tr>
												<td><span><strong>이용 가능한 객실이 없습니다</strong></span></td>
											</tr>
											</c:if>
											<c:if test="${!empty roomList}">
											<c:forEach var="roomList" items="${roomList}">
											<tr>
												<td><span>${roomList.type}</span></td>
												<td><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${roomList.price}"/></td>
												<td>조식 포함<br>무료취소</td>
												<td></td>
											</tr>
											</c:forEach>
											</c:if>
										</tbody>
									</table>
								</div>
								<br>
							</form>
						</div>
					</div>
					</c:otherwise>
					</c:choose>
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
