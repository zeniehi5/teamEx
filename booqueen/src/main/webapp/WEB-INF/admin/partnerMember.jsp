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
	<title>파트너 리스트</title>
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
                        <!-- <h2 class="mt-4">파트너 목록</h2> -->
                		<br>
                            <div class="card mb-4">
                                <div class="card-header" style="font-size: 20px;">
                                    <i class="fas fa-table me-1"></i>
                                    파트너 목록
                                </div>
                                <div class="card-body">
                                    <table id="datatablesSimple">
                                        <thead>
                                            <tr>
                                                <th>성</th>
                                                <th>이름</th>
                                                <th>연락처</th>
                                                <th>이메일</th>
                                                <th>차단 여부</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="partnerList" items="${partnerList }" varStatus ="status">
                                            <tr>
                                                <td>${partnerList.lastname }</td>
                                                <td>${partnerList.firstname }</td>
                                                <td>${partnerList.telephone }</td>
                                                <th><a href="partnerMemberDetail.mdo?email=${partnerList.email }">${partnerList.email }</a></th>
                                                <td>
                                                	<c:choose>
                                                	<c:when test="${partnerList.active == 1 }">
                                                		<button class="btn btn-danger" onclick="block('${partnerList.email}', '${partnerList.firstname }', '${partnerList.lastname }')" data-email="${partnerList.email}" data-firstname="${partnerList.firstname}" data-lastname="${partnerList.lastname}">차단</button>
                                                	</c:when>
                                                	<c:otherwise>
                                                		<button id="active" disabled="disabled" style="width:auto; margin: auto;" class="btn btn-warning">차단됨</button>
                                                	</c:otherwise>
                                                	</c:choose>
                                                	
                                                </td>
                                            </tr>
                                         </c:forEach>                                              
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        
                    </div>
                    
                    <div id="deleteMyAccount" class="delete-modal">

				<!-- Modal content -->
				<form class="delete-modal-content" action="blockPartner.mdo" method="post">
					<span class="close">&times;</span>
					<div class="modal-title"></div>
					
					<div class="delete-hr"><div></div></div>
					<div class="modal-delete-reason">
						<div class=reason-title>차단 사유</div>
						<select id="delete-account" name="whyblock" style="padding: 8px;">
							<option value="">선택</option>
							<option value="잦은 신고">잦은 신고</option>
							<option value="규칙 위반">규칙 위반</option>
							<option value="허위 사실 기재">허위 사실 기재</option>
							<option value="기타">기타</option>
						</select>
					</div>
					<div class="delete-hr"><div></div></div>
					<div class="modal-delete-button" style="text-align: center;">
						<button type="submit" class="delete-btn-real" id="deleteBtnReal" style="width: 100%;">회원 차단하기</button>
					</div>
				</form>
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
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${contextPath}/resources/admin/javascript/datatables-simple-demo.js"></script>
       
        <script>
        function block(email,firstname,lastname){
        	$("#deleteMyAccount").css('display', 'block');
        	$(".modal-title").html("<h3>" + lastname + firstname + "(<span name='email'>" + email + "</span>) 님 차단 " + "</h3><input type='hidden' name='email' value=" + email +">");
        	
        }
        $(".close").click(function() {
        	$("#deleteMyAccount").css('display', 'none');
        });
        </script>
    </body>
</html>