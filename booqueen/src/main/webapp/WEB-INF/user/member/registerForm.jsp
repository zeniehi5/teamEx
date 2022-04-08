<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원가입</title>
	<link rel="stylesheet" href="${contextPath}/resources/user/css/signup.css">
	<!-- <link rel="stylesheet" href="${contextPath}/resources/user/css/test.css"> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/user/member/header.jsp"/>

	<div class="container">
		<div class="signup-top">
			<div class="signup-title">
				<span>부퀸닷컴에 오신 것을 환영합니다 !</span>
				<div class="title">회원가입</div>
			</div>
		</div>

		<form class="signup-table" enctype="multipart/form-data" action="${contextPath}/member/register.do" method="post">

			<!-- 이메일 주소 또는 아이디 -->
			<div class="signup-row">
				<div class="signup-container">
					<div class="container-label"><h2>아이디</h2></div>
					<div class="container-element">
						<div class="element">
							<input type="text" placeholder="booqueen@booqueen.com" name="userid" id="userid" onkeyup="useridCheck(this)">
							<input type="hidden" name="checkUserid" id="checkUserid"/>
							<!-- <input type="hidden" name="duplicateUserid" id="duplicateUserid"/> -->
							<div id="useridCheck"></div>
						</div>
					</div>
				</div>
			</div>

			<!-- 비밀번호 -->
			<div class="signup-row">
				<div class="signup-container">
					<div class="container-label"><h2>비밀번호</h2></div>
					<div class="container-element">
						<div class="element">
							<input type="password" id="password" name="passwd" onkeyup="passwdCheck(this)">
							<input type="hidden" name="checkPassword" id="checkPassword"/>
							<div id="passwdCheck"></div>
						</div>
					</div>
				</div>
			</div>

			<!-- 이름 -->
			<div class="signup-row">
				<div class="signup-container">
					<div class="container-label"><h2>이름</h2></div>
					<div class="container-element">
						<div class="element">
							<input type="text" placeholder="이름" id="name" name="name">
						</div>
					</div>
				</div>
			</div>

			<!-- 성별 -->
			<div class="signup-row">
				<div class="signup-container">
					<div class="container-label"><h2>성별</h2></div>
					<div class="container-element">
						<div class="element element-gender">
							<select id="gender" name="gender">
								<option value="">선택</option>
								<option value="남성">남성</option>
								<option value="여성">여성</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 전화번호 -->
			<div class="signup-row">
				<div class="signup-container">
					<div class="container-label"><h2>전화번호</h2></div>
					<div class="container-element">
						<div class="element element-phone">
							<select id="phone1" name="phone1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="012">016</option>
								<option value="012">017</option>
								<option value="012">018</option>
								<option value="012">019</option>
							</select>
							<div class="hyphen">-</div>
							<input type="text" placeholder="0000" id="phone2" maxlength="4" name="phone2" oninput="this.value = this.value.replace(/[^0-9.]/g,'').replace(/(\..*)\./g, '$1');">
							<div class="hyphen">-</div>
							<input type="text" placeholder="0000" id="phone3" maxlength="4" name="phone3" oninput="this.value = this.value.replace(/[^0-9.]/g,'').replace(/(\..*)\./g, '$1');">
						</div>
					</div>
				</div>
			</div>

			<!-- 생년월일 -->
			<div class="signup-row signup-row-last">
				<div class="signup-container">
					<div class="container-label"><h2>생년월일</h2></div>
					<div class="container-element">
						<div class="element element-birth">
							<input type="text" placeholder="YYYY" id="birth-year" minlength="4" maxlength="4" name="birth_year" oninput="this.value = this.value.replace(/[^0-9.]/g,'').replace(/(\..*)\./g, '$1');">
							<input type="text" placeholder="MM" id="birth-month" minlength="2" maxlength="2" name="birth_month" oninput="this.value = this.value.replace(/[^0-9.]/g,'').replace(/(\..*)\./g, '$1');">
							<input type="text" placeholder="DD" id="birth-day" minlength="2" maxlength="2" name="birth_day" oninput="this.value = this.value.replace(/[^0-9.]/g,'').replace(/(\..*)\./g, '$1');">
						</div>
					</div>
				</div>
			</div>

			<div class="signup-hr"><div></div></div>
			<div class="signup-button">
				<button type="submit" class="signup-btn" onclick="checkField()">회원 가입하기</button>
			</div>

		</form>
		
	</div>

	<!-- <div id="footers"></div> -->
<script>
function useridCheck() {
	var userid = $('#userid').val();
	var sendData = {"userid" : userid};
	
	$.ajax({
		method : 'POST',
		url : 'useridCheck.do',
		data : sendData,
		success : function(resp) {
			if (resp == 'fail') {
				$('#userid').css('border', '1px solid #e21111')
				$('#useridCheck').css('color', 'red')
				$('#useridCheck').html("이미 존재하는 이메일 계정입니다.")
				flag = 1;
				$('#checkUserid').val(flag);
			} else if (resp == 'err') {
				$('#userid').css('border', '1px solid #e21111')
				$('#useridCheck').css('color', 'red')
				$('#useridCheck').html("이메일 형식이 잘못되었습니다.")
				flag = 0;
				$('#checkUserid').val(flag);
			} else {
				$('#userid').css('border', '1px solid #545454')
				$('#useridCheck').css('color', '#0071c2')
				$('#useridCheck').html("사용 가능한 이메일 주소입니다.")
				flag = 2;
				$('#checkUserid').val(flag);
			}
		}
	})
}
function passwdCheck() {
	var passwdRules = /^(?=.*[a-zA-Z])((?=.*\d)(?=.*\W)).{8,16}$/;
	var passwd = $('#password').val();
	if (!passwdRules.test(passwd)) {
		$('#passwd').css('border', '1px solid #e21111')
		$('#passwdCheck').css('color', 'red')
		$('#passwdCheck').html("비밀번호는 영문/숫자/특수문자(!@#$%^&*)를 포함하여 8~16자로 입력해야 합니다.")
		flag = false;
		$('#checkPassword').val(flag);
	} else {
		$('#passwd').css('border', '1px solid #545454')
		$('#passwdCheck').css('color', '#0071c2')
		$('#passwdCheck').html("사용 가능합니다.")
		flag = true;
		$('#checkPassword').val(flag);
	}
}



</script>
</body>
</html>