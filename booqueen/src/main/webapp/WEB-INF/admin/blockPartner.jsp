<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>파트너 차단</title>
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
	<link href="${contextPath}/resources/admin/css/styles.css" rel="stylesheet" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
</head>
<body class="sb-nav-fixed">
	
	<jsp:include page="/WEB-INF/admin/header.jsp"/>
	
	<div id="layoutSidenav">
		<jsp:include page="/WEB-INF/admin/menubar.jsp"/>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<!-- <h2 class="mt-4">차단된 파트너</h2> -->
               		<br>
					<div class="card mb-4">
						<div class="card-header" style="font-size: 20px;"><i class="fas fa-table me-1"></i>차단된 파트너</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>last name</th>
										<th>first name</th>
										<th>phone</th>
										<th>email</th>
										<th>보유 호텔</th>
										<th>차단 사유</th>
										<th>이용제한 설정</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${blockedList}" var="PartnerVO">
										<tr>
											<td><a href="partnerMemberDetail.mdo?email=${PartnerVO.email}">${PartnerVO.lastname }</a></td>
											<td><a href="partnerMemberDetail.mdo?email=${PartnerVO.email}">${PartnerVO.firstname}</a></td>
											<td><a href="partnerMemberDetail.mdo?email=${PartnerVO.email}">${PartnerVO.telephone }</a></td>
											<th><a href="partnerMemberDetail.mdo?email=${PartnerVO.email}">${PartnerVO.email }</a></th>
											<td><a href="partnerMemberDetail.mdo?email=${PartnerVO.email}">신라호텔</a></td>
											<td><a href="partnerMemberDetail.mdo?email=${PartnerVO.email}">${PartnerVO.whyblock }</a></td>
											<td>
												<button id="infoDelete" class="btn btn-danger" onclick="activate('${PartnerVO.email}', '${PartnerVO.lastname}', '${PartnerVO.firstname}')" data-email="${PartnerVO.email}" data-firstname="${PartnerVO.firstname}" data-lastname="${PartnerVO.lastname}">제한해제</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div id="ActivateAccount" class="delete-modal">
						<!-- Modal content -->
						<form class="delete-modal-content" action="unblock.mdo"
							method="post">
							<span class="close">&times;</span>
							<div class="modal-title"></div>

							<div class="delete-hr">
								<div></div>
							</div>
							<div class="modal-delete-reason">
								<div class=activate-title>선택된 계정을 활성화하시겠습니까?</div>
							</div>
							<div class="delete-hr">
								<div></div>
							</div>
							<div class="modal-delete-button">
								<button type="submit" class="delete-btn-real" id="deleteBtnReal">확인</button>
								<button type="button" class="delete-btn-fake" id="deleteBtnReal">취소</button>
							</div>
						</form>
					</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2021</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/datatables-simple-demo.js"></script>
	<script>
		function activate(email, lastname, firstname) {
			$("#ActivateAccount").css('display', 'block');
			$(".modal-title").html("<h3><span>" + lastname + firstname + "</span> 님 활성화</h3><input type='hidden' name='email' value=" + email +">");
		}
		$(".close").click(function() {
			$("#ActivateAccount").css('display', 'none');
		});
		$(".delete-btn-fake").click(function() {
			$("#ActivateAccount").css('display', 'none');
		});
	</script>
</body>
</html>
