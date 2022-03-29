<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/manage.css">
<title>${hotel.hotelname} · 객실 관리</title>
</head>
<body>
<jsp:include page="/WEB-INF/partner/header.jsp"/>
<main>
<div class="menu_title">
	<h2>객실 관리</h2>
</div>
<div class="menu_body">
	<div class="table_wrapper">
		<table class="room_table">
			<thead class="table_head">
				<tr class="table_row">
					<th class="table_cell"><span>객실 ID</span></th>
					<th class="table_cell"><span>객실 유형</span></th>
					<th class="table_cell"><span>보유 수량</span></th>
					<th class="table_cell"><span>수용 인원</span></th>
					<th class="table_cell"><span>비고</span></th>
				</tr>
			</thead>
			<tbody class="table_body">
			<c:forEach var="roomList" items="${roomList}">
				<tr class="table_row">
					<td class="table_cell"><span>${roomList.room_id}</span></td>
					<td class="table_cell_head"><span>${roomList.type}</span></td>
					<td class="table_cell"><span>${roomList.available}</span></td>
					<td class="table_cell"><span>${roomList.quota}</span></td>
					<td class="table_cell"><button class="btn_primary" onclick="location.href='${contextPath}/get-service.pdo?room_id=${roomList.room_id}'">세부사항 수정</button></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>	
</div>
</main>
<jsp:include page="/WEB-INF/partner/footer.jsp"/>
</body>
</html>