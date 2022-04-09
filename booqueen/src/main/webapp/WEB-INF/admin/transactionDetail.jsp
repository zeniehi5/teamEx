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
	<title>거래상세내역</title>
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
	<link href="${contextPath}/resources/admin/css/transactionDetail.css" rel="stylesheet" />
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
                			<c:forEach var="transactionList" items="${transactionList}" varStatus="status">
	                        <div class="col-xl-3 col-md-6">
	                            <div class="card bg-primary text-white mb-4" style="background-color: #212529d1!important;">
	                                <div class="card-body">${transactionList.type}</div>
	                                <div class="card-footer d-flex align-items-center justify-content-between">
	                                    <a class="small text-white stretched-link">누적 ${transactionList.reservation_count}건</a>
	                                    <div style="display: flex;flex-direction: column;font-size: 13px; flex-grow: 1; text-align: right;">
		                                    <div>총 가격 : <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${transactionList.price}"/></div>
		                                    <div>총 수수료 : <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${transactionList.price * 0.15}"/></div>
	                                    </div>
	                                    <div class="small text-white"></div>
	                                </div>
	                            </div>
	                        </div>
	                        </c:forEach>
	                    </div> 
	                    <div class="card mb-4">
	                        <div class="card-header" style="font-size: 20px;">
	                            <i class="fas fa-table me-1"></i>상세 거래 내역 - ${transactionList.get(0).hotelname}
	                        </div>
	                        <div class="card-body">
	                            <table id="datatablesSimple">
	                                <thead>
	                                    <tr>
	                                    	<th>No.</th>
	                                        <th>객실 타입</th>
	                                        <th>가격</th>
	                                        <th>수수료</th>
	                                        <th style="width: 200px;">대금 지급 여부</th>
	                                    </tr>
	                                </thead>
	                                <tfoot>
	                                    <tr>
	                                    	<th>No.</th>
	                                        <th>객실 타입</th>
	                                        <th>가격</th>
	                                        <th>수수료</th>
	                                        <th>대금 지급 여부</th>
	                                    </tr>
	                                </tfoot>
	                                <tbody>
	                                	<c:forEach var="transactionVO" items="${transactionVO}" varStatus="status">
	                                	<c:if test="${transactionVO.use_status >= 3}">
	                                	<c:set var="index" value="${index+1}"/>
	                                    <tr>
	                                    	<td>${index}</td>
	                                        <td>${transactionVO.type}</td>
	                                        <td><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${transactionVO.price}"/></td>
	                                        <td><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${transactionVO.price * 0.15}"/></td>
	                                        <td>
		                                        <c:choose>
		                                        <c:when test="${transactionVO.use_status == 4}">
	                                        		지급 완료
		                                        </c:when>
		                                        <c:otherwise>
		                                        	미지급
		                                        </c:otherwise>
		                                        </c:choose>
	                                        </td>
	                                    </tr>
	                                    <c:set var="total_price" value="${total_price + transactionVO.price}"/>
	                                    </c:if>
	                                    </c:forEach>
	                                    <tr>
											<td colspan="5" style="text-align: right; padding-right: 100px;">
	                                            <span id="ca">총 금액 : <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${total_price}"/></span>
	                                            <span>총 수수료 : <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${total_price * 0.15}"/></span>
											</td>
	                                    </tr>
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
