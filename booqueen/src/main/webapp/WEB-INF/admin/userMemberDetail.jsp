<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>유저 상세정보</title>
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
                    <div class="container-fluid px-4" style="padding-top: 1.5rem;">
                        <!-- 여기만 수정해서 사용하세요!! -->
                        <!-- <h2 class="mt-4">회원 정보</h2> -->     
                        <div class="card mb-4" style="border: none;">
                            <div class="card-header">
                                <div class="col three">
                                    <div style="font-size: 20px; font-weight: bold;">
                                        회원 정보
                                    </div>							
                                </div>
                            </div>
                            <div class="card-body">
                                <form action="" name="goodsForm" method="POST" enctype="multipart/form-data">
                                        <table class="type02">
                                            <tr style="margin: 100px;">
                                                <th>프로필 이미지</th>
                                                <td><img name="img" style="width: 30%; height: 30%" img src="data:${profile.profile_type};base64, ${profile.profile_data}" style="height: 50px; width: 50px;"></td>
                                            </tr>
                                            <tr>
                                                <th>이름</th>
                                                <td><input type="text" name="partner_name" style="width: 100%; height: 100%" readonly value="${userVO.get(0).name}"></td>
                                            </tr>
                                            <tr>    
                                                <th scope="row">이메일</th>
                                                <td><input type="text" name="partner_email" readonly value="${userVO.get(0).userid}"></td>
                                            </tr> 
                                            <tr>
                                                <th>성별</th>
                                                <td><input type="text" name="hotel_name" style="width: 100%; height: 100%" readonly value="${userVO.get(0).gender}"></td>
                                            </tr>                                      
                                            <tr>
                                                <th>전화번호</th>
                                                <td><span>${userVO.get(0).phone1}</span>-<span>${userVO.get(0).phone2 }</span>-<span>${userVO.get(0).phone3 }</span></td>
                                            </tr>
                                            <tr>    
                                                <th scope="row">생년월일</th>
                                                <td><span>${userVO.get(0).birth_year}</span>-<span>${userVO.get(0).birth_month}</span>-<span>${userVO.get(0).birth_day}</span></td>
                                            </tr>                                             
                                        </table>
                                        <br>
                                        <div class="card mb-4">
                                            <div class="card-header">
                                                <i class="fas fa-table me-1"></i>
                                                호텔 이용내역
                                            </div>
                                            <div class="card-body">
                                                <table id="datatablesSimple">
                                                    <thead>
                                                        <tr>
                                                            <th>예약번호</th>
                                                            <th>호텔 이름</th>
                                                            <th>날짜</th>
                                                            <th>금액</th>
                                                            <th>상태</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    	<c:forEach var="userVO" items="${userVO}" varStatus="status">
                                                    	<c:choose>
	                                                    	<c:when test="${!empty userVO.reservation_number || userVO.reservation_number != null}">
	                                                        <tr>
	                                                            <th scope="row">${userVO.reservation_number}</th>
	                                                            <td>${userVO.hotelname}</td>
	                                                            <td><fmt:formatDate value="${userVO.checkin_date}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${userVO.checkout_date}" pattern="yyyy-MM-dd"/></td>
	                                                            <td><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${userVO.price}"/></td>
	                                                            <c:choose>
	                                                            	<c:when test="${userVO.use_status eq 1}">
	                                                            		<td>체크인 중</td>
	                                                            	</c:when>
	                                                            	<c:when test="${userVO.use_status eq 2}">
	                                                            		<td>이용 완료</td>
	                                                            	</c:when>
	                                                            	<c:otherwise>
	                                                            		<td>예약 완료</td>
	                                                            	</c:otherwise>
	                                                            </c:choose>
	                                                        </tr>
                                                       		</c:when>
                                                       		<c:otherwise>
                                                       		<tr>
			                                            		<td colspan='5' style="border: none;">
			                                            			<span><strong>호텔 이용 내역이 없습니다</strong></span>
			                                            		</td>
			                                            	</tr>
                                                       		</c:otherwise>
                                                        </c:choose>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>                                       
                                </form>
                                
                            </div>
                        </div>
                        <!-- 여기만 수정해서 사용하세요!! -->
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
