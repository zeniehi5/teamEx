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
	<title>신고당한 유저</title>
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
                	<br>
                    <div class="container-fluid px-4">
                        <div class="card mb-4">
                            <div class="card-header" style="font-size: 20px;">
                                <i class="fas fa-table me-1"></i>신고 회원 관리
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple1">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>회원 아이디</th>
                                            <th>이름</th>
                                            <th>신고 호텔</th>
                                            <th>신고 사유</th>
                                            <th>이용제한 설정</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="blockUserList" items="${blockUserList}" varStatus="status">
                                        <tr>
                                            <td>${status.index+1}</td>
                                            <td><a href="userMemberDetail.mdo?userid=${blockUserList.userid}">${blockUserList.userid}</a></td>
                                            <td><a href="userMemberDetail.mdo?userid=${blockUserList.userid}">${blockUserList.name}</a></td>
                                            <td><a href="hotelDetail.mdo?serialnumber=${blockUserList.serialnumber}">${blockUserList.hotelname}</a></td>
                                            <td>${blockUserList.whyblock}</td>
                                            <td><a id="block" class="btn btn-info" href="unblockUser.mdo?sequence=${blockUserList.sequence}">제한해제</a></td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
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
    </body>
</html>