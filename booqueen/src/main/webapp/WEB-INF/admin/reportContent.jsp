<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>신고 내용</title>
    <link href="${contextPath}/resources/admin/css/styles.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    
</head>

<body class="bg-black">
<div id="map" style="width: 0px; height:0px;"></div>
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container1" style="max-width:100%;">
                    <div class="row justify-content-center">
                        <div class="col-lg-7">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header"><h3 class="text-center font-weight-light my-4">신고 내용</h3></div>
                                <div class="card-body">
                                    
                                        <form action="" name="goodsForm" method="POST" enctype="multipart/form-data">
                                            <div class="table-responsive">
                                                <table class="table align-middle">
                                                    <tbody>
                                                        <tr>
                                                            <td style="">
                                                                <input style="width: 100%; height: 500px;" type="text" name="partner_email" readonly value="그럼 왜 남았어 ?">
                                                                
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <tfoot>
                                                    <tr>
                                                        <div class="d-grid" style="padding-top: 5px"><a class="btn btn-danger btn-block" id="cancle" style="background-color: none; border:solid 1px #0d6efd;" onClick="window.location.href='reportedUser.html';">돌아가기</a></div>
                                                    </tr>
                                                </tfoot>
                                            </div>    
                                                <br>
                                                                            
                                        </form>
                                        
                                    
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
    <div id="layoutAuthentication_footer">
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright © Your Website 2021</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            ·
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${contextPath}/resources/admin/javascript/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${contextPath}/resources/admin/javascript/datatables-simple-demo.js"></script>


</body></html>