<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/calendar.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-responsive.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.js"></script>
<title>${hotel.hotelname}· 캘린더</title>
<script type="text/javascript">

	$(function(){
		var option = '';
		$("#selectOption").change(function(){
			option = $("#selectOption").val();
			
		var roomVO = {
		            "type": option
		         }
				
				$.ajax({
					method:"POST",
					url:"getRoomAvailable.pdo",
					contentType:"application/json",
		            dataType:"json",
		            data:JSON.stringify(roomVO),
		            success:function(result){
		            	$("#available").empty()
		            	for(let i=1; i<result.available+1;i++ ){
		            	const  option = $("<option>")
		            					.attr("value",i)
		            					.text("잔여수량 : " + i + "개")
		            			$("#available").append(option)
		            	}
		            	const hidden = $("<input type='hidden'")
		            					.attr("id", "selectedId")
		            					.attr("value", result.room_id)
		            				$("#hiddenSpace").append(hidden)
		            	
		            },
		            error:function(){
		               console.log("통신실패")
		            } 
		         });
					
		});
				
		$("#insertAvailable").click(function(){
			const result = confirm("선택하신 객실을 이용가능 설정하시겠습니까?")		
			if(result) {
				var openDate = $("#openDate").val()
             	var closeDate = $("#closeDate").val()
             	var roomType = option
             	var available = $("#available").val()
             	var standardPrice =$("#standardPrice").val()
             	var nonRefundablePrice = $("#nonRefundablePrice").val()
             	
             	console.log("openDate : "+openDate +"closeDate : "+closeDate+"standardPrice : "
             	   + standardPrice + "roomType: " + roomType + "available : " + available
                   + "nonRefundablePrice : "+nonRefundablePrice)
                   
               	const roomAvailableVO ={
               		"openDate":openDate,
               		"closeDate":closeDate,
                	"standard_price":standardPrice,
                	"non_refundable_price":nonRefundablePrice,
                	"type":roomType,
                	"available":available,
                }
				
				$.ajax({
	                method:"POST",
	                url:"insertAvailableRoom.pdo",
	                contentType:"application/json",
	                dataType:"json",
	                data:JSON.stringify(roomAvailableVO),
	                success:function(result){
	                   if(result.msg == "SUCCESS"){
	                      alert("저장이 완료되었습니다.")
	                      location.reload()
	                   }else{
	                      alert("메렁")
	                   }
	                },
	                error:function(){
	                   console.log("통신실패")
	                }
				})
			}	
		})
	})
<%--
	function changeCount() {
		var option = $("#typeOption").val()
		var roomVO ={
            "type": option
         }
		
		$.ajax({
			method:"POST",
			url:"getRoomAvailable.pdo",
			contentType:"application/json",
            dataType:"json",
            data:JSON.stringify(roomVO),
            success:function(result){
            	$("#available").empty()
            	for(let i=1; i<result.available+1;i++ ){
            	const  option = $("<option>")
            					.attr("value",i)
            					.text("잔여수량 : " + i + "개")
            			$("#available").append(option)
            	}
            	const hidden = $("<input type='hidden'")
            					.attr("id", "selectedId")
            					.attr("value", result.room_id)
            				$("#hiddenSpace").append(hidden)
            	
            },
            error:function(){
               console.log("통신실패")
            } 
         })
	}
--%>
    var count =0;
    var arr = new Array();
   function scheduleEvent(e) {
//       const cla=$("<div>")
//             .attr("id","scheduleStyle"+e)
//             .attr("class","partner-seleted-able")
//             $("#scheduleStyle"+e).append(cla)
      $("#scheduleStyle"+e).addClass('partner-seleted-able')
            console.log("e : "+e)
      if(e == "" ){
         $("#scheduleStyle"+e).removeClass('partner-seleted-able')
         $("#date"+e).removeClass('classColor')
      }else{
         if($("#date"+e).hasClass('classColor')&& $("#scheduleStyle"+e).hasClass('partner-seleted-able')){
            $("#scheduleStyle"+e).removeClass('partner-seleted-able')
            $("#date"+e).removeClass('classColor')           
            
            arr.sort((a,b) => b.num-a.num);
         
            console.log("arr.length:" +arr.length)
            for(let i =0;i<arr.length;i++){
               console.log("e : "+e)
               console.log("arr[i] "+arr[i])
               if(arr[i] == e){
                  arr.splice(i,1)
               }
            }
            $("#scheduleArr").val(arr)
            arr.sort(); // [11, 2, 33, 4]
   
            // 위의 해결방안으로는 .sort(function(a,b){return a-b;});
            arr.sort(function(a, b){
               return a-b; // [2, 4, 11, 33] (오름차순)
            });
            arr.sort(function(a, b){
               return b-a; // [33, 11, 4, 2] (내림차순)
            });
   
            // 화살표 함수
            arr.sort((a,b) => a-b); // [2, 4, 11, 33] (오름차순) 
            
            console.log("if arr : "+ arr)
         
         }else{
            $("#date"+e).addClass('classColor')
         
            arr.push(e)               
         
            
            count+=1;
         
            arr.sort(); // [11, 2, 33, 4]
   
            // 위의 해결방안으로는 .sort(function(a,b){return a-b;});
            arr.sort(function(a, b){
               return a-b; // [2, 4, 11, 33] (오름차순)
            });
            arr.sort(function(a, b){
               return b-a; // [33, 11, 4, 2] (내림차순)
            });
   
            // 화살표 함수
            arr.sort((a,b) => a-b); // [2, 4, 11, 33] (오름차순) 
            console.log("else arr : "+ arr)
            $("#scheduleArr").val(arr)
         }
      }
      
      const month = $("#hiddenMonth").val()
      const year = $("#hiddenYear").val()
   
      console.log("month : "+ month)
      console.log("year : "+ year)
      
   
         
      const length =arr.length
      var firstChoice = arr[0]
      var endChoice = arr[arr.length-1]
      
      if(length ==0){
         firstChoice = "??"
         endChoice ="??"
      }else{
         firstChoice = arr[0]
         endChoice = arr[arr.length-1]
      }      
      
      //날짜 표시
      $("#openDate").val(year+"-"+month+"-"+firstChoice)
      $("#closeDate").val(year+"-"+month+"-"+endChoice)
      
      
      
   
   // console.log(" arr : "+    $("#scheduleArr").val())
      const firstNum = arr[0]
      const endNum = arr[arr.length-1]
      
      console.log("firstNum : "+firstNum)
      console.log("endNum : "+endNum)
      
      if(count % 2 == 0){
         //alert("그만눌러!")
         console.log("(endNum-firstNum)- 1 :" + ((parseInt(endNum)-parseInt(firstNum))-1))
         const result =  ((parseInt(endNum)-parseInt(firstNum))-1)
         const real = parseInt(result)+parseInt(firstNum)
         for(let i=firstNum; i<real;i++){
            //alert("firstNum+result :" +real)         
            const please = parseInt(i)+1
            $("#date"+please).addClass('classColor')
            $("#scheduleStyle"+please).addClass('partner-seleted-able')
            arr.push(please)
               
            arr.sort(); // [11, 2, 33, 4]
            
            // 위의 해결방안으로는 .sort(function(a,b){return a-b;});
            arr.sort(function(a, b){
               return a-b; // [2, 4, 11, 33] (오름차순)
            });
            arr.sort(function(a, b){
               return b-a; // [33, 11, 4, 2] (내림차순)
            });
   
            // 화살표 함수
            arr.sort((a,b) => a-b); // [2, 4, 11, 33] 
            $("#scheduleArr").val(arr)
         }   
         console.log(" arr ???: "+    $("#scheduleArr").val())
         console.log(" arr 진짜: "+    arr)
         
         console.log("count1 " + count)
         
      }else if(count % 3 == 0 ){ //굿 아이디어 ^^
         console.log("count2 " + count)
         const arrLength = parseInt(arr.length)
         
         for(var i=0;i<arrLength-1 ;i++){
            console.log(" 농락하네 : "+arr)
            console.log("농락??? "+arr.length)
            console.log("arr["+i+"] : "+arr[2])
            $("#date"+arr[0]).removeClass('classColor')
            $("#scheduleStyle"+arr[0]).removeClass('partner-seleted-able')
            arr.splice(0,1)
            
            console.log("arr 지우기 : "+arr)
         }         
         $("#scheduleArr").val("")
         console.log(" arr :"+$("#scheduleArr").val())
         console.log(" arr :"+arr )
         
      }
      console.log("count3 " + count)
      console.log("????? " +$("#hiddenId").val())
      
   }// close scheduleEvent(e)
   
   
   $(function(){
      
               
      $( "input[name='open_date_start']" ).datepicker();
      $( "input[name='open_date_end']" ).datepicker();
      
      $("#partnerUpdate").click(function(){
         const result = confirm("정말로 수정하시겠습니까??")
         
          if(result){
             
             const openDate = $("#openDate").val()
             const closeDate = $("#closeDate").val()
             const standardPrice =$("#standardPrice").val()
             const nonRefundablePrice = $("#nonRefundablePrice").val()
             const roomId = $("#hiddenId").val()
             
             console.log("openDate : "+openDate +"closeDate : "+closeDate+"standardPrice : "
                   +standardPrice+"nonRefundablePrice : "+nonRefundablePrice+"roomId : "+roomId)
             
             const roomAvailableVo ={
                "openDate":openDate,
                "closeDate":closeDate,
                "standard_price": standardPrice,
                "non_refundable_price": nonRefundablePrice,
                "room_id":roomId
             }
              
             $.ajax({
                method:"POST",
                url:"partnerScheduleUpdate.pdo",
                contentType:"application/json",
                dataType:"json",
                data:JSON.stringify(roomAvailableVo),
                success:function(result){
                  // const msg = JSON.parse(result)
                   if(result.msg == "SUCCESS"){
                      alert("저장이 완료되었습니다.")
                      location.reload()
                   }else{
                      alert("메렁")
                   }
                },
                error:function(){
                   console.log("통신실패")
                }
                
             })
             
             
          }
      })
      
   })
   
   
</script>
<style type="text/css">

.classColor{
   background-color: #DDECF3!important;
     
}
table.scheduleTable {
   width: 100%;
   border-top: 1px solid #ccc;
   border-right: 1px solid #ccc;
}

.scheduleTable th {
   border-left: 1px solid #ccc;
   border-bottom: 1px solid #ccc;
   padding: 5px;
}

body {
   scrollbar-face-color: #F6F6F6;
   scrollbar-highlight-color: #bbbbbb;
   scrollbar-3dlight-color: #FFFFFF;
   scrollbar-shadow-color: #bbbbbb;
   scrollbar-darkshadow-color: #FFFFFF;
   scrollbar-track-color: #FFFFFF;
   scrollbar-arrow-color: #bbbbbb;
   margin-left: "0px";
   margin-right: "0px";
   margin-top: "0px";
   margin-bottom: "0px";
}

td {
   font-size: 9pt;
   color: #595959;
   cursor: pointer;
   vertical-align: top;
}

th {
   font-family: "돋움";
   font-size: 9pt;
   color: #000000;
}

select {
   font-size: 9pt;
   color: #595959;
}

.divDotText {
   overflow: hidden;
   text-overflow: ellipsis;
}

A:link {
   font-size: 9pt;
   color: #000000;
   text-decoration: none;
}

A:visited {
   font-size: 9pt;
   color: #000000;
   text-decoration: none;
}

A:active {
   font-size: 9pt;
   color: red;
   text-decoration: none;
}

A:hover {
   font-size: 9pt;
   text-decoration: none;
}

.day {
   width: 100px;
   height: 30px;
   font-weight: bold;
   font-size: 15px;
   font-weight: bold;
   text-align: center;
}

.sat {
   color: #529dbc;
}

.sun {
   color: red;
}

.today_button_div {
   float: right;
}

.today_button {
   width: 100px;
   height: 30px;
}

.calendar {
   width: 80%;
   margin: auto;
}

.navigation {
   margin-top: 100px;
   margin-bottom: 30px;
   text-align: center;
   font-size: 25px;
   vertical-align: middle;
   
}

.calendar_body {
   width: 100%;
   background-color: #FFFFFF;
   border: 1px solid white;
   margin-bottom: 50px;
   border-collapse: collapse;
}

.calendar_body .today {
   border: 1px solid white;
   height: 120px;
 /*   background-color: #009fe161; */
   text-align: left;
   border-top: 0;
   vertical-align: top;
}

.calendar_body .date {
   font-weight: 400;
   font-size: 15px;
   /*padding-left: 3px;*/
   padding-top: 3px;
   vertical-align: top;
}

.calendar_body .sat_day {
   border: 1px solid white;
   height: 120px;
   background-color: #EFEFEF;
   text-align: left;
   border-top: 0;
   vertical-align: top;
}

.calendar_body .sat_day .sat {
   color: #529dbc;
   font-weight: 400;
   font-size: 11pt;
   padding-left: 3px;
   padding-top: 3px;
}

.calendar_body .sun_day {
   border: 1px solid white;
   height: 120px;
   background-color: #EFEFEF;
   text-align: left;
   border-top: 0;
   vertical-align: top;
}

.calendar_body .sun_day .sun {
   color: red;
   font-weight: 400;
   font-size: 11pt;
   padding-left: 3px;
   padding-top: 3px;
}

.calendar_body .normal_day {
   border: 1px solid white;
   height: 120px;
   background-color: white;
   vertical-align: top;
   border-top: 0;
   text-align: left;
}

.before_after_month {
   margin: 10px;
   font-weight: bold;
}

.before_after_year {
   font-weight: bold;
}

.this_month {
   margin: 10px;
}
li{
   list-style-type: none;
}
.partner-seleted-able{
   margin: 0!important;
   /* height: 10px; */
   /*  background: aqua; */
   
}
.button_primary{
    color: #fff;
    background-color: #07c;
    border-color: #07c;
}
.button_text{
    vertical-align: baseline;
    display: inline-block;
}
.cal_navi{
	display: flex! important;
	align-items: center;
	justify-content: center;
}
.today-circle{
	background: #003b95;
	color: #fff;
	width: 21px;
	border-radius: 50%;
	text-align: center;
}
</style>
</head>
<body>
   <div class="main-container">
      <div class="content">
         <div class="home">
            <jsp:include page="/WEB-INF/partner/header.jsp" />
            <main class="main">
               <div class="bui-spacer">
                  <div class="av-cal-header av-cal-header--fixed-max-width">
                     <div class="av-cal-header-row">
                        <div
                           class="av-cal-header-row__section av-cal-header-row__section--primary">
                           <div
                              class="av-cal-header-row__element av-cal-header-row__element--flexible">
                              <span class="bui-f-font-display_two"><span>캘린더</span></span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="av-monthly">
                  <div class="av-monthly-layout__main">
                     <div class="av-monthly-layout">
                        <span></span>
                        <div class="av-monthly-container">
                           <div class="av-monthly-container__grid">
                              <form name="calendarFrm" id="calendarFrm" action="" method="GET">

      <div class="calendar">

         <!--날짜 네비게이션  -->
         <div class="navigation cal_navi">
            <a class="before_after_year"
               href="calendar.pdo?year=${today_info.search_year-1}&month=${today_info.search_month}">
               <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8.354 1.646a.5.5 0 0 1 0 .708L2.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
  <path fill-rule="evenodd" d="M12.354 1.646a.5.5 0 0 1 0 .708L6.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
</svg> <!-- 이전해 -->
            </a> <a class="before_after_month"
               href="calendar.pdo?year=${today_info.before_year}&month=${today_info.before_month}">
               <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
</svg> <!-- 이전달 -->
            </a> 
            <span class="this_month" style="color: black;}"> &nbsp;${today_info.search_year}. 
               <c:if test="${today_info.search_month<10}">0</c:if>${today_info.search_month}
               
               <input type="hidden" id="hiddenMonth" value="${today_info.search_month}" >
               <input type="hidden" id="hiddenYear" value="${today_info.search_year}" >
            </span> 
            <a class="before_after_month"
               href="calendar.pdo?year=${today_info.after_year}&month=${today_info.after_month}">
               <!-- 다음달 --><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
</svg>
            </a> <a class="before_after_year"
               href="calendar.pdo?year=${today_info.search_year+1}&month=${today_info.search_month}">
               <!-- 다음해 --> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z"/>
  <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z"/>
</svg>
            </a>
         </div>

         <!-- <div class="today_button_div"> -->
         <!-- <input type="button" class="today_button" onclick="javascript:location.href='/calendar.do'" value="go today"/> -->
         <!-- </div> -->
         <table class="calendar_body">

            <thead>
               <tr bgcolor="#CECECE">
                  <th class="day sun">일</th>
                  <th class="day">월</th>
                  <th class="day">화</th>
                  <th class="day">수</th>
                  <th class="day">목</th>
                  <th class="day">금</th>
                  <th class="day sat">토</th>
               </tr>
            </thead>
<tbody>
               <tr>
                  <c:forEach var="dateList" items="${dateList}" varStatus="date_status">
                     <c:choose>
                        <c:when test="${dateList.value=='today'}">
                           <a href="#">
                           <td class="today" id="date${dateList.date}" onclick="scheduleEvent('${dateList.date}')" >
                              <ul class="date">
                              <div id="scheduleStyle${dateList.date}">
                                    <span></span>
                                 </div>
                                 <div class="today-circle">${dateList.date}</div>   
                                 <c:forEach var="available" items="${available}">   
                                     <c:if test="${available.year eq dateList.year}">       
                                       <c:if test="${available.month eq dateList.month+1}">
                                             <c:if test="${available.day eq dateList.date}">   
                                                   <a href="calendarDetail.pdo?year=${available.year}&month=${available.month-1}&day=${available.day}&room_id=${available.room_id}">
                                                   		<input type="hidden" id="hiddenId" value="${available.room_id}">
                                                   <li id="${available.room_id}">${available.type}(${available.available})</li>                           
                                                </a>      
                                                </c:if>                           
                                             </c:if>                                          
                                       </c:if>
                                    
                                 </c:forEach>
                              </ul>
                              <div></div>
                              </td>
                              </a>
                        </c:when>
                        <c:when test="${date_status.index%7==6}">
                           <td class="sat_day" id="date${dateList.date}"  onclick="scheduleEvent('${dateList.date}')">
                              <ul class="sat"><span>${dateList.date}</span>
                              <div id="scheduleStyle${dateList.date}">
                                    <span></span>
                                 </div>
                           <c:forEach var="available" items="${available}">   
                                     <c:if test="${available.year eq dateList.year}">                                        
                                       <c:if test="${available.month eq dateList.month+1}">
                                             <c:if test="${available.day eq dateList.date}">
                                                <a href="calendarDetail.pdo?year=${available.year}&month=${available.month-1}&day=${available.day}&room_id=${available.room_id}">
                                                   <input type="hidden" id="hiddenId" value="${available.room_id}">
                                                   <li id="${available.room_id}">${available.type}(${available.available})</li>                           
                                                </a>                                
                                             </c:if>                                          
                                       </c:if>
                                    </c:if>
                                 </c:forEach>   
                              </ul>
                              <div></div>
                           </td>
                        </c:when>
                        <c:when test="${date_status.index%7==0}">
               </tr>
               <tr>
                           <td class="sun_day"  id="date${dateList.date}"  onclick="scheduleEvent('${dateList.date}')">
                              <ul class="sun"><span>${dateList.date}</span>
                                 <div id="scheduleStyle${dateList.date}">
                                    <span></span>
                                 </div>
                                 <c:forEach var="available" items="${available}">   
                                    
                                     <c:if test="${available.year eq dateList.year}"> 
                                       
                                       <c:if test="${available.month eq dateList.month+1}">
                                             <c:if test="${available.day eq dateList.date}">
                                                <a href="calendarDetail.pdo?year=${available.year}&month=${available.month-1}&day=${available.day}&room_id=${available.room_id}">
                                                   <input type="hidden" id="hiddenId" value="${available.room_id}">
                                                   <li id="${available.room_id}">${available.type}(${available.available})</li>                           
                                                </a>             
                                             </c:if>                                          
                                       </c:if>
                                     </c:if> 
                                 </c:forEach>   
                              </ul>
                              <div></div>
                           </td>
                        </c:when>
                        <c:otherwise>
                           <td class="normal_day"  id="date${dateList.date}"  onclick="scheduleEvent('${dateList.date}')">
                              <ul class="date"><span>${dateList.date}</span>
                              <div id="scheduleStyle${dateList.date}">
                                    <span></span>
                                 </div>
                                    <c:forEach var="available" items="${available}">   
                                    
                                    <c:if test="${available.year eq dateList.year}"> 
                                       
                                       <c:if test="${available.month eq dateList.month+1}">
                                          
                                             <c:if test="${available.day eq dateList.date}">
                                                <a href="calendarDetail.pdo?year=${available.year}&month=${available.month-1}&day=${available.day}&room_id=${available.room_id}">
                                                   <input type="hidden" id="hiddenId" value="${available.room_id}">
                                                   <li id="${available.room_id}">${available.type}(${available.available})</li>                           
                                                </a>
                                             </c:if>                                          
                                       </c:if>
                                    </c:if> 
                                 </c:forEach>   
                              </ul>
                              <div></div>
                           </td>
                        </c:otherwise>
                     </c:choose>
                  </c:forEach>
            </tbody>
         </table>
      </div>
   </form>
                           </div>
                           <div class="av-monthly-container__form">
                              <form action="update-calendar.pdo" method="POST">
                                 <div
                                    class="av-monthly-container__block av-monthly__hide-medium">
                                    <div data-tour-onboarding="datepicker">
                                       <div class="bui-spacer--large">
                                          <div class="bui-spacer--small">
                                             <strong><span>7개 날짜 선택됨</span></strong>
                                          </div>
                                          <div class="ext-datepicker__wrap">
                                             <div class="ext-datepicker__text-input bui-form__group">
                                                <label><span>시작일</span></label>
                                                <div
                                                   class="input-group input-daterange bui-input__group bui-text-input__group bui-text-inpu__group--prepend">
                                                   <div class="bui-input__addon">
                                                      <svg focusable="false" width="16" aria-hidden="true"
                                                         role="presentation" fill="currentColor" height="16"
                                                         viewBox="0 0 128 128" slot="icon"
                                                         class="av-monthly__datepicker-icon bk-icon -streamline-calendar_check_in"
                                                         style="user-select: auto;">
                                                                        <path
                                                            d="M116 16H96V4a4 4 0 0 0-8 0v12H40V4a4 4 0 0 0-8 0v12H12C5.373 16 0 21.373 0 28v88c0 6.627 5.373 12 12 12h104c6.627 0 12-5.373 12-12V28c0-6.627-5.373-12-12-12zm4 100a4 4 0 0 1-4 4H12a4 4 0 0 1-4-4V28a4 4 0 0 1 4-4h20v8a4 4 0 0 0 8 0v-8h48v8a4 4 0 0 0 8 0v-8h20a4 4 0 0 1 4 4zm-20-68H52a4 4 0 0 0-4 4v20H28a4 4 0 0 0-4 4v24a4 4 0 0 0 4 4h72a4 4 0 0 0 4-4V52a4 4 0 0 0-4-4zm-4 24H80V56h16zm-64 8h16v16H32zm24 0h16v16H56zm24 16V80h16v16z"
                                                            style="user-select: auto;"></path>
                                                                    </svg>
                                                   </div>
                                                   <input class="form-control bui-form__control" id="openDate"
                                                      placeholder="2022년 3월 9일" name="open_date_start">
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="bui-spacer--large"></div>
                                       <div class="av-monthly-expandable__wrap">
                                          <div class="ext-datepicker__wrap">
                                             <div class="ext-datepicker__text-input bui-form__group">
                                                <label><span>종료일</span></label>
                                                <div
                                                   class="input-group input-daterange bui-input__group bui-text-input__group bui-text-input__group--prepend">
                                                   <div class="bui-input__addon">
                                                      <svg viewBox="0 0 128 128" fill="currentColor"
                                                         height="16" role="presentation" aria-hidden="true"
                                                         width="16" focusable="false" slot="icon"
                                                         class="av-monthly__datepicker-icon bk-icon -streamline-calendar_check_out"
                                                         style="user-select: auto;">
                                                                        <path
                                                            d="M116 16H96V4a4 4 0 0 0-8 0v12H40V4a4 4 0 0 0-8 0v12H12C5.373 16 0 21.373 0 28v88c0 6.627 5.373 12 12 12h104c6.627 0 12-5.373 12-12V28c0-6.627-5.373-12-12-12zm4 100a4 4 0 0 1-4 4H12a4 4 0 0 1-4-4V28a4 4 0 0 1 4-4h20v8a4 4 0 0 0 8 0v-8h48v8a4 4 0 0 0 8 0v-8h20a4 4 0 0 1 4 4zm-20-68H52a4 4 0 0 0-4 4v20H28a4 4 0 0 0-4 4v24a4 4 0 0 0 4 4h72a4 4 0 0 0 4-4V52a4 4 0 0 0-4-4zm-4 24H80V56h16zM72 56v16H56V56zM32 80h16v16H32zm24 0h16v16H56z"
                                                            style="user-select: auto;"></path>
                                                                    </svg>
                                                   </div>
                                                   <input class="form-control bui-form__control" id="closeDate"
                                                      placeholder="2022년 3월 1일" name="open_date_end">
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="av-monthly-container__block">
                                    <div data-tour-onboarding="open-close">
                                       <div class="bui-spacer--medium">
                                          <span>객실 Open/Close</span>
                                       </div>
                                       <div class="bui-spacer--large">
                                          <div class="bui-group bui-group--inline bui-group--large">
                                             <div class="bui-form__group">
                                                <label class="bui-radio"> <input type="radio"
                                                   class="bui-radio__input" name="open"> <span
                                                   class="bui-radio__label"> <span>예약 가능</span>
                                                </span>
                                                </label>
                                             </div>
                                             <div class="bui-form__group">
                                                <label class="bui-radio"> <input type="radio"
                                                   class="bui-radio__input" name="open"> <span
                                                   class="bui-radio__label"> <span>예약 불가</span>
                                                </span>
                                                </label>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="bui-spacer--medium">
                                       <div class="bui-spacer--medium">
                                          <hr class="bui-divider">
                                       </div>
                                       <div>
                                          <div class="bui-spacer--medium">
                                             <div class="bui-spacer--medium bui-form__group">
                                                <label><span>객실 선택</span></label>
                                                <div class="bui-input-select">
                                                   <select name="room" id="selectOption" class="bui-form__control">
                                                   <c:forEach var="roomList" items="${roomList}">
                                                      <option id="typeOption" value="${roomList.type}">${roomList.type}</option>
                                                   </c:forEach>
                                                   </select>
                                                   <svg xmlns="http://www.w3.org/2000/svg"
                                                      viewBox="0 0 24 24" class="bui-input-select__icon"
                                                      style="user-select: auto;">
                                                                        <path
                                                         d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z"
                                                         style="user-select: auto;"></path>
                                                                    </svg>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                       <div>
                                          <div class="bui-spacer--medium">
                                             <div class="bui-spacer--medium bui-form__group">
                                                <label><span>판매 수량 선택<c:out value="${result.available}"/></span></label>
                                                <div class="bui-input-select">
                                                   <select id="available" name="available" class="bui-form__control">
                                                      <option selected="selected">선택 불가</option>
<%--                                                       <c:set var="room_available" value="${result.available }"/> --%>
                                                      
<%--                                                        <c:forEach begin="1" end="${room_available}" varStatus="status"> --%>
<%--                                                       	<option value="${status.count}">잔여 옵션 ${status.count} 개</option> --%>
<%--                                                       </c:forEach> --%>
													</select>
                                                   <svg xmlns="http://www.w3.org/2000/svg"
                                                      viewBox="0 0 24 24" class="bui-input-select__icon"
                                                      style="user-select: auto;">
                                                                        <path
                                                         d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z"
                                                         style="user-select: auto;"></path>
                                                                    </svg>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="bui-spacer--medium">
                                          <hr class="bui-divider">
                                       </div>
                                    </div>
                                    <div>
                                       <span>요금</span>
                                       <div class="bui-spacer--largest">
                                          <div class="bui-spacer--small bui-f-color-grayscale">Standard
                                             Rate</div>
                                          <div
                                             class="bui-spacer--small bui-group bui-group bui-group--inline bui-group--large">
                                             <div class="bui-form__group">
                                                <label class="bui-radio"> <input type="radio"
                                                   class="bui-radio__input" name="standard"> <span
                                                   class="bui-radio__label"> <span>예약 가능</span>
                                                </span>
                                                </label>
                                             </div>
                                             <div class="bui-form__group">
                                                <label class="bui-radio"> <input type="radio"
                                                   class="bui-radio__input" name="standard"> <span
                                                   class="bui-radio__label"> <span>예약 불가</span>
                                                </span>
                                                </label>
                                             </div>
                                          </div>
                                          <div>
                                             <div class="bui-form__group">
                                                <div
                                                   class="bui-input__group bui-text-input__group bui-text-input__group--prepend">
                                                   <div class="bui-input__addon">KRW</div>
                                                   <input type="text" value="0" id="standardPrice"
                                                      name="standard_price"
                                                      class="bui-form__control av-monthly__segmented--middle">
                                                   <div
                                                      class="bui-input__addon av-monthly__right-bui-addon">
                                                      <button type="button"
                                                         class="bui-button bui-button--secondary">
                                                         <span class="bui-button__icon"> <svg
                                                               width="16" height="16" fill="currentColor"
                                                               viewBox="0 0 24 24" role="presentation"
                                                               aria-hidden="true" focusable="false"
                                                               class="bk-icon -streamline-person_half"
                                                               style="user-select: auto;">
                                                                                    <path
                                                                  d="M16.5 6a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zM18 6A6 6 0 1 0 6 6a6 6 0 0 0 12 0zM3 23.25a9 9 0 1 1 18 0 .75.75 0 0 0 1.5 0c0-5.799-4.701-10.5-10.5-10.5S1.5 17.451 1.5 23.25a.75.75 0 0 0 1.5 0z"
                                                                  style="user-select: auto;">
                                                                                    </path>
                                                                                </svg>
                                                         </span> <span class="bui-button__text">4</span>
                                                      </button>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <a href="#" class="bui-link bui-link-primary"><span>제한사항</span></a>
                                       </div>
                                       <div class="bui-spacer--largest">
                                          <div class="bui-spacer--small bui-f-color-grayscale">
                                             Non-refundable Rate</div>
                                          <div
                                             class="bui-spacer--small bui-group bui-group--inline bui-group--large">
                                             <div class="bui-form__group">
                                                <label class="bui-radio"> <input type="radio"
                                                   class="bui-radio__input" name="non_refund"> <span
                                                   class="bui-radio__label"> <span>예약 가능</span>
                                                </span>
                                                </label>
                                             </div>
                                             <div class="bui-form__group">
                                                <label class="bui-radio"> <input type="radio"
                                                   class="bui-radio__input" name="non_refund"> <span
                                                   class="bui-radio__label"> <span>예약 불가</span>
                                                </span>
                                                </label>
                                             </div>
                                          </div>
                                          <div>
                                             <div class="bui-form__group">
                                                <div
                                                   class="bui-input__group bui-text-input__group bui-text-input__group--prepend">
                                                   <div class="bui-input__addon">KRW</div>
                                                   <input type="text" name="non_refundable_price" id="nonRefundablePrice"
                                                      class="bui-form__control av-monthly__segmented--middle">
                                                   <div
                                                      class="bui-input__addon av-monthly__right-bui-addon">
                                                      <button type="button"
                                                         class="bui-button bui-button--secondary">
                                                         <span class="bui-button__icon"> <svg
                                                               width="16" height="16" fill="currentColor"
                                                               viewBox="0 0 24 24" role="presentation"
                                                               aria-hidden="true" focusable="false"
                                                               class="bk-icon -streamline-person_half"
                                                               style="user-select: auto;">
                                                                                    <path
                                                                  d="M16.5 6a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zM18 6A6 6 0 1 0 6 6a6 6 0 0 0 12 0zM3 23.25a9 9 0 1 1 18 0 .75.75 0 0 0 1.5 0c0-5.799-4.701-10.5-10.5-10.5S1.5 17.451 1.5 23.25a.75.75 0 0 0 1.5 0z"
                                                                  style="user-select: auto;">
                                                                                    </path>
                                                                                </svg>
                                                         </span> <span class="bui-button__text">4</span>
                                                      </button>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <a href="#" class="bui-link bui-link--primary"><span>제한사항</span></a>
                                       </div>
                                    </div>
                                    <div>
                                       <div class="bui-f-font-caption bui-spacer--medium">
                                          <div class="bui-spacer--medium">
                                             <hr class="bui-divider bui-divider--light">
                                          </div>
                                          <span>다음 날짜에 변경사항이 적용됩니다: 2022년 2월 6일</span>
                                       </div>
                                       <div
                                          class="av-monthly__form-btn-wrap av-monthly-flex-inline__wrap">
                                          <button type="button" id="insertAvailable"
                                             class="av-monthly-flex-inline__item--equal bui-button button_primary bui-button--wide">
                                             <span class="bui-button__text"><span>등록</span></span>
                                          </button>
                                          <button type="button" id="partnerUpdate"
                                             class="av-monthly-flex-inline__item--equal bui-button button_primary bui-button--wide">
                                             <span class="bui-button__text"><span>수정</span></span>
                                          </button>
                                       </div>
                                    </div>
                              </form>
                           </div>
                           <div class="av-monthly-container__block">
                              <div class="bui-spacer--small">
                                 <span class="bui-f-font-strong">최종 업데이트</span>
                              </div>
                              <div class="bui-f-font-caption">
                                 <div class="bui-spacer--small"></div>
                                 <div class="bui-f-color-complement">
                                    <svg width="16" height="16" aria-hidden="true"
                                       fill="currentColor" focusable="false" role="presentation"
                                       viewBox="0 0 24 24" class="bk-icon -streamline-warning"
                                       style="user-select: auto;">
                                                        <path
                                          d="M12 15.75A1.125 1.125 0 1 0 12 18a1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm.75-2.25V5.25a.75.75 0 0 0-1.5 0v8.25a.75.75 0 0 0 1.5 0zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"
                                          style="user-select: auto;"></path>
                                                    </svg>
                                    <span>캘린더 업데이트가 필요합니다.</span>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </main>
         </div>
         <input type="hidden" id="scheduleArr">
         <div id="hiddenSpace"></div>
        <script>
                    //calendar에서 선택된 날짜 받아오기
        </script>
        <script>
                   //예약가능, 예약불가 버튼 동시 선택 제어하기
                   $("input:radio[name='open']:radio[value='yes']").prop('checked', true);
                   $("input:radio[name='open']:radio[value='no']").prop('checked', false);
                   $("input:radio[name='standard']:radio[value='yes']").prop('checked', true);
                   $("input:radio[name='standard']:radio[value='no']").prop('checked', false);
                   $("input:radio[name='non_refund']:radio[value='yes']").prop('checked', true);
                   $("input:radio[name='non_refund']:radio[value='no']").prop('checked', false);
                   
                   //(미완성) 예약 불가 선택시 textfield disabled 적용
//                    if("input:radio[name='standard']:radio[value='no']").prop('checked', false) {
//                       $('input[name="refundable"]').setAttribute('disabled', disabled);
//                    }
                                 
       </script>
         <jsp:include page="/WEB-INF/partner/footer.jsp" />
      </div>
   </div>
</body>

</html>