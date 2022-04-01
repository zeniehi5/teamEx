<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/partner/css/facilities.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
   $(document).ready(function() {
      for (let i = 1; i < 8; i++) {
         $('#flip' + i).click(function() {
            $('#panel' + i).slideToggle();
         });
      }
   });
   
   function submitForm(){
	   var answer = confirm("객실에 대한 정보를 저장하시겠습니까?")
	   if(answer){
		   alert("객실을 성공적으로 등록하였습니다.")
	   }
	   $("#myForm").submit()
   }
</script>
</head>
<body>
   <div class="container">
      <header>
         <span id="logo"> <a href="#"><img src="${contextPath}/resources/partner/images/logo.png" class="header_logo"></a>
         </span>
      </header>
   </div>
   <main class="contents">
      <div class="option">

         <label> <a href="/hotel_reg/Basic_Info.html">
               <div class="basic">
                  <img alt="" src="/images/check.png"> 기본정보
               </div>
         </a>
         </label> <label> <a href="/hotel_reg/Price.html">
               <div class="price">
                  <img alt="" src="/images/check.png"> 구성 및 요금
               </div>
         </a>
         </label> <label> <a href="/hotel_reg/Service.html">
               <div class="service">
                  <img alt="" src="/images/check.png"> 시설 및 서비스
               </div></label> </a> <label> <a href="/hotel_reg/Facility.html">

               <div class="fac">편의시설</div>
         </a>
         </label> <label> <a>
               <div class="pic">사진</div>
         </a>
         </label> <label> <a>

               <div class="policy">정책</div>
         </a>
         </label> <label> <a>
               <div class="payment">결제</div>
         </a>
         </label>

      </div>
      <br>
      <div>
         <h2>편의시설</h2>
         <br> 거의 다 됐습니다! 이제 엑스트라 베드 옵션, 편의 시설 및 특징, 제공되는 서비스 등의 상세정보 입력이
         남았습니다.
      </div>
      <form id="myForm" action="facilities.pdo" method="post">
      <div class="input">
         <fieldset class="facility">
            <h2>편의시설</h2>
            <p id="name">시설에 대해 알려주세요</p>

            <div class="faci">
               <p>고객이 자주 찾는 시설/서비스</p>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="ac">
                     에어컨
                  </label>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="bathtub">
                     욕조
                  </label>
               </div>

               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="spabath">
                     스파 욕조
                  </label>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="tv">
                     평면 TV
                  </label>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="balcony">
                     발코니
                  </label>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="terras">
                     테라스
                  </label>
               </div>
            </div>
         </fieldset>
         <div class="right">
            <p>숙소 등록 후에도 온라인으로 숙소 판매가 시작되기 전에 정보를 수정하실 수 있습니다.</p>
         </div>
      </div>
      <div class="outer">
         <div class="roomfac">
            <div class="inner" id="flip1">
               <span>객실 편의시설 ▽</span>
            </div>
            <div class="inner-check" id="panel1">
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="hanger">
                     옷걸이
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="drying_rack">
                     의류건조대
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="folding_bed">
                     접이식 침대
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="sofa_bed">
                     소파 베드
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="closet">
                     옷장
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="carpet_floor">
                     카페트 바닥
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="marble_floor">
                     타일/대리석 바닥
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="wooden_floor">
                     목재 또는 격자무늬 바닥
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="dress_room">
                     드레스룸
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="fan">
                     선풍기
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="heater">
                     난방시설
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="private_entrance">
                     전용 입구
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="safety_box">
                     안전 금고
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="sofa">
                     소파
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="sound_proof">
                     방음 시설
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="resting_area">
                     휴식 공간
                  </label>
                  <hr>
               </div>
               <div id="endcheckbox">
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="cleaning_tools">
                     청소 도구
                  </label>
               </div>
            </div>
         </div>
         <div class="roomfac-1">
            <div class="inner-1" id="flip2">
               <span>욕실 ▽</span>
            </div>
            <div class="inner-1-check" id="panel2">
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="bidet">
                     비데
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="bathrobe">
                     목욕 가운
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="amenities">
                     무료 세면도구
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="hair_dryer">
                     헤어드라이어
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="public_bathroom">
                     공용 욕실
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="splipper">
                     슬리퍼
                  </label>
                  <hr>
               </div>
               <div id="endcheckbox">
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="restroom">
                     화장실
                  </label>

               </div>
            </div>
         </div>
         <div class="roomfac-2">
            <div class="inner-2" id="flip3">
               <span>미디어/테크놀로지 ▽</span>
            </div>
            <div class="inner-2-check" id="panel3">
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="computer">
                     컴퓨터
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="game_console">
                     게임콘솔
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="laptop">
                     노트북
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="tablet_pc">
                     iPad
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="cable_channel">
                     케이블 채널
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="fax">
                     팩스
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="ipad_docking_station">
                     iPod 도킹 스테이션
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="laptop_safebox">
                     노트북 안전 금고
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="pay_per_view">
                     개별 프로그램 유료 시청 시스템(PPV)
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="radio">
                     라디오
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="satellite_channel">
                     위성채널
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="telephone">
                     전화기
                  </label>
                  <hr>
               </div>
               <div id="endcheckbox">
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="video_game">
                     비디오 게임
                  </label>
               </div>
            </div>
         </div>
         <div class="roomfac-3">
            <div class="inner-3" id="flip4">
               <span>식음료 ▽</span>
            </div>
            <div class="inner-3-check" id="panel4">
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="dining_area">
                     식사 공간
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="dining_table">
                     식탁
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="barbeque">
                     바비큐
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="cooktop">
                     쿡탑
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="toaster">
                     토스터
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="coffee_pot">
                     커피포트
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="outdoor_dining">
                     야외 식사 공간
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="mini_bar">
                     미니바
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name='kitchenware'>
                     주방 식기
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="microwave">
                     전자레인지
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="refridge">
                     냉장고
                  </label>
                  <hr>
               </div>
               <div id="endcheckbox">
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="coffee_machine">
                     커피머신
                  </label>

               </div>
            </div>
         </div>
         <div class="roomfac-4">
            <div class="inner-4" id="flip5">
               <span>서비스/기타 ▽</span>
            </div>
            <div class="inner-4-check" id="panel5">
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="lounge">
                     라운지
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="alarm_clock">
                     알람 시계
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="morning_call">
                     모닝콜 서비스
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="towel">
                     타월
                  </label>
                  <hr>
               </div>
               <div id="endcheckbox">
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="bathing_sheet">
                     침대시트
                  </label>
               </div>
            </div>
         </div>
         <div class="roomfac-5">
            <div class="inner-5" id="flip6">
               <span>실외/전망 ▽</span>
            </div>
            <div class="inner-5-check" id="panel6">
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="city_view">
                     도시 전망
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="garden_view">
                     정원 전망
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="lake_view">
                     호수 전망
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="attractions_view">
                     관광 명소 전망
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="mountain_view">
                     산 전망
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="pool_view">
                     수영장 전망
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="river_view">
                     강 전망
                  </label>
                  <hr>
               </div>
               <div id="endcheckbox">
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="ocean_view">
                     바다 전망
                  </label>

               </div>
            </div>
         </div>
         <div class="roomfac-6">
            <div class="inner-6" id="flip7">
               <span>접근성 ▽</span>
            </div>
            <div class="inner-6-check" id="panel7">
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="ground_floor">
                     객실은 지상층에 위치하고 있습니다
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="wheelchair">
                     객실에서 휠체어 사용이 가능합니다
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="elevator">
                     엘리베이터로 위층 이동
                  </label>
                  <hr>
               </div>
               <div>
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="stair_only">
                     계단으로만 위층 이동 가능
                  </label>
                  <hr>
               </div>
               <div id="endcheckbox">
                  <label> &nbsp;<input type="checkbox" id="checkbox" name="bathroom_handle">
                     손잡이 레일이 구비된 화장실
                  </label>

               </div>
            </div>
         </div>

      </div>
      </form>
      <div>
         <button type="button" id="continue" onclick="submitForm()">계속</button>
      </div>
   </main>
</body>

</html>