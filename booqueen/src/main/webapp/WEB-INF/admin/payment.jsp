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
	<title>대금지급관리</title>
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
                        <!-- <h2 class="mt-4">대금 지급 관리</h2> -->
                        <br>
                        <div class="col-lg-6" style="width: 100%;">
                                <div class="card mb-4">
                                    <div class="card-header" style="font-size: 20px;">
                                        <i class="fas fa-chart-pie me-1"></i>지급 현황
                                    </div>
                                    <div class="card-body"><canvas id="myPieChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        <div class="card mb-4">
                            <div class="card-header" style="font-size: 20px;">
                                <i class="fas fa-table me-1"></i>지급 목록
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Serial No.</th>
                                            <th>호텔명</th>
                                            <th>예약자 ID</th>
                                            <th>요금</th>
                                            <th>수수료</th>
                                            <th>수수료를 제외한 금액</th>
                                            <th>대금 지급 현황</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Serial No.</th>
                                            <th>호텔명</th>
                                            <th>예약자 ID</th>
                                            <th>요금</th>
                                            <th>수수료</th>
                                            <th>수수료를 제외한 금액</th>
                                            <th>대금 지급 현황</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="paymentStatusList" items="${paymentStatusList}" varStatus="status">
                                        <tr>
                                            <td>${paymentStatusList.serialnumber}</td>
                                            <td>${paymentStatusList.hotelname}</td>
                                            <td>${paymentStatusList.userid}</td>
                                            <td><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${paymentStatusList.price}"/></td>
                                            <td><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${paymentStatusList.price * 0.15}"/></td>
                                            <td><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${paymentStatusList.price * 0.85}"/></td>
                                            <td><div class="dataTable-dropdown" style="display: flex; flex-direction: row;">
                                            	<form action="${contextPath}/paymenStatusChange.mdo" method="post">
                                                <label>
                                                    <select class="dataTable-selector" name="use_status">
                                                    	<option value="3" <c:if test="${paymentStatusList.use_status == '3'}">selected</c:if>>미지급</option>
														<option value="4" <c:if test="${paymentStatusList.use_status == '4'}">selected</c:if>>지급</option>
                                                    </select>                                                        
                                                </label>
                                               	<input type="hidden" name="reservation_number" value="${paymentStatusList.reservation_number}">
                                               	<input type="hidden" name="serialnumber" value="${paymentStatusList.serialnumber}">
                                               	<input type="hidden" name="hotelname" value="${paymentStatusList.hotelname}">
                                               	<input type="hidden" name="price" value="${paymentStatusList.price}">
                                               	<button type="submit" id="correction" class="btn btn-primary"  onclick="">변경</button>
                                                </form>
                                                </div>
                                            </td>
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
       
       <script>
	// Pie Chart Example
	var payment_count = '${payment_count}';
	var non_payment_count = '${non_payment_count}';
            
	var ctx = document.getElementById("myPieChart");
	var myPieChart = new Chart(ctx, {
	type: 'doughnut',
	data: {
		labels: ["지급", "미지급"],
		datasets: [{
			data: [payment_count, non_payment_count],
			backgroundColor: ['#007bff', '#dc3545'],
			}],
		},
	});
	</script>
	</body>
</html>
