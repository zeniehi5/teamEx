<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>mysettings</title>
	<link rel="stylesheet" href="${contextPath}/resources/user/css/mysettings.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
</head>
<body>
	<jsp:include page="/WEB-INF/user/member/header.jsp"/>
	
	<div class="container">

		<!-- container-left -->
		<!-- 개인정보 -->
		<form class="container-left" action="mypageUpdate.do" method="post">
			<div class="settings-top">
				<div class="settings-title">
					<div class="title">계정 관리</div>
				</div>
				<button class="settings-avatar">
					<span class="avatar">
						<div class="my-avatar"></div>
						<span class="edit-icon"><i class="bi-camera"></i></span>
					</span>
				</button>
			</div>
			<div class="settings-table">
				<!-- 이름 -->
				<div class="settings-row">
					<div class="settings-container">
						<div class="container-label"><h2>이름</h2></div>
						<div class="container-element">
							<div class="element">
									<input type="text" id="name" value="${member.name }" name="name" readonly />
							</div>
						</div>
					</div>
				</div>

				<!-- 비밀번호 변경 -->
				<div class="settings-row">
					<div class="settings-container">
						<div class="container-label"><h2>비밀번호 확인</h2></div>
						<div class="container-element">
							<div class="element">
									<input type="password" id="password" name="passwd">
							</div>
						</div>
					</div>
				</div>

				<!-- 성별 -->
				<div class="settings-row">
					<div class="settings-container">
						<div class="container-label"><h2>성별</h2></div>
						<div class="container-element">
							<div class="element element-gender">
								<input type="text" value="${member.gender }" name="gender" readonly/>
							</div>
						</div>
					</div>
				</div>

				<!-- 생년월일 -->
				<div class="settings-row">
					<div class="settings-container">
						<div class="container-label"><h2>생년월일</h2></div>
						<div class="container-element">
							<div class="element element-birth">
								<input type="text" placeholder="YYYY" id="birth-year" maxlength="4" value="${member.birth_year }" name="birth_year">
								<input type="text" placeholder="MM" id="birth-month" maxlength="2" value="${member.birth_month }" name="birth_month">
								<input type="text" placeholder="DD" id="birth-day" maxlength="2" value="${member.birth_day }" name="birth_day">
							</div>
						</div>
					</div>
				</div>

				<!-- 전화번호 -->
				<div class="settings-row">
					<div class="settings-container">
						<div class="container-label"><h2>전화번호</h2></div>
						<div class="container-element">
							<div class="element element-phone">
								<select id="phone1" name="phone1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								<div class="hyphen">-</div>
								<input type="text" placeholder="0000" id="phone2" maxlength="4" value=${member.phone2 } name="phone2">
								<div class="hyphen">-</div>
								<input type="text" placeholder="0000" id="phone3" maxlength="4" value=${member.phone3 } name="phone3">
							</div>
						</div>
					</div>
				</div>

				<!-- 이메일 주소 -->
				<div class="settings-row">
					<div class="settings-container">
						<div class="container-label"><h2>이메일 주소</h2></div>
						<div class="container-element">
							<div class="element">
								<input type="text" value="${member.userid }" name="userid">
							</div>
						</div>
					</div>
				</div>
				<div class="modify-hr"><div></div></div>
				<div class="modify-button">
					<button type="submit" class="modify-btn">개인정보 수정</button>
				</div>
				

				

			</div>
		</form>


		<!-- container-right -->
		<div class="container-right">
			<div class="container-right-top">
				<div class="update-explanation">
					<i class="bi-shield-lock"></i>
					<div class="update-question"><h2>수정할 수 있는 세부 정보는 무엇인가요?</h2></div>
					<div class="update-answer">booqueen.com에서 본인 인증 시 사용하는 세부 정보는 변경할 수 없습니다. 연락처 정보와 일부 개인정보는 수정할 수 있지만, 다음번 예약 또는 숙소를 등록할 때 본인 인증 절차를 거쳐야 할 수도 있습니다.</div>
				</div>
				<div class="update-hr"><div></div></div>
				<div class="update-explanation">
					<i class="bi-person-rolodex"></i>
					<div class="update-question"><h2>다른 사람에게 어떤 정보가 공개되나요?</h2></div>
					<div class="update-answer">booqueen.com은 예약이 확정된 후에만 호스트 및 게스트의 연락처 정보를 공개합니다.</div>
				</div>
			</div>
			<div class="delete-button">
				<button class="delete-btn" id="deleteBtn">회원 탈퇴</button>
			</div>
		</div>
	</div>

	<!-- The Modal -->
	<div id="deleteMyAccount" class="delete-modal">

		<!-- Modal content -->
		<form class="delete-modal-content" action="deleteMember.do" method="post">
			<span class="close">&times;</span>
			<div><h2 class="modal-title">정말 탈퇴하시겠습니까?</h2></div>
			<div class="delete-hr"><div></div></div>
			<div class="modal-delete-reason">
				<div class=reason-title>회원 탈퇴 사유</div>
				<select id="delete-account">
					<option value="delete-default">선택</option>
					<option value="delete1">사이트 사용이 불편해서</option>
					<option value="delete2">원하는 정보가 없어서</option>
					<option value="delete3">여러 계정을 보유하고 있어서</option>
					<option value="delete4">기타</option>
				</select>
			</div>
			<div class="delete-hr"><div></div></div>
			<div class="modal-delete-password">
				<div class="password-title">비밀번호 입력</div>
				<div class="input-password">
					<input type="password" placeholder="" id="deletePassword" name="passwd">
					<input type="hidden" value="${member.userid }" name="userid">
					<div>회원 탈퇴를 원하실 경우 비밀번호를 입력해 주세요.</div>
				</div>
			</div>
			<div class="delete-hr"><div></div></div>
			<div class="modal-delete-button">
				<button type="submit" class="delete-btn-real" id="deleteBtnReal">회원 탈퇴하기</button>
			</div>
		</form>

	</div>

	<!-- footer -->
	<div class="footer">


	</div>

<script>
	var deleteMyAccount = document.getElementById("deleteMyAccount");
	var deleteBtn = document.getElementById("deleteBtn");
	var deleteBtnReal = document.getElementById("deleteBtnReal");
	var close = document.getElementsByClassName("close")[0];

	deleteBtn.onclick = function () { // When the user clicks the button, open the modal
		deleteMyAccount.style.display = "block";
	}
	deleteBtnReal.onclick = function () { // When the user clicks the button, open the modal
		deleteMyAccount.style.display = "none"; // 회원 탈퇴시? 일단 닫기로 해놓음. 나중에 홈화면으로 돌아가는 걸로 수정
	}
	close.onclick = function () { // When the user clicks on <span> (x), close the modal
		deleteMyAccount.style.display = "none";
	}
	window.onclick = function (event) { // When the user clicks anywhere outside of the modal, close it
    if (event.target == deleteMyAccount) {
			deleteMyAccount.style.display = "none";
    }
	}
</script>
</body>
</html>