<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/analysis.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<title>${hotel.hotelname} · 분석 게시판</title>
</head>
<body>
<jsp:include page="/WEB-INF/partner/header.jsp"/>
                <div class="middle">
                    <div class="table">
                        <table>
                            <tr id="tr1">
                                <td colspan="3"><h2>금월 성과분석</h2></td>
                            </tr>
                            <tr>
                                <td>    </td>
                                <td>
                                    이용 완료 건 기준: <br>
                                </td>
                                <td>
                                    전체 예약 건 기준: <br>
                                </td>
                            </tr>
                            <tr>
                                <td id="td1">숙박일 수</td>
                                <td>${stays.count}</td>
                                <td>${estimatedStays.count}</td>
                            </tr>
                            <tr>
                                <td id="td1">객실 매출액</td>
                                <td>&#8361;<fmt:formatNumber value="${analysis.total_revenue}" type="number"/></td>
                                <td>&#8361;<fmt:formatNumber value="${estimated.total_revenue}" type="number"/></td>
                            </tr>
                            <tr>
                                <td id="td1">일일 평균 요금</td>
                                <td>&#8361;<fmt:formatNumber value="${analysis.total_revenue/stays.count}" type="number"/></td>
                                <td>&#8361;<fmt:formatNumber value="${estimated.total_revenue/estimatedStays.count}" type="number"/></td>
                            </tr>
                        </table>
                    </div>
<div id="chart"></div>
</div>
<jsp:include page="/WEB-INF/partner/footer.jsp"/>
<script type="text/javascript">

var options = {
		chart: {
			type: 'line'
		},
		series: [{
			name: 'sales',
			data: ['${count[0]}', '${count[1]}', '${count[2]}', '${count[3]}', '${count[4]}', 
				'${count[5]}', '${count[6]}', '${count[7]}', '${count[8]}', '${count[9]}', '${count[10]}', '${count[11]}']
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