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
<div id="chart"></div>
<jsp:include page="/WEB-INF/partner/footer.jsp"/>
<script>
var options = {
		chart: {
			type: 'line'
		},
		series: [{
			name: 'sales',
			data: [30, 40, 35, 50, 49, 60, 70, 91, 125]
		}],
		xaxis: {
			categories: [1991, 1992, 1993, 1994, 1997, 1996, 1997, 1998, 1999]
		}
}

var chart = new ApexCharts(document.querySelector("#chart"), options);
chart.render();
</script>
</body>
</html>