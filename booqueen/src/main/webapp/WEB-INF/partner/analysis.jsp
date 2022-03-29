<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/analysis.css">
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<title>${hotel.hotelname} · 분석 게시판</title>
</head>
<body>
<jsp:include page="/WEB-INF/partner/header.jsp"/>
                <div class="middle">
                    <div class="table">
                        <table>
                            <tr id="tr1">
                                <td colspan="3"><h2>성과분석</h2></td>
                            </tr>
                            <tr>
                                <td>    </td>
                                <td>
                                    지난 예약 건 기준: <br>
                                    <select>
                                        <option>90일</option>
                                        <option>14일</option>
                                        <option>30일</option>
                                        <option>60일</option>
                                        <option>90일</option>
                                        <option>365일</option>
                                    </select>
                                </td>
                                <td>
                                    향후 예약 건 기준: <br>
                                    <select>
                                        <option>90일</option>
                                        <option>14일</option>
                                        <option>30일</option>
                                        <option>60일</option>
                                        <option>90일</option>
                                        <option>365일</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td id="td1">숙박일 수</td>
                                <td>0</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td id="td1">객실 매출액</td>
                                <td>\0</td>
                                <td>\0</td>
                            </tr>
                            <tr>
                                <td id="td1">일일 평균 요금</td>
                                <td>\0</td>
                                <td>\0</td>
                            </tr>
                            <tr id="last_tr">
                                <td></td>
                                <td> <a href="#"><input type="button" value="판매 통계"></a></td>
                                <td> <a href="#"><input type="button" value="예약 현황 | 온북"></a></td>
                            </tr>
                        </table>
                    </div>
<div id="chart"></div>
</div>
<jsp:include page="/WEB-INF/partner/footer.jsp"/>
<script>
var options = {
		chart: {
			type: 'line'
		},
		series: [{
			name: 'sales',
			data: [30, 40, 35, 50, 49, 60, 70, 91, 125, 60, 65, 60]
		}],
		xaxis: {
			categories: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
		}
}

var chart = new ApexCharts(document.querySelector("#chart"), options);
chart.render();
</script>
</body>
</html>