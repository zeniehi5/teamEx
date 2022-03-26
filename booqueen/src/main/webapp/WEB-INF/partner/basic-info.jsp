<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/partner/css/basic-info.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=29b5f78cb856dc4d592f3c3f87388524&libraries=services"></script>
</head>
<body>
<form action="basic.pdo" method="post">
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
         <label> <a href="/hotel_reg/Basic_Info.html">
               <div class="basic">기본정보</div>
         </a>
         </label> <label> <a>
               <div class="price">구성 및 요금</div>
         </a>
         </label> <label> <a>
               <div class="service">시설 및 서비스</div></label> </a> <label> <a>

               <div class="fac">편의시설</div>
         </a>
         </label> <label> <a>
               <div class="pic">사진</div>
         </a>
         </label> <label> <a>

               <div class="policy">정책</div>
         </a>
         </label> <label> <a href="#">
               <div class="payment">결제</div>
         </a>
         </label>
      </div>
      <br>
      <h2>안녕하세요, ${firstname} 님!</h2>
      먼저 숙소 이름, 주소, 연락처를 알려주세요.
      <div class="input">
         <fieldset class="name">
            <div class="name-1">
               <p>숙소 이름은 무엇인가요?</p>
               <input type="hidden" name="member_email" value="${email}">
               <input type="text" name="hotelname"><br> <span>숙소 검색 시 고객들이 보게
                  되는 이름입니다.</span>
            </div>
            <div class="star">
               성급 <br> <select class="star-1" name="star">
                  <option>해당없음</option>
                  <option value="1">1 ★</option>
                  <option value="2">2 ★★</option>
                  <option value="3">3 ★★★</option>
                  <option value="4">4 ★★★★</option>
                  <option value="5">5 ★★★★★</option>
               </select>
            </div>
         </fieldset>
         <div class="right">
            <p>숙소 등록 후에도 온라인으로 숙소 판매가 시작되기 전에 정보를 수정하실 수 있습니다.</p>
         </div>
      </div>
      <fieldset class="contact">
         <div class="contact-1">
            <p>숙소 연락처를 알려주세요.</p>
            <span id="name">담당자 성명</span>
         </div>
         <div class="contact-2">
            <input type="text" name="manager"><br> <span id="name">연락처(귀사의
               숙소 등록 과정에서 지원이 필요할 경우 대비)</span>
            <div class="contact-2-1">
               전화번호 <br> <input type="text" name="telephone">
            </div>
            <div>
               <!-- <다른 전화번호> 나중에 필요시 추가 -->
            </div>
         </div>
      </fieldset>
      <div class="loc">
         <fieldset class="location">
            <div class="location-1">
               <div class="location-2">
                  <div>
                     <p>숙소의 위치는 어디인가요?</p>
                  </div>
                  <div>
                     <p id="name">도로명 주소</p>
                     <input type="text" name="address1" id="address1" placeholder=" &nbsp;예) 사직로 161">
                  </div>
                  <div>
                     <p id="name">주소2</p>
                     <input type="text" name="address2" id="address2" placeholder=" &nbsp;빌딩, 층, 호수 등">
                  </div>
                  <div>
                     <p id="name">도시</p>
                     <input type="text" name="city" id="city" placeholder=" &nbsp;예) Samgo-ri">
                  </div>
                  <div>
                     <p id="name">우편번호</p>
                     <input type="text" name="postalcode" onchange="openMapModal();">
                  </div>
               </div>
               <div class="location-1-1">
                  <div>
                     <img alt="" src="/images/letter-verification-icon.png">
                  </div>
                  <div>
                     <p>주소 입력은 정확하게!</p>
                     <span>건물명, 번지수 등을 포함하여 귀사 숙소의 주소 전체를 꼭 기재해주시기 바랍니다. 기재해주신
                        주소의 인증 차원에서 해당 주소로 우편이 전송될 수 있습니다.</span>
                  </div>
               </div>
            </div>
         </fieldset>
      </div>
<div id="map" style="width:58%;height:350px;"></div>
	<p><em>숙소의 정확한 위치를 지도에 표시해 주세요!</em></p> 
<div id="clickLatlng"></div>
      <div>
         <input type="submit" id="continue" value="계속">
      </div>
	
   </main>
</form>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

function openMapModal(){
	var address1 = document.getElementById('address1').value;
	var address2 = document.getElementById('address2').value;
	var city = document.getElementById('city').value;
	var fullAddress = city + ' ' + address1 + ' ' + address2;
	console.log(fullAddress);
	

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch(fullAddress, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
  	// 지도에 클릭 이벤트를 등록합니다
 	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
  	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
      
      // 클릭한 위도, 경도 정보를 가져옵니다 
      var latlng = mouseEvent.latLng; 
      
      // 마커 위치를 클릭한 위치로 옮깁니다
      marker.setPosition(latlng);
      
      var message = '선택한 숙소위치의 위도는 ' + latlng.getLat() + ' 이고, ';
      message += '경도는 ' + latlng.getLng() + ' 입니다';
      var input = '<input type="hidden" name="latitude" value="' + latlng.getLat() + '">';
      input += '<input type="hidden" name="longitude" value="' + latlng.getLng() + '">';
      
      var resultDiv = document.getElementById('clickLatlng'); 
      resultDiv.innerHTML = message;
      resultDiv.innerHTML = input;
      
  });
    
});

}
</script>
</body>
</html>