<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${contextPath}/resources/partner/css/index.css">
        <title>Messaging inbox</title>
    </head>
    <body>
        <div class="main-container">
            <div class="content">
                <div class="home">
                <jsp:include page="/WEB-INF/partner/header.jsp"/>
                    <main>
                        <div class="index">
                            <div class="index-head">
                                <div class="index-inner">
                                    <h2>등록 진행 중인 숙소</h2>
                                    <input type="button" value="신규 숙소 추가">
                                </div>
                            </div>
                            <div class="table-back">
                                <table class="table">
                                    <tr id="tr1">
                                        <th>숙소명
                                        </th>
                                        <th>위치</th>
                                        <th id="th3">등록 진행 상태</th>
                                        <th  id="th4">활동</th>
                                        <th  id="th5"></th>
                                    </tr>
                                    <tr id="tr2">
                                        <td id="td2">Blenheim</td>
                                        <td id="td2">대한민국</td>
                                        <td id="td2">
                                            <progress id="progress" max="100" value="35"></progress>
                                        </td >
                                        <td id="td3">
                                            <a href="#">등록 계속</a>
                                        </td>
                                        <td id="td4">삭제</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="index-bottom">
                                <h2>활성화 된 숙소</h2>
                                <div class="active">
                                    <input type="text" placeholder="숙소ID, 숙소명 또는 위치로 필터">
                                    <a href="#">다운로드</a>
                                </div>
                                <table class="table-bottom">
                                    <tr>
                                        <td> <h4>\(price)</h4>
                                            일일 평균 요금(ADR) - 예약 기준<br>(1월 1일부터 현재까지)</td>
                                        <td id="sec-td"> <h4>\(일 평균 매출)</h4>
                                            일일 평균 요금(ADR) - 예약 기준<br>(1월 1일부터 현재까지)</td></td>
                                        <td> <h4>(취소율)%</h4>
                                            취소율 <br> (1월 1일부터 현재까지)</td>
                                        <td> <h4>(숙박일수)</h4>
                                            실 숙박일수<br> (1월 1일부터 현재까지)</td>
                                        <td> <h4>\(숙박 매출)</h4>
                                            숙박 매출액<br> (1월 1일부터 현재까지)</td>
                                        <td id="last-td"> <h4>(available)/(room)</h4>
                                            예약 가능한 숙소<br>동일 그룹 내 다른 숙소<br>  </td>
                                    </tr>
                                </table>
                                <table class="table-last">
                                    <tr>
                                        <th id="th1">ID</th>
                                        <th id="th2">숙소명</th>
                                        <th id="th3-1">위치</th>
                                        <th id="th4-1">등록 상태</th>
                                        <th id="th5-1">오늘 체크인/체크아웃</th>
                                        <th id="th6">고객 메시지</th>
                                        <th id="th7">Booqueen.com 메시지</th>
                                    </tr>
                                    <tr>
                                        <td id="td3">${hotel.serialnumber}</td>
                                        <td id="td3">${hotel.hotelname}</td>
                                        <td id="td3">${hotel.address2}, ${hotel.address1}, ${hotel.city}</td>
                                        <td id="td3">비공개/예약불가</td>
                                        <td id="td5">0 0</td>
                                        <td id="td3">0</td>
                                        <td id="td3">0</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </main>
                    <jsp:include page="/WEB-INF/partner/footer.jsp"/>
                </div>
            </div>
        </div>
    </body>
</html>
     