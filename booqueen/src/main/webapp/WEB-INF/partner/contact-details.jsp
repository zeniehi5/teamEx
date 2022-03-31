<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booqueen.com</title>
<link rel="stylesheet" href="${contextPath}/resources/partner/css/contact-details.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	function goSubmit(){
		var firstName = $("#firstName").val()
		var lastName = $("#lastName").val()
		var phoneNum = $("#phoneNum").val()
		if(firstName == null || firstName == "" || firstName == undefined || firstName == "undefined"){
			alert("이름을 입력해 주세요.")
			return;
		}
		if(lastName == null || lastName == "" || lastName == undefined || lastName == "undefined"){
			alert("성을 입력해 주세요.")
			return;
		}
		if(phoneNum == null || phoneNum == "" || phoneNum == undefined || phoneNum == "undefined"){
			alert("전화번호를 입력해 주세요.")
			return;
		} else {
			var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
		      if (!regPhone.test(phoneNum)) {
		          alert('올바른 전화번호를 입력해 주세요.');
		          return;
		      }
		}
		$("#myForm").submit();
	}
</script>
</head>
<body>

	<div class="container">
    	<header>
        	<span id="logo">
        		<a href="#"><img src="https://s3.ap-northeast-2.amazonaws.com/booqueen.com/Booqueen.com.png"></a>
        	</span>
         	<nav>
         	</nav>
      	</header>
   	</div>
    <main class="contents">
    	<h1>연락처 정보</h1>
      	<h4>Booqueen.com 계정 보안을 위해 귀하의 성명과 전화번호를 입력해주시기 바랍니다.</h4>
      	<br/>
      	<h4>이름</h4>
      	<form id="myForm" action="details.pdo" method="post">
      	<input type="hidden" name="email" value="${email}">
      	<input type="text" id="firstName" name="firstname" class="text"><br>
      	<h4>성</h4>
      	<input type="text" id="lastName" name="lastname" class="text"><br />
      	<h4>휴대폰 번호</h4>
      	<input type="text" id="phoneNum" name="telephone" class="text"><br />
      	<h5>정확한 휴대폰 번호를 입력해 주세요</h5>
      	</form>
      	<button type="button" name="continue" id="continue" onclick="goSubmit()">다음</button><br>
      	<br>
      	<hr>
      	<br>
      	<h5>로그인하거나 회원으로 가입하시면 당사 <a href="#">이용약관</a>및 <a href="#">개인정보 보호 정책</a>에 동의하시는 것으로 간주됩니다.</h5>
      	<br>
      	<br>
      	<hr>
      	<br>
      	<h6>© All rights reserved. Booqueen.com 및 Booqueen.com 로고는 한국 및 또는 다른
         국가에서 Booqueen.com, LP의 상표 또는 등록 상표입니다. 기타 모든 상표는 해당 소유권자의 자산입니다.</h6>

    </main>

</body>
</html>