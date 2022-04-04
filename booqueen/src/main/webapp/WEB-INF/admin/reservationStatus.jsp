<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <title>예약 현황</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${contextPath}/resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
    
    	<c:set var="now_month"><fmt:formatDate value="${now}" pattern="MM"/></c:set>
    	<c:set var="now_day"><fmt:formatDate value="${now }" pattern="dd"/></c:set>
	    <c:set var="sumprice" value="0"/>
	    <c:set var="sumcommision" value="0"/>
	    
    <c:forEach var="sum" items="${reservation }">
	  	 <input type="hidden" value="${sum.price }">
	  	 <input type="hidden" value="${sum.commission }">
	  	 <input type="hidden" value="${sum.reservation_date }">
	  	 
	  	  <c:set var="sumprice" value="${sumprice + sum.price }"/>
	      <c:set var="sumcommission" value="${sumcommission + sum.commission}"/>
	      <c:set var="reservation_date_month"><fmt:formatDate value="${sum.reservation_date}" pattern="MM" /></c:set> 
	      <c:set var="checkout_date_day"><fmt:formatDate value="${sum.checkout_date}" pattern="dd" /></c:set>
	      <c:set var="checkout_date_month"><fmt:formatDate value="${sum.checkout_date}" pattern="MM" /></c:set>
	      <c:set var="reservation_date_day"><fmt:formatDate value="${sum.reservation_date}" pattern="dd" /></c:set>
	      <c:set var="cancel_date_day"><fmt:formatDate value="${sum.cancel_date }" pattern="dd" /></c:set>
	       
	      <c:if test="${now_month eq reservation_date_month }">
	      	<c:set var="monthReservation" value="${monthReservation+1}"/>
	      </c:if>
	    <c:choose>
  	 		<c:when test="${reseravation_date ne null}">
		     <c:if test="${now_day eq reservation_date_day }">
		      	<c:set var="dayReservation" value="${dayReservation+1 }"/>      	
		      </c:if>
		  	</c:when>
      		<c:when test="${reseravation_date eq null}">
		  	<c:set var="dayReservation" value="0"></c:set>
			</c:when>
		</c:choose>	 
		
		<c:choose>
  	 		<c:when test="${cancel_date ne null}">
		     <c:if test="${now_day eq cancel_date_day }">
		      	<c:set var="dayCancle" value="${dayCancel+1 }"/>      	
		      </c:if>
		  	</c:when>
      		<c:when test="${cancel_date eq null}">
		  	<c:set var="dayCancel" value="0"></c:set>
			</c:when>
		</c:choose>	 
		
		  <c:choose>
		  <c:when test="${now_month eq checkout_date_month }">   
		      <c:if test="${now_day >= checkout_date_day}">
		      	<c:set var="i" value="${i+1 }"/>
		      </c:if>
		  </c:when>	
		  </c:choose>   
    </c:forEach>
    
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
						
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts2" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 회원 관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
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
            <!--main-->
               <main>
                <div class="container-fluid px-4"> 
                    
                    <br>
                    <div class="row">
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-primary text-white mb-4">
                                <div class="card-body">금월 총 예약</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link">${total_reservation_month+0}건</a>
                                    <div class="small text-white"><!-- <i class="fas fa-angle-right"></i> --></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-warning text-white mb-4">
                                <div class="card-body">금일 예약건 수</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link">${total_reservation_day+0}건</a>
                                    <div class="small text-white"><!-- <i class="fas fa-angle-right"></i> --></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-success text-white mb-4">
                                <div class="card-body">금일 예약취소</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link">${total_reservation_cancel+0}건</a>
                                    <div class="small text-white"><!-- <i class="fas fa-angle-right"></i> --></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-danger text-white mb-4">
                                <div class="card-body">금월 이용완료</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link">${total_complete+0}건</a>
                                    <div class="small text-white"><!-- <i class="fas fa-angle-right"></i> --></div>
                                </div>
                            </div>
                        </div>
                    </div>  
                    	<%-- 차트 --%>
                         <%-- <div class="row">
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
                        </div> --%>
                    <div class="card mb-4">
                        <div class="card-header" style="font-size: 20px;">
                            <i class="fas fa-table me-1"></i>예약 현황
                            <div style="float:right;">
                  
                    <h6>누적 예약금:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8361;<fmt:formatNumber type="number" value="${sumprice}"/></h5>
                    <h6>수수료:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8361;<fmt:formatNumber type="number" value="${sumcommission}"/></h5>
                    </div>
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                    	<th>예약번호</th>
                                    	<th>예약 날짜</th>
                                        <th>투숙객 이름</th>
                                        <th>호텔명</th>
                                        <th>객실</th>
                                        <th>체크인</th>
                                        <th>체크아웃</th>
                                        <th>예약 상태</th>
                                        <th>요금</th>
                                        <th>수수료</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:set var="sum_price" value="0"/>
                                <c:set var="sum_commision" value="0"/>
                                
								<c:forEach  var="ReservationVO" items="${reservation }" varStatus ="status">
                                        <tr> 
                                        	<td><a href="reservationStatusDetail.mdo?reservation_number=${ReservationVO.reservation_number}">${ReservationVO.reservation_number }</a></td>
                                        	<td><a href="reservationStatusDetail.mdo?reservation_number=${ReservationVO.reservation_number}">${ReservationVO.reservation_date }</a></td>
                                            <td><a href="reservationStatusDetail.mdo?reservation_number=${ReservationVO.reservation_number}">${ReservationVO.lastname}${ReservationVO.firstname}</a></td>
                                            <td><a href="reservationStatusDetail.mdo?reservation_number=${ReservationVO.reservation_number}">${ReservationVO.hotelname }</a></td>
                                            <td><a href="reservationStatusDetail.mdo?reservation_number=${ReservationVO.reservation_number}">${ReservationVO.type }</a></td>
                                            <td><a href="reservationStatusDetail.mdo?reservation_number=${ReservationVO.reservation_number}">${ReservationVO.checkin_date }</a></td>
                                            <td><a href="reservationStatusDetail.mdo?reservation_number=${ReservationVO.reservation_number}">${ReservationVO.checkout_date }</a></td>
                                            <c:choose>
                                                	<c:when test="${ReservationVO.status == true }">
                                                		<td><a href="reservationStatusDetail.mdo?reservation_number=${ReservationVO.reservation_number}">정상</a></td>
                                                	</c:when>
                                                	<c:otherwise>
                                                		<td><a href="reservationStatusDetail.mdo?reservation_number=${ReservationVO.reservation_number}">취소</a></td>
                                                	</c:otherwise>
                                               </c:choose>
                                            <td><a href="reservationStatusDetail.mdo?reservation_number=${ReservationVO.reservation_number}">&#8361;<fmt:formatNumber type="number" value="${ReservationVO.price }"/></a></td>
                                            <td><a href="reservationStatusDetail.mdo?reservation_number=${ReservationVO.reservation_number}">&#8361;<fmt:formatNumber type="number" value="${ReservationVO.commission}"/></a></td>
                                        </tr>
                                        
                                        <c:set var="sum_price" value="${sum_price + ReservationVO.price }"/>
                                        <c:set var="sum_commission" value="${sum_commission + ReservationVO.commission}"/>
                                        
                                </c:forEach>                     
                                    <tr>
                                        <th colspan="9" style="text-align: right; padding-right: 75px;">수수료: &#8361;<fmt:formatNumber type="number" value="${sum_commission}"/><span style="margin-left: 30px; font-weight: bolder;">총 금액: &#8361;<fmt:formatNumber type="number" value="${sum_price}"/></span></th>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    
                                </tfoot>
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
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${contextPath}/resources/admin/javascript/datatables-simple-demo.js"></script>
          <script>
            // Pie Chart Example
            var ctx = document.getElementById("myPieChart");
            var myPieChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: ["남성", "여성"],
                datasets: [{
                //data: [45, 12, 11.25, 8.32],
                data: [60, 40],
                backgroundColor: ['#007bff', '#dc3545'],
                }],
            },
            });
        </script>
        <script>
     // Bar Chart Example
        var ctx = document.getElementById("myBarChart");
        var myLineChart = new Chart(ctx, {
          type: 'bar',
          data: {
            labels: ["20대", "30대", "40대", "50대", "60대"],
            datasets: [{
              label: "가입수",
              backgroundColor: "rgba(2,117,216,1)",
              borderColor: "rgba(2,117,216,1)",
              data: [14215, 12312, 6251, 7841, 4984],
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
                  max: 15000,
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
