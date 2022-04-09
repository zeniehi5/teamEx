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
    <title>파트너 상세정보</title>
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
        
                        <!-- 여기만 수정해서 사용하세요!! -->
                        <!-- <h2 class="mt-4">파트너 정보</h2> -->
                        <br>
                        <div class="card mb-4">
                            <div class="card-header">
                                <div class="col three">
                                    <div style="font-size: 20px; font-weight: bold; ">
                                        파트너 정보
                                    </div>							
                                </div>
                            </div>
                            <div class="card-body">
                                <form action="" name="goodsForm" method="POST" enctype="multipart/form-data">
                                    <table class="type02">
                                        <tr>
                                            <th>이름</th>
                                            <td><input type="text" name="partner_name" style="width: 100%; height: 100%" readonly value="${partner.lastname }${partner.firstname }"></td>
                                        </tr>
                                        <tr>    
                                            <th scope="row">이메일</th>
                                            <td><input type="text" name="partner_email" readonly value="${partner.email }"></td>
                                        </tr>                              
                                        <tr>
                                            <th>전화번호</th>
                                            <td><input type="text" name="partner_Phone"  readonly value="${partner.telephone }"></td>
                                        </tr>
                                                 
                                        <tr>
                                            <th>활성화</th>
                                            <td>
                                            <c:choose>
                                                <c:when test="${partner.active == 1 }">
                                                	<input type="text" readonly value="활성화">
                                                </c:when>
                                                <c:otherwise>
                                                	<input type="text" readonly value="비활성화">
                                                </c:otherwise>
                                                </c:choose>
                                            </td>
                                        </tr>                                  
                                    </table>
                                        
                                </form>
                                
                            </div>
                        </div>
                        <!-- -->
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                ${partner.lastname}${partner.firstname} 님의 호텔
                            </div>
                            <div class="card-body">
                            <form action="" name="goodsForm" method="POST" enctype="multipart/form-data">
                                <table id="datatablesSimple">
                                    <!--#   시리얼넘버      호텔이름      담당자      연락처       주소      활성화 여부-->
                                    <thead>
                                        <tr>
                                            <th>Serial No.</th>
                                            <th>호텔명</th>
                                            <th>담당자</th>                                              
                                            <th>연락처</th>
                                            <th>도시</th>
                                            <th>주소1</th>
                                            <th>주소2</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="HotelVO" items="${hotel }" varStatus ="status">
                                        <tr>
                                            <td>${HotelVO.serialnumber }</td>
                                            <td>${HotelVO.hotelname }</td>
                                            <td>${HotelVO.manager }</td>
                                            <td>${HotelVO.telephone }</td>
                                            <td>${HotelVO.city }</td>
                                            <td>${HotelVO.address1 }</td>
                                            <td>${HotelVO.address2 }</td>    
                                        </tr>
                                       </c:forEach> 
                                    </tbody>
                                </table>
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
