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
        <title>거래내역</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${contextPath}/resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    </head>
    <body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="${contextPath }/userMember.mdo">Booqueen.com</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<!-- <div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..."
					aria-label="Search for..." aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div> -->
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="logout.mdo">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
       	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Interface</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts2" aria-expanded="false" aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
							회원 관리
							<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
						</a>
						<div class="collapse" id="collapseLayouts2"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="${contextPath }/userMember.mdo">회원 목록</a>
								<a class="nav-link" href="${contextPath }/reportedUser.mdo">신고 회원 관리</a> 
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts5" aria-expanded="false" aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
							호텔 관리
							<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
						</a>
						<div class="collapse" id="collapseLayouts5" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="${contextPath }/hotelList.mdo">호텔 목록</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts3" aria-expanded="false" aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
							파트너 관리
							<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
						</a>
						<div class="collapse" id="collapseLayouts3" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="${contextPath }/PartnerMember.mdo">파트너 목록</a>
								<a class="nav-link" href="${contextPath }/blockPartnerList.mdo">차단된 파트너</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts4" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 사이트 관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts4"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="${contextPath }/faq.mdo">문의 게시판</a> <a
									class="nav-link" href="${contextPath }/banner.mdo">추천 여행지(배너)</a> <a
									class="nav-link" href="${contextPath }/terms.mdo">이용 약관 관리</a>
							</nav>
						</div>
						
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 재무
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="${contextPath }/reservationStatus.mdo">예약 현황 관리</a> <a
									class="nav-link" href="${contextPath }/transactionHistory.mdo">거래 내역 리스트</a> <a
									class="nav-link" href="${contextPath }/payment.mdo">대금 지급 관리</a>
							</nav>
						</div>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Booqueen.com
                    </div>
                </nav>
            </div>
           
            <div id="layoutSidenav_content">
                <main>
                 <div class="row" style="width: 100%;">
                            <div class="col-xl-1234" style="margin: 23px!important; width: 96%!important;">
                                <div class="col-xl-1234" style="width: 100%!important; margin: 0!important;">
                                    <div class="card-header" style="font-size: 20px">
                                        <i class="fas fa-chart-bar me-1"></i>거래 차트
                                    </div>
                                    <div class="card-body"><canvas id="myChart" width="1000%" height="400"></canvas></div>
                                </div>
                            </div>
                            
            </div> 
                    <div class="container-fluid px-4">
                        <div class="card mb-4">
                            <div class="card-header" style="font-size: 20px">
                                <i class="fas fa-table me-1"></i>거래내역
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Serial No.</th>
                                            <th>호텔명</th>
                                            <th>총 수수료</th>
                                            <th>마지막 거래</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Serial No.</th>
                                            <th>호텔명</th>
                                            <th>총 수수료</th>
                                            <th>마지막 거래</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="commissionList" items="${commissionList}" varStatus="status">
                                    	<tr>
	                                        <td><a href="transactionDetail.mdo?serialnumber=${commissionList.serialnumber}">${commissionList.serialnumber}</a></td>
	                                        <td><a href="transactionDetail.mdo?serialnumber=${commissionList.serialnumber}"">${commissionList.hotelname}</a></td>
	                                        <td><a href="transactionDetail.mdo?serialnumber=${commissionList.serialnumber}""><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${commissionList.price * 0.15}"/></a></td>
	                                        <td><a href="transactionDetail.mdo?serialnumber=${commissionList.serialnumber}"">${commissionList.commission_date}</a></td>
                                        <tr>
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
        
        <c:forEach var="transactionGraph" items="${transactionGraph}" varStatus="status">
        	<c:set var="now_year"><fmt:formatDate value="${now}" pattern="yyyy"/></c:set>
        	<c:set var="transaction_year"><fmt:formatDate value="${transactionGraph.commission_date}" pattern="yyyy"/></c:set>
        	<c:set var="transaction_month"><fmt:formatDate value="${transactionGraph.commission_date}" pattern="MM"/></c:set>
        	<c:if test="${transaction_year eq now_year}">
        		<c:choose>
        			<c:when test="${transaction_month eq '01'}">
        				<c:set var="january" value="${january+1 }"/>
        			</c:when>
        			<c:when test="${transaction_month eq '02'}">
        				<c:set var="february" value="${february+1 }"/>
        			</c:when>
        			<c:when test="${transaction_month eq '03'}">
        				<c:set var="march" value="${march+1 }"/>
        			</c:when>
        			<c:when test="${transaction_month eq '04'}">
        				<c:set var="april" value="${april+1 }"/>
        			</c:when>
        			<c:when test="${transaction_month eq '05'}">
        				<c:set var="may" value="${may+1 }"/>
        			</c:when>
        			<c:when test="${transaction_month eq '06'}">
        				<c:set var="june" value="${june+1 }"/>
        			</c:when>
        			<c:when test="${transaction_month eq '07'}">
        				<c:set var="july" value="${july+1 }"/>
        			</c:when>
        			<c:when test="${transaction_month eq '08'}">
        				<c:set var="august" value="${august+1 }"/>
        			</c:when>
        			<c:when test="${transaction_month eq '09'}">
        				<c:set var="september" value="${september+1 }"/>
        			</c:when>
        			<c:when test="${transaction_month eq '10'}">
        				<c:set var="october" value="${october+1 }"/>
        			</c:when>
        			<c:when test="${transaction_month eq '11'}">
        				<c:set var="november" value="${november+1 }"/>
        			</c:when>
        			<c:when test="${transaction_month eq '12'}">
        				<c:set var="december" value="${december+1 }"/>
        			</c:when>
        		</c:choose>
        	</c:if>
        </c:forEach>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/datatables-simple-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script>
	
	var january = '${january}';
	var february = '${february}';
	var march = '${march}';
	var april = '${april}';
	var may = '${may}';
	var june = '${june}';
	var july = '${july}';
	var august = '${august}';
	var september = '${september}';
	var october = '${october}';
	var november = '${november}';
	var december = '${december}';
	
	const labels = [
	  '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'
	];
	
	const data = {
	  labels: labels,
	  datasets: [{
	    label: '거래 수',
	    backgroundColor: 'rgb(255, 99, 132)',
	    borderColor: 'rgb(255, 99, 132)',
	    data: [january, february, march, april, may, june, july, august, september, october, november, december],
	  }]
	};
	
	const config = {
	  type: 'line',
	  data: data,
	  options: {}
	};
	</script>

	<script>
	  const myChart = new Chart(
	    document.getElementById('myChart'),
	    config
	  );
	</script>
    </body>
</html>
