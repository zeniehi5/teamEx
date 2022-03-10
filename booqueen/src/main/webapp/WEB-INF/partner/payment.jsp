<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/partner/css/payment.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<script>
   $("input:radio[name='card']:radio[value='yes']").prop('checked', true);
   $("input:radio[name='card']:radio[value='no']").prop('checked', false);
   $(document).ready(function() {

      $('ul.tabs li').click(function() {
         var tab_id = $(this).attr('data-tab');

         $('ul.tabs li').removeClass('current');
         $('.tab-content').removeClass('current');

         $(this).addClass('current');
         $("#" + tab_id).addClass('current');
      })

   })
</script>

<body>
<form action="payment.pdo" method="post">
   <div class="container">
      <header>
         <span id="logo"> <a href="#"> <img alt=""
               src="https://s3.ap-northeast-2.amazonaws.com/booqueen.com/Booqueen.com.png"
               class="header_logo"></a>
         </span>
         <nav>
            <ul id="topMenu">
               <li><a href="${contextPath}/login.jsp">로그인</a></li>
               <li><a href="${contextPath}/register.jsp">회원가입</a></li>
            </ul>
         </nav>

      </header>
   </div>
   <main class="contents">
      <div class="option">

         <label> <a href="${contextPath}/WEB-INF/partner/basic-info.jsp">
               <div class="basic">
                  <img alt="" src="${contextPath}/resources/partner/images/check.png"> 기본정보
               </div>
         </a>
         </label> <label> <a href="/hotel_reg/Price.html">
               <div class="price">
                  <img alt="" src="${contextPath}/resources/partner/images/check.png"> 구성 및 요금
               </div>
         </a>
         </label> <label> <a href="/hotel_reg/Service.html">
               <div class="service">
                  <img alt="" src="${contextPath}/resources/partner/images/check.png"> 시설 및 서비스
               </div></label> </a> <label> <a href="/hotel_reg/Facility.html">

               <div class="fac">

                  <img alt="" src="${contextPath}/resources/partner/images/check.png"> 편의시설
               </div>
         </a>
         </label> <label> <a href="/hotel_reg/Picture.html">
               <div class="pic">

                  <img alt="" src="${contextPath}/resources/partner/images/check.png"> 사진
               </div>
         </a>
         </label> <label> <a href="/hotel_reg/Policy.html">

               <div class="policy">

                  <img alt="" src="${contextPath}/resources/partner/images/check.png"> 정책
               </div>
         </a>
         </label> <label> <a href="/hotel_reg/Payment.html">
               <div class="payment">결제</div>
         </a>
         </label>

      </div>
      <br>
      <h2>결제</h2>
      귀사에서 허용하는 결제 방식, 세금 정보, 추가 비용 등의 옵션을 설정하세요.
      <div class="input">
         <fieldset class="payoption">
            <p>투숙객 결제 옵션</p>
            <div>
               <p>숙소에서 신용카드 결제가 가능합니까?</p>
               <br>
               <div class="tab-top">
                  <div>
                     <ul class="tabs">
                        <li class="tab-link current" data-tab="tab-1">
                           <div class="radio">
                              <label> <input type="radio" name="card"
                                 checked="checked"> <span>예</span>
                              </label>
                           </div>
                        </li>
                        <li class="tab-link" data-tab="tab-2">
                           <div class="radio-1">
                              <label> <input type="radio" name="card" value="no">
                                 <span>아니오</span>
                              </label>
                           </div>
                        </li>
                     </ul>
                  </div>

               </div>

            </div>

         </fieldset>
         <div class="right">
            <p>고객은 어떻게 숙소를 예약하고 요금을 지불하나요? 일단 예약을 확보하기 위한 차원에서 고객이 모든 주요
               신용카드를 사용할 수 있도록 조치하고 있습니다. 그러나 실제로 요금을 지급받을 때에는 귀사에서 허용하는 결제 수단을
               별도로 명시하실 수 있습니다.</p>
         </div>
      </div>
      <div class="tab-content current" id="tab-1">
         <div class="flex">
            <div class="left">
               <label> <input type="checkbox" name="unionpay"><img
                  src="${contextPath}/resources/partner/images/UnionPay.png"> UnionPay <br></label> <label><input
                  type="checkbox" name="amex"><img src="${contextPath}/resources/partner/images/American_Express.png">
                  AmericanExpress<br> <label><input type="checkbox" name="master"><img
                     src="${contextPath}/resources/partner/images/Mastercard.png"> Euro/Mastercard<br></label> <label>
                     <input type="checkbox" name="jcb"><img src="${contextPath}/resources/partner/images/JCB.png">
                     JCB <br>
               </label> <label> <input type="checkbox" name="bc"><img
                     src="${contextPath}/resources/partner/images/BC-Card.jpg"> BC-Card<br></label>
            </div>
            <div class="right-1">
               <label> <input type="checkbox" value="visa"><img
                  src="${contextPath}/resources/partner/images/Visa.png"> Visa<br></label> <label> <input
                  type="checkbox" name="maestro"><img src="${contextPath}/resources/partner/images/Maestro.png">
                  Maestro<br></label> <label> <input type="checkbox" name="kakaopay"><img
                  src="${contextPath}/resources/partner/images/kakaopay.png"> kakaoPay <br></label> <label>
                  <input type="checkbox" name="payco"><img src="${contextPath}/resources/partner/images/payco.png">
                  Payco <br>
               </label>
            </div>
         </div>
      </div>
      <div class="last">
         <p>거의 마무리되었습니다 – 마지막으로 몇 가지만 확인해주세요</p>
         <div class="set">
            <p>객실 재고 설정</p>
            <span>예약을 원활하게 접수하고 수입을 올리실 수 있도록 숙소를 앞으로 18개월 간 예약 가능한 상태로
               자동 설정해두었습니다. 예약 접수를 시작하기 전 설정을 변경하고 싶으실 경우 '등록을 완료하고 나중에 예약 접수 개시'를
               클릭해주세요. 예약 접수를 시작한 후에도 객실 재고는 얼마든지 변경 가능합니다.</span>
         </div>
         <div class="check">
            <p>등록을 완료하려면 아래 모든 박스에 체크해주세요</p>
            <label><input type="checkbox"> 본 숙박 업체는 합법적인 사업자로,
               최초 요청이 있을 시 필요한 모든 라이센스 및 허가증을 즉시 제출할 수 있음을 보증합니다. Booqueen.com 은
               등록을 통해 제공되는 모든 정보를 조회 및 조사할 권리를 보유합니다.</label> <br> <br> <label><input
               type="checkbox"> <a href="#">일반 계약 조건</a>과 <a href="#">개인정보
                  보호정책</a>숙지하였으며, 이에 동의하고 수락합니다.<br> Booqueen.com은 당사를 통한 숙박업체와
               Booqueen.com 고객 간의 커뮤니케이션을 지원합니다. Booqueen.com은 당사 개인정보 보호정책 및 일반
               계약 조건에 따라 해당 커뮤니케이션 내용을 수집하고 처리합니다. </label>
         </div>
      </div>
      <div>
         <input type="submit" id="continue" value="계속">
      </div>
   </main>
</form>
</body>
</html>