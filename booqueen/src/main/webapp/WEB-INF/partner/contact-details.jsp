<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/partner/css/contact-details.css">
</head>
<body>
<form action="details.pdo" method="post">
   <div class="container">
      <header>
         <span id="logo"> <a href="#"> <img alt=""
               src="https://s3.ap-northeast-2.amazonaws.com/booqueen.com/Booqueen.com.png"></a>


         </span>
         <nav>
            <ul id="topMenu">
               <li><a href="${pageContext.request.contextPath}/login.jsp">로그인</a></li>
               <li><a href="${pageContext.request.contextPath}/register.jsp">회원가입</a></li>
            </ul>
         </nav>
      </header>
   </div>

   <main class="contents">
      <h1>연락처 정보</h1>
      <h4>Booqueen.com 계정 보안을 위해 귀하의 성명과 전화번호를 입력해주시기 바랍니다.</h4>
      <br />
      <h4>이름</h4>
      <input type="hidden" name="email" value="${email}">
      <input type="text" name="firstName" id="text"><br>
      <h4>성</h4>
      <input type="text" name="lastName" id="text"><br />
      <h4>휴대폰 번호</h4>
      <input type="text" name="telephone" id="text"><br />
      <h5>로그인 시 이중 인증 코드가 담긴 문자 메세지를 받으실 수 있도록 휴대폰 번호를 입력해 주세요</h5>
      <a href="/register/SetPasswd.jsp"> <input type="submit"
         name="continue" id="continue" value="다음"></a> <br>
      <br>
      <hr>
      <br>
      <h5>
         로그인하거나 회원으로 가입하시면 당사 <a href="#">이용약관</a>및 <a href="#">개인정보 보호 정책</a>에
         동의하시는 것으로 간주됩니다.
      </h5>
      <br>
      <br>
      <hr>
      <br>
      <H6>© All rights reserved. Booqueen.com 및 Booqueen.com 로고는 한국 및 또는 다른
         국가에서 Booqueen.com, LP의 상표 또는 등록 상표입니다. 기타 모든 상표는 해당 소유권자의 자산입니다.</H6>

   </main>
</form>
</body>
</html>