<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>유저정보</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${contextPath}/resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
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
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts5" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 호텔 관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts5"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="${contextPath }/hotelList.mdo">호텔 목록</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts3" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 파트너 관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts3"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="${contextPath }/PartnerMember.mdo">파트너 목록</a> <a
									class="nav-link" href="${contextPath }/blockPartnerList.mdo">차단된 파트너</a>
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
                    <div class="container-fluid px-4">
                        <!-- <h2 class="mt-4">회원 분석 및 목록</h2> -->
                        <br>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-header card-header-success card-header-icon">
                                        <div class="card-icon">
                                        </div>
                                        <p class="card-category">총 가입자 수</p>
                                        <h3 class="card-title"><fmt:formatNumber type="number" value= />
                                            <small>${fn:length(userList)}명</small>

                                        </h3>
                                    </div>
                                    <div class="card-footer">
                                        <div class="stats">
                                            <a href="#datatablesSimple" class="view_all" style="font-size: 0.875em;">전체보기</a> 
                                        </div>
                                    </div>   
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-header card-header-info card-header-icon">
                                        <div class="card-icon">
                                        </div>
                                        <p class="card-category">전날 가입자 수</p>
                                        <h3 class="card-title"><!-- ${regCount == null ? 0 : regCount} -->
                                            <small>${joined_yesterday+0}명</small>
                                        </h3>
                                    </div>
                                    <div class="card-footer">
                                        <div class="stats">
                                        <i class="material-icons" style="font-size: 0.875em;">매일 0시 초기화</i>
                                        </div>
                                    </div>
                                </div>
                            </div>    
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-header card-header-info card-header-icon">
                                        <div class="card-icon">
                                        </div>
                                        <p class="card-category">오늘 가입자 수</p>
                                        <h3 class="card-title">
                                            <small>${joined_today+0}명</small>
                                        </h3>
                                    </div>
                                    <div class="card-footer">
                                        <div class="stats">
                                        <i class="material-icons" style="font-size: 0.875em;">매일 0시 초기화</i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                            <div class="card bg-info text-white mb-4">
                                <div class="card-header card-header-info card-header-icon">
                                    <div class="card-icon">
                                    </div>
                                    <p class="card-category">신고된 회원 수</p>
                                    <h3 class="card-title">
                                        <small>1명</small>
                                    </h3>
                                </div>
                                <div class="card-footer" style="padding: 0.6rem 1rem;">
                                    <div class="stats" style="display: flex; justify-content: space-between;">
                                    <a class="small text-white stretched-link" href="${contextPath }/reportedUser.mdo">신고 회원 목록</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            </div>  
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        가입자 연령
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                        남녀비율
                                    </div>
                                    <div class="card-body"><canvas id="myPieChart" width="100%" height="40"></canvas></div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                회원 목록
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>이름</th>
                                            <th>이메일</th>
                                            <th>성별</th>
                                            <th>연락처</th>
                                            <th>생년월일</th>
                                            <th>가입일</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>No.</th>
                                            <th>이름</th>
                                            <th>이메일</th>
                                            <th>성별</th>
                                            <th>연락처</th>
                                            <th>생년월일</th>
                                            <th>가입일</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach var="userList" items="${userList }" varStatus ="status">
                                        <tr>
                                            <td scope="row"><a href="${contextPath}/userMemberDetail.mdo?userid=${userList.userid}">${status.count }</a></td>
                                            <td><a href="${contextPath}/userMemberDetail.mdo?userid=${userList.userid}">${userList.name }</a></td>
                                            <td><a href="${contextPath}/userMemberDetail.mdo?userid=${userList.userid}">${userList.userid }</a></td>
                                            <td><a href="${contextPath}/userMemberDetail.mdo?userid=${userList.userid}">${userList.gender }</a></td>
                                            <td><a href="${contextPath}/userMemberDetail.mdo?userid=${userList.userid}">${userList.phone1 } - ${userList.phone2 } - ${userList.phone3 }</a></td>
                                            <td><a href="${contextPath}/userMemberDetail.mdo?userid=${userList.userid}">${userList.birth_year } - ${userList.birth_month } - ${userList.birth_day }</a></td>
                                            <td><a href="${contextPath}/userMemberDetail.mdo?userid=${userList.userid}">${userList.since }</a></td>
                                        </tr> 
                                    </c:forEach>            
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/chart-area-demo.js"></script>
	<%-- <script src="${contextPath}/resources/admin/javascript/chart-bar-demo.js"></script> --%>
	<%-- <script src="${contextPath}/resources/admin/javascript/chart-pie-demo.js"></script> --%>
	
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/datatables-simple-demo.js"></script>
	
	<script>
		// Pie Chart Example
		var female = '${getUserGender.female_count}';
		var male = '${getUserGender.male_count}';
	            
		var ctx = document.getElementById("myPieChart");
		var myPieChart = new Chart(ctx, {
		type: 'doughnut',
		data: {
			labels: ["남성", "여성"],
			datasets: [{
				data: [male, female],
				backgroundColor: ['#007bff', '#dc3545'],
				}],
			},
		});
	</script>
	
	<script>
		// Bar Chart Example
		var twenty = '${userAgeGroup.twenty}';
		var thirty = '${userAgeGroup.thirty}';
		var forty = '${userAgeGroup.forty}';
		var fifty = '${userAgeGroup.fifty}';
		var sixty = '${userAgeGroup.sixty}';
		var ctx = document.getElementById("myBarChart");
		var myLineChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: ["20대 이하", "30대", "40대", "50대", "60대 이상"],
				datasets: [{
					label: "가입수",
					backgroundColor: "rgba(2,117,216,1)",
					borderColor: "rgba(2,117,216,1)",
					data: [twenty, thirty, forty, fifty, sixty],
					}],
			},
			options: {
				scales: {
					xAxes: [{
						time: {
							unit: 'age'
						},
						gridLines: {
							display: false
						},
						ticks: {
							maxTicksLimit: 5
						}
					}],
					yAxes: [{
						ticks: {
							min: 0,
							max: 15,
							maxTicksLimit: 5
						},
						gridLines: {
							display: true
						}
					}],
				},
				legend: {
					display: false
				}
			}
		});
	</script>
    </body>
</html>
