<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/partner/css/service.css">
</head>
<body>
<form action="service.pdo" method="post">
   <div class="container">
      <header>
         <span id="logo"> <a href="#"> <img alt=""
               src="https://s3.ap-northeast-2.amazonaws.com/booqueen.com/Booqueen.com.png"
               class="header_logo"></a>
         </span>
         <nav>
            <ul id="topMenu">
               <li><a href="${contextPath}/#">${firstname} 님, 로그인!</a></li>
               	<li><a href="${contextPath}/#">로그아웃</a></li>
            </ul>
         </nav>

      </header>
   </div>
   <main class="contents">
      <div class="option">
         <div class="basic">
            <img alt="" src="${contextPath}/resources/partner/images/check.png"> 기본정보
         </div>
         <div class="price">
            <img alt="" src="${contextPath}/resources/partner/images/check.png"> 구성 및 요금
         </div>
         <div class="service">시설 및 서비스</div>
         <div class="fac">편의시설</div>
         <div class="pic">사진</div>
         <div class="policy">정책</div>
         <div class="payment">결제</div>
      </div>
      <br>
      <h2>시설 및 서비스</h2>
      <br> 이제 숙소 전반에 관한 정보를 입력해주세요. (예시: 이용 가능한 시설, 인터넷, 주차, 직원이 응대 가능한
      언어)
      <div class="input">
         <fieldset class="parking">
            <h2>주차</h2>
            <br>
            <div id="parking">차로 이동하는 투숙객에게 특히 중요한 정보입니다.</div>
            <p id="name">주차가 가능한가요?</p>
            <div class="parking-1">
               <select name="parking">
                  <option value="false">아니오</option>
                  <option value="true">예</option>
               </select>
            </div>
         </fieldset>
         <div class="right">
            <p>숙소 등록 후에도 온라인으로 숙소 판매가 시작되기 전에 정보를 수정하실 수 있습니다.</p>
         </div>
      </div>
      <fieldset class="breakfast">
         <h2>조식</h2>
         <br>
         <div>
            <p id="name">조식을 제공하시나요?</p>
            <select name="breakfast">
               <option value="false">아니오</option>
               <option value="true">예, 객실 요금에 포함</option>
            </select>
         </div>
      </fieldset>
      <fieldset class="lang">
         <h2>구사 언어</h2>
         <br>
         <div id="parking">귀하 또는 직원이 구사하는 언어는 무엇인가요?</div>
         <div>
            <select name="language-spoken">
               <option value="ko">한국어</option>
               <option value="en">영어</option>
            </select>
         </div>
      </fieldset>
      <fieldset class="popular">
         <h2>고객들에게 가장 인기 있는 시설</h2>
         <br>
         <div id="parking">숙소 검색시 고객들이 가장 자주 찾는 시설입니다.</div>
         <div class="checkbox">
            <div class="checkleft">
               <div>
                  <label> <input type="checkbox" id="checkbox" name="wifi"> 무료
                     Wi-Fi
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="smoking"> 금연
                     객실
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="restaurant"> 레스토랑
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="shuttle"> 공항
                     셔틀
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="room-service"> 룸서비스
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="family-room"> 가족
                     객실
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="bar"> 바
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="spa">
                     스파/웰빙
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="front-desk"> 24시간
                     프런트 데스크
                  </label>
                  <hr>
               </div>
            </div>
            <div class="checkright">
               <div>
                  <label> <input type="checkbox" id="checkbox" name="jacuzzi"> 스파
                     욕조/자쿠지
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="sauna"> 사우나
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="ac"> 에어컨
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="fitnesscenter"> 피트니스
                     센터
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="aquapark">
                     아쿠아파크
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="garden"> 정원
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="swimming-pool"> 수영장
                  </label>
                  <hr>
               </div>
               <div>
                  <label> <input type="checkbox" id="checkbox" name="terras"> 테라스
                  </label>
                  <hr>
               </div>
            </div>
         </div>
      </fieldset>
      <div>
         <input type="submit" id="continue" value="계속">
      </div>
   </main>
</form>
</body>
</html>