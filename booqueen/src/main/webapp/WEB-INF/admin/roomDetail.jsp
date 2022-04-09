<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="${contextPath}/resources/admin/css/styles.css" rel="stylesheet">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
	<title>room상세정보</title>
</head>
<body>
    <div id="map" style="width: 0px; height:0px;"></div>
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container1" style="max-width:100%;">
                    <div class="row justify-content-center">
                        <div class="col-lg-7">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <button type="button" class="btn-close" aria-label="Close"
                                        style="float: right;" onClick="window.location.href='hotelDetail.mdo';"></button>
                                    <h5 class="text-center font-weight-light my-4">객실 상세정보 보기</h5>
                                </div>
                                <div class="card-body">
                                    <div style="width: 50%; float: left;">
                                        <div id="carouselExampleIndicators" class="carousel slide"
                                            data-bs-ride="carousel">
                                            <div class="carousel-indicators">
                                                <button type="button" data-bs-target="#carouselExampleIndicators"
                                                    data-bs-slide-to="0" class="active" aria-current="true"
                                                    aria-label="Slide 1"></button>
                                                <button type="button" data-bs-target="#carouselExampleIndicators"
                                                    data-bs-slide-to="1" aria-label="Slide 2"></button>
                                                <button type="button" data-bs-target="#carouselExampleIndicators"
                                                    data-bs-slide-to="2" aria-label="Slide 3"></button>
                                            </div>
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <img src="assets/img/hotelRoom.png" class="d-block w-100"
                                                        alt="객실사진1" style="height: 400px! important;">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="assets/img/hotelRoom2.png" class="d-block w-100"
                                                        alt="객실사진2" style="height: 400px! important;">
                                                </div>
                                                <div class="carousel-item">
                                                    <img src="assets/img/hotelRoom3.png" class="d-block w-100"
                                                        alt="객실사진3" style="height: 400px! important;">
                                                </div>
                                            </div>
                                            <button class="carousel-control-prev" type="button"
                                                data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Previous</span>
                                            </button>
                                            <button class="carousel-control-next" type="button"
                                                data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="visually-hidden">Next</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div style="width: 48%; float: right;">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text" id="basic-addon1">객실 유형</span>
                                            <input type="text" class="form-control" placeholder="Username"
                                                aria-label="Username" aria-describedby="basic-addon1" value="수페리어 킹룸">
                                        </div>
                                        <div class="input-group mb-3">
                                            <span class="input-group-text" id="basic-addon1">주차 가능</span>
                                            <input type="text" class="form-control" placeholder="Username" aria-label="Username"
                                                aria-describedby="basic-addon1" value="가능">
                                        </div>
                                        <div class="input-group mb-3">
                                            <span class="input-group-text" id="basic-addon1">흡연 가능</span>
                                            <input type="text" class="form-control" placeholder="Username" aria-label="Username"
                                                aria-describedby="basic-addon1" value="금연">
                                        </div>
                                        <div class="input-group mb-3">
                                            <span class="input-group-text" id="basic-addon1">룸서비스</span>
                                            <input type="text" class="form-control" placeholder="Username" aria-label="Username"
                                                aria-describedby="basic-addon1" value="제공">
                                        </div>
                                        <div class="input-group" style="height: 150px;">
                                            <span class="input-group-text">객실 소개</span>
                                            <textarea class="form-control" aria-label="With textarea">전통적이고 우아한 스타일의 이 객실은 시그니처 앰배서더 침구 셀렉션을 갖추고 있어 투숙객에게 편안함을 선사합니다. 객실은 네스프레소 커피 머신을 구비하고 있으며, 도시의 멋진 전망을 자랑합니다.
                                            </textarea>
                                        </div>
                                        <div class="input-group mb-3" style="margin-top: 15px;">
                                            <div class="card" style="border-radius: 5px; width: 100%;">
                                                <div class="card-body" style="user-select: auto;">
                                                    <h6 class="card-title" style="user-select: auto;"><strong>전망: </strong></h6>
                                                    <p class="card-text" style="user-select: auto;">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check2" viewBox="0 0 16 16">
                                                            <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
                                                        </svg>도시 전망</p>
                                                    <h6 class="card-title" style="user-select: auto;"><strong>객실 시설: </strong></h6>
                                                    <p class="card-text" style="user-select: auto;">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check2"
                                                            viewBox="0 0 16 16">
                                                            <path
                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
                                                        </svg>TV
                                                    </p>
                                                    <p class="card-text" style="user-select: auto;">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check2"
                                                            viewBox="0 0 16 16">
                                                            <path
                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
                                                        </svg>옷장
                                                    </p>
                                                    <p class="card-text" style="user-select: auto;">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check2"
                                                            viewBox="0 0 16 16">
                                                            <path
                                                                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
                                                        </svg>안전금고
                                                    </p>
                                                    <p class="card-text" style="user-select: auto;"><small class="text-muted" style="user-select: auto;">Last
                                                            updated 3 mins ago</small></p>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="card-footer text-center py-3">
                                    <span>Booqueen.com</span>
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
</body>
</html>