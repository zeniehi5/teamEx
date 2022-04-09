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
    <title>customer</title>
    <link href="${contextPath}/resources/user/css/customer.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/d2826a4f92.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body style="overflow-y: scroll;">
    
	<jsp:include page="/WEB-INF/user/member/header.jsp"/>
	<div class="main">
        <div class="main-top">
            <div class="top-inner">
                <div>고객 센터</div>
            </div>
        </div>
        <div>
<!--             <div class="container"> 
                <div class="c1-top">
                    <div>
                        <div class="c1-content">
                            <div class="fde444d7ef">어떤 예약 건에 도움이 필요하신가요?</div>
                        </div>
                    </div>
                </div>
                <div class="c1-bottom">
                    <ul>
                        <li>
                            <div class="c1-detail">
                                <div class="detail-img" style="background-image: url(/images/help1.jpg);"></div>
                                <div class="detail-text">
                                    <div>
                                        <div class="ac6bdec376">Best Western Hotel Gunsan</div>
                                    </div>
                                    <div>
                                        <div>
                                            <span class="_53c30218a">군산</span>
                                        </div>
                                        <span class="_4abc4c3d5">1월 30일 일~2월 1일 화</span>
                                    </div>
                                </div>
                                <div class="_c6f4cbb59"><div class="e78ec93a5e"><span class="_3ae5d40db _4de7b1cb8" aria-hidden="true"><svg viewBox="0 0 128 128" width="1em" height="1em"><path d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z"></path></svg></span></div></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>-->
            <div class="container">
                <div class="c1-top">
                    <div>
                        <div class="c1-content">
                            <div class="fde444d7ef">자주 묻는 질문</div>
                        </div>
                    </div>
                </div>
                <div class="container-inner">
                    <div class="imhungry">
                    	<c:set var="category" value="Booqueen"/>
                    	<c:forEach var="faqList" items="${faqList}" varStatus="status">
                        	<c:if test="${faqList.category != category}">
                        	<c:set var="category_num" value="${category_num+1}"/>
                        	<div class="_eb63e28ca" id="category${category_num}" role="button">
                            <div class="be3184abbc">
                                <div class="d371ba543d">
                                    <div class="_c175d0d9f">
                                        <div class="_dc55ee131">${faqList.category}</div>
                                    </div>
                                    <span class="_3ae5d40db _4de7b1cb8" id="down" aria-hidden="true"><svg viewBox="0 0 128 128" width="1em" height="1em"><path d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z"></path></svg></span>
                                </div>
                            </div>
                            </div>
                            </c:if>
                        	<c:set var="category" value="${faqList.category}"/>
                            <div class="know-detail know-detail-text${category_num}" id="know-detail-text${category_num}">
                               <h4>${faqList.title}</h4>
                               <div>${faqList.contents}</div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="container-inner"> 
                    <div class="sfefasdf" role="button">
                        <div class="be3184abbc">
                            <div class="d371ba543d">
                                <div class="_c175d0d9f">
                                    <div class="_dc55ee131">예약 건을 찾을 수 없습니다.</div>
                                </div>
                                <span class="_3ae5d40db _4de7b1cb8" aria-hidden="true"><svg viewBox="0 0 128 128" width="1em" height="1em"><path d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z"></path></svg></span>
                            </div>
                        </div>
                    </div>
                    <div class="know-detail" id="not-found">
                        <div class="map-hide-button">
                            <i class="bi bi-chevron-left"></i>
                            <i class="bi bi-chevron-right map-show"></i>
                         </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

 <!--    <hr class="customer-hr">

    <div class="footer"> 
        <div class="footer-inner">
            <div class="inner-box">
                <div class="inner-inner">
                    <ul>
                        <li>
                            <a href="${contextPath}/member/loginForm.do">로그인</a>
                        </li>
                        <li>
                            <c:choose>
							<c:when test="${isLogOn == true  && member!= null}">
			            		<a href="${contextPath}/bookingPage.do">내 예약 관리</a>
			            	</c:when>
			            	<c:otherwise>
		                    	<a onclick="login_check_btn()">내 예약 관리</a>
			            	</c:otherwise>
			            	</c:choose>
                        </li>
                        <li>
                            <a href="${contextPath}/terms.do">이용약관</a>
                        </li>
                        <li>
                            <a href="${contextPath}/login.jsp">Booqueen.com 비즈니스 계정</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>-->

    <script>
        $(document).ready(function(){
        	
        	$("#category1").click(function() {
        		$(".know-detail-text1").slideToggle();
        	})
        	$("#category2").click(function() {
        		$(".know-detail-text2").slideToggle();
        	})
        	$("#category3").click(function() {
        		$(".know-detail-text3").slideToggle();
        	})
        	$("#category4").click(function() {
        		$(".know-detail-text4").slideToggle();
        	})
        	$("#category5").click(function() {
        		$(".know-detail-text5").slideToggle();
        	})
        	$("#category6").click(function() {
        		$(".know-detail-text6").slideToggle();
        	})
        	$("#category7").click(function() {
        		$(".know-detail-text7").slideToggle();
        	})
        	
            $(".container-inner").click(function(){
                $("#not-found").slideToggle();
            }) 
            $(".map-hide-button").click(function(){
                $(".map-hide-button i").toggle();
            });
        	
        });
    </script>

</body>
</html>