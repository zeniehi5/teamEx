<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 등록 · 정책</title>
<link rel="stylesheet" href="${contextPath}/resources/partner/css/policy.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('input[name="check_out_start"]').each(function(){
		$('input:radio[name="check_out_start"]').on("click", function(){
			console.log("click");
			if($('input:radio[name="check_out_start"]').is(":checked")){
				console.log("inner check");
				$("input:radio[name='check_out_start']").removeAttr("checked");
			}
		})
	})
})
</script>
</head>
<body>
<form action="policy.pdo" method="post">
	<div class="container">
		<header>
			<span id="logo">
				<a href="#"><img src="${contextPath}/resources/partner/images/logo.png" class="header_logo"></a>
			</span>
			<nav>
            	<ul id="topMenu">
                	<li><a href="/register/Register.html">로그인</a></li>
                	<li><a href="/register/Register.html">회원가입</a></li>
            	</ul>
         	</nav>
		</header>
	</div>
	<main class="contents">
    	<div class="option">
			<label>
				<a href="/hotel_reg/Basic_Info.html">
                	<div class="basic"><img alt="" src="/images/check.png"> 기본정보</div>
         		</a>
         	</label>
         	<label>
         		<a href="/hotel_reg/Price.html">
                	<div class="price"><img alt="" src="/images/check.png"> 구성 및 요금</div>
         		</a>
         	</label>
         	<label>
         		<a href="/hotel_reg/Service.html">
         			<div class="service"><img alt="" src="/images/check.png"> 시설 및 서비스</div>
         	 	</a>
			</label>
			<label>
				<a href="/hotel_reg/Facility.html">
					<div class="fac"><img alt="" src="/images/check.png"> 편의시설</div>
         		</a>
         	</label>
         	<label>
         		<a href="/hotel_reg/Picture.html">
					<div class="pic"><img alt="" src="/images/check.png"> 사진</div>
         		</a>
			</label>
			<label>
				<a href="/hotel_reg/Policy.html">
     				<div class="policy">정책</div>
         		</a>
         	</label>
         	<label>
         		<a>
          			<div class="payment">결제</div>
         		</a>
         	</label>
		</div>
      	<br>
      	<div class="head">
        	<h2>정책</h2>
         	<br> 숙소의 기본 정책을 설정해주세요. 아동 및 반려동물이 함께 숙박할 수 있나요? 취소 정책은 얼마나 유연하게 운영하시나요?
      	</div>
      	<div class="input">
        	<fieldset class="cancel">
            	<h2>취소</h2>
            	<div class="cancel-1">체크인 며칠전까지 무료 취소 가능으로 설정하시겠습니까?<br>
            		<select name="free_cancel_allowed">
                  		<option value="1d">1일</option>
                  		<option value="2d">2일</option>
                  		<option value="3d">3일</option>
                  		<option value="7d">7일</option>
               		</select>
            	</div>
            <div class="cancel-2">
               그렇지 않으면 투숙객이<br>
            </div>
            <div class="alarm">
               <div class="alarm-1">
                  <img src="/images/alarm.png"> 전체 숙박료의 10%를 부과합니다.<br>
                  <p>주의: 정책은 차후 수정이 가능합니다. 설정을 시작해보세요.</p>
               </div>
            </div>
         </fieldset>
         <div class="right">
            <p>숙소 등록 후에도 온라인으로 숙소 판매가 시작되기 전에 정보를 수정하실 수 있습니다.</p>
         </div>
      </div>
      <div class="flex">
         <div class="input-2">
            <fieldset class="check-in">
               <p>체크인</p>
               <div class="check-in-1">
                  <p>시작 :</p>
                  <div class="radio">
                     <label> <input type="radio" name="check_in_start"
                        value="14" checked="checked"> <span>14:00</span>
                     </label>
                  </div>
                  <div class="radio-1">
                     <label> <input type="radio" name="check_in_start"
                        value="15"> <span>15:00</span>
                     </label>
                  </div>
                  <div class="radio-2">
                     <label> <input type="radio" name="check_in_start"
                        value="16"> <span>16:00</span>
                     </label>
                  </div>
                  <div class="radio-2">
                     <label> <input type="radio" name="check_in_start"
                        value="18"> <span>18:00</span>
                     </label>
                  </div>
               </div><br><br><br>
               <div class="check-in-2">
                  <p>마감 :</p>
                  <div class="radio">
                     <label> <input type="radio" name="check_in_end"
                        value="19" checked="checked"> <span>19:00</span>
                     </label>
                  </div>
                  <div class="radio-1">
                     <label> <input type="radio" name="check_in_end"
                        value="20"> <span>20:00</span>
                     </label>
                  </div>
                  <div class="radio-2">
                     <label> <input type="radio" name="check_in_end"
                        value="21"> <span>21:00</span>
                     </label>
                  </div>
                  <div class="radio-2">
                     <label> <input type="radio" name="check_in_end"
                        value="22"> <span>22:00</span>
                     </label>
                  </div>
               </div>
              </fieldset>
         </div>
         <fieldset class="check-out">
            <p>체크아웃</p>
            <div class="check-out-1">
               <p>시작 (선택사항) :</p>
               <div class="radio">
                  <label> <input type="radio" name="check_out_start"
                     value="06"> <span>06:00</span>
                  </label>
               </div>
               <div class="radio-1">
                  <label> <input type="radio" name="check_out_start"
                     value="07"> <span>07:00</span>
                  </label>
               </div>
               <div class="radio-2">
                  <label> <input type="radio" name="check_out_start"
                     value="08"> <span>08:00</span>
                  </label>
               </div>
               <div class="radio-2">
               	  <label> <input type="radio" name="check_out_start"
                     value="09"> <span>09:00</span>
                  </label>
               </div>
            </div><br><br><br>
            <div class="check-out-2">
               <p>마감 :</p>
               <div class="radio">
                  <label> <input type="radio" name="check_out_end"
                     value="11" checked="checked"> <span>11:00</span>
                  </label>
               </div>
               <div class="radio-1">
                  <label> <input type="radio" name="check_out_end"
                     value="12"> <span>12:00</span>
                  </label>
               </div>
               <div class="radio-2">
                  <label> <input type="radio" name="check_out_end"
                     value="13"> <span>13:00</span>
                  </label>
               </div>
               <div class="radio-2">
                  <label> <input type="radio" name="check_out_end"
                     value="14"> <span>14:00</span>
                  </label>
               </div>
            </div>
           </fieldset>
      </div>
      <div class="child">
         <p>어린이</p>
         <div>
            <p>어린이를 동반할 수 있습니까? (연령 및 요금은 추후 구체적으로 명시하실 수 있습니다)</p>
         </div>
         <div class="flex">
            <div class="child-1">
               <label> <input type="radio" name="child" value="yes"
                  checked="checked"> <span>예</span>
               </label>
            </div>
            <div class="child-2">
               <label> <input type="radio" name="child" value="no">
                  <span>아니오</span>
               </label>
               <script>
                  $(
                        "input:radio[name='check_in_start']:radio[value='yes']")
                        .prop('checked', true); // 선택하기
                  $(
                        "input:radio[name='check_in_start']:radio[value='no']")
                        .prop('checked', false); // 해제하기
                  $("input:radio[name='check_in_end']:radio[value='yes']")
                        .prop('checked', true);
                  $("input:radio[name='check_in_end']:radio[value='no']")
                        .prop('checked', false);
                  $(
                        "input:radio[name='check_out_start']:radio[value='yes']")
                        .prop('checked', true);
                  $(
                        "input:radio[name='check_out_start']:radio[value='no']")
                        .prop('checked', false);
                  $(
                        "input:radio[name='check_out_end']:radio[value='yes']")
                        .prop('checked', true);
                  $("input:radio[name='check_out_end']:radio[value='no']")
                        .prop('checked', false);
                  $("input:radio[name='child']:radio[value='yes']").prop(
                        'checked', true);
                  $("input:radio[name='child']:radio[value='no']").prop(
                        'checked', false);
               </script>
            </div>
         </div>
      </div>
      <fieldset class="input-3">
         <p>반려동물</p>
         <div class="pat">
            <div>요즘 반려동물과 함께 여행하는 분들이 늘고 있습니다. 반려동물 허용 및 추가 요금 여부를 명시해 주시기
               바랍니다.</div>
            <p>반려동물 동반을 허용하시나요?</p>
         </div>
         <div>
            <select name="pet_allowed">
               <option value="false">아니오</option>
               <option value="true">예</option>
            </select>
         </div>

      </fieldset>
      <div>
         <input type="submit" id="continue" value="계속">
      </div>
   </main>
</form>
</body>
</html>