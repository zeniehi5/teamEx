
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
    <title>배너 등록</title>
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
                                <div class="card-header"><h3 class="text-center font-weight-light my-4">배너 등록</h3></div>
                                <div class="card-body">
                                    <form action="bannerRegister.mdo" method="post" id="addBanner" enctype="multipart/form-data">
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3 mb-md-0">
                                                    <input class="form-control" id="banner_title" name="banner_title" type="text" placeholder="Enter your first name" style="height: calc(3.5rem + 20px);">
                                                    <label for="banner_title">배너 제목</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating">
                                                    <input class="form-control" id="banner_content" name="banner_content" type="text" placeholder="Enter your first name" style="height: calc(3.5rem + 20px);">
                                                    <label for="banner_content">배너 내용</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="display: inline-flex; margin-top: 10px;">
                                            <button type="button" id="slideBtn" onclick="slideButton();" class="btn btn-primary">미리보기</button>	
                                            <span id="content" style="display:none; color:red; margin:10px 15px;"></span>
                                        </div>
                                        <div class="banner_slideshow-container" id="banner_container" style="display:none;">
                                            <!-- 배너 내용 여기 들어감-->
                                                
                                        </div>
                                        <div style="text-align:center; margin:10px;">                                          
                                        </div>
                                        <div class="row mb-3">
                                            <div class="input-group">
                                            <label class="input-group-btn">
                                                <span class="btn btn-primary">
                                                    Upload <input type="file" name="file" id="file" style="display: none;" multiple="">
                                                </span>
                                            </label>
                                            <input type="text" id="banner_img" class="form-control" readonly="">
                                            </div>
                                        </div>
                                        <div class="mt-4 mb-0">
                                            <div class="d-grid"><a class="btn btn-danger btn-block" id="submit" style="background-color: #0d6efd; border:solid 1px #0d6efd;">배너 등록</a></div>
                                            <div class="d-grid" style="padding-top: 5px"><a class="btn btn-danger btn-block" id="cancle" style="background-color: #0d6efd; border:solid 1px #0d6efd;" onClick="window.location.href='banner.html';">취	소</a></div>
                                        </div>
                                    </form>
                                </div>
                                <div class="card-footer text-center py-3">

                                    
                                </div>
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