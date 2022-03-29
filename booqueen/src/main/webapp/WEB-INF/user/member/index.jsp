<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/user/css/index-copy.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/d2826a4f92.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="${contextPath}/resources/user/javascript/index-copy.js"></script>
    
    <!-- autocomplete -->
    <link rel="stylesheet" href="${contextPath}/resources/user/css/autocomplete.css">
    <script type="text/javascript" src="${contextPath}/resources/user/javascript/autocomplete.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	
    <!-- datepicker -->
    <link rel="stylesheet" href="${contextPath}/resources/user/css/datepicker.css" />
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="${contextPath}/resources/user/javascript/daterangepicker.js"></script>
    <title>Index copy</title>
   
</head>
<body>
	<jsp:include page="/WEB-INF/user/member/header.jsp"/>

    <div class="next-trip">
        <div class="next-trip-content">
            <div class="next-trip-h1">
            	<c:choose>
				<c:when test="${isLogOn == true  && member!= null}">
            		<h1>${member.name } 님, 다음 여행은 어디로?</h1>
            	</c:when>
            	<c:otherwise>
            		<h1>다음에 머무를 숙소를 알아보세요!</h1>
            	</c:otherwise>
            	</c:choose>
            	<i class="far fa-paper-plane fa-3x"></i>
            </div>
            <span class="trip-span">전국 단독 특가를 찾아보세요!</span>
        </div>
    </div>

    <div class="form-container">
        <form class="main-form" action="${contextPath}/searchResult.do" method="get">
            <div class="form-inner">
                <div class="form-inner-frist">
                    <div>
                        <input type="text" placeholder="어디로 향하시나요?" name="keyword" value="" id="keywordInput">  
                    </div>
                </div>
                <div class="form-inner-second">
                    <div>
                        <form autocomplete="off">
                            <input type="text" value="" id="from" name="daterange">
                        </form>
                    </div>
                </div>
    
                <div class="form-inner-third">
                    <div>
                        <input type="number" placeholder="인원" class="number-of-member" value="">
                    </div>
                </div>
                <div class="form-inner-fourth">
                    <div>
                        <button type="submit" class="fourth-button"><span>검색</span></button>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <div class="hidden-form">
        <div class="people-form">
            <div class="form-first">
                <label>성인</label>
                <div>
                    <button class="people-form-button" data-quantity="minus" data-field="quantity1"><span>-</span></button>&nbsp;&nbsp;
                    <input type="number" name="quantity1" value="0" class="input-number-of-member"></input>&nbsp;&nbsp;
                    <button class="people-form-button" data-quantity="plus" data-field="quantity1"><span>+</span></button>
                </div>
            </div>
            <div class="form-first">
                <label>객실</label>
                <div>
                    <button class="people-form-button" data-quantity="minus" data-field="quantity2"><span>-</span></button>&nbsp;&nbsp;
                    <input type="number" name="quantity2" value="0" class="input-number-of-member"></input>&nbsp;&nbsp;
                    <button class="people-form-button" data-quantity="plus" data-field="quantity2"><span>+</span></button>
                </div>
            </div>
        </div>
    </div>

    <div class="add">
        <div><i class="bi bi-alarm"></i></div>
        <div>
            <span>코로나19(COVID-19)와 관련하여 최근 발표된 제한 조치 및 권고사항을 여행 전에 확인하세요.</span>
            <a id="know-detail">더 알아보기</a>
            <div id="know-detail-text">
                <h3>예약 조건</h3>
                <p>2020년 4월 6일 또는 그 후에 예약을 진행하실 경우, 코로나19(COVID-19) 확산 위험과 그에 따른 정부의 공식 조치를 충분히 염두에 두고 결정을 내리실 것을 권장합니다. 정책이 유연한 옵션을 예약하지 않았을 경우 환불이 불가능할 수 있습니다. 고객님의 취소 요청은 해당 예약의 정책과 의무적으로 준수되어야 하는 소비자법을 고려해 숙소에서 직접 처리합니다. 상황이 시시각각으로 변하는 만큼 가급적 무료 취소가 가능한 옵션을 예약하시기를 권장합니다. 이 경우 일정이 변경되더라도 무료 취소 기한이 만료되기 전까지는 위약금 없이 예약을 취소하실 수 있습니다.</p>
            </div>
        </div>
    </div>
	
	<c:if test="${recentSearchList != null && !empty recentSearchList}">
	    <div class="section">
        <h2>고객님의 최근 검색</h2>
        <div class="recent-div">
            <ul class="recent-ul">
            	<c:forEach var="recentSearchList" items="${recentSearchList}" varStatus="status">
                <li>
                    <a>
                        <div class="recent-ul-div">
                            <div><img class="recent-img" src="${recentSearchList.file_url}"></div>
                            <fmt:parseDate var="start_date" value="${recentSearchList.start_date}" pattern="yyyy-MM-dd" />
                            <fmt:parseDate var="end_date" value="${recentSearchList.end_date}" pattern="yyyy-MM-dd" />
                            <div><span>${recentSearchList.city}</span><span><fmt:formatDate value="${start_date}" pattern="M월 dd일"/> ~ <fmt:formatDate value="${end_date}" pattern="M월 dd일"/>, ${recentSearchList.people}명</span></div>
                        </div>
                    </a>
                </li>
                </c:forEach>
            </ul>
        </div>
    	</div>
    </c:if>
	
	<c:choose>
	<c:when test="${isLogOn == true  && member!= null}">
    <div class="section comming-trip">
        <h2>다가오는 여행</h2>
        <div class="recent-div comming-div">
            <ul class="recent-ul comming-ul">
                <li>
                    <h3>용인</h3>
                    <span class="coming-li-span">1월 28일~1월 29일</span>
                    <a>
                        <div class="recent-ul-div comming-ul-div">
                            <div><img class="recent-img" src="${contextPath}/resources/user/images/recent1.webp"></div>
                            <div><span>리스본</span><span>2월 27일~3월 1일, 2명</span></div>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    </c:when>
    </c:choose>

    <div class="promotion">
        <div><span class="promotion-i"><i class="fas fa-tag fa-lg"></i></span></div>
        <div>
            <span>전국 숙소 파격 할인 중 !&nbsp;</span>
            <a>추천 숙소를 알아보세요.</a>
        </div>
        <span class="x-button"><i class="bi bi-x-lg"></i></span>
    </div>

	<c:choose>
	<c:when test="${isLogOn == true  && member!= null}">
    <div class="review-request">
        <div id="myBanner2" class="bui-banner">
            <div class="bui-banner__image-container">
                <img class="bui-banner__image" src="https://cf.bstatic.com/xdata/images/hotel/max400/21676156.webp?k=0e4e8c6647f2027d6cf3d67590e24aa9fed67000e4769bc79a063e93701630c2&amp;o=">
            </div>
            <div class="bui-banner__content">
                <h4 class="bui-banner__title u-padding-left:0">
                    <b>베스트웨스턴 군산호텔</b>, 어떠셨나요?
                </h4>
                <p class="bui-banner__text">
                    후기 작성에 남은 시간 단 79일! 잊지 말고 작성해주세요
                </p>
                <a
                    class="bui-banner__button"
                    href="${contextPath}/review/reviewForm.do" target="_blank"
                    target="_blank">
                    <span class="bui-button__text">숙박 경험을 평가해주세요</span>
                </a>
            </div>
            <span class="x-button2"><i class="bi bi-x-lg"></i></span>
        </div>
    </div>
	</c:when>
	</c:choose>

    <div class="galleries">
        <div class="main-grid">
            <div class="main-grid-1">
                <div class="gallery-text-box">
                    <h1>부산</h1>
                    <span>658개 숙소</span>
                </div>
                <img src="${contextPath}/resources/user/images/null.png">
            </div>
            <div class="main-grid-2">
                <div class="gallery-text-box">
                    <h1>서울</h1>
                    <span>2,304 숙소</span>
                </div>
                <img src="${contextPath}/resources/user/images/null.png">
            </div>
            <div class="main-grid-3">
                <div class="gallery-text-box">
                    <h1>경주</h1>
                    <span>188개 숙소</span>
                </div>
                <img src="${contextPath}/resources/user/images/null.png">
            </div>
            <div class="main-grid-4">
                <div class="gallery-text-box">
                    <h1>제주</h1>
                    <span>536개 숙소</span>
                </div>
                <img src="${contextPath}/resources/user/images/null.png">
            </div>
            <div class="main-grid-5">
                <div class="gallery-text-box">
                    <h1>서귀포</h1>
                    <span>495개 숙소</span>
                </div>
                <img src="${contextPath}/resources/user/images/null.png">
            </div>
        </div>
    </div>

    <div class="section spot">
        <h2>대한민국 여행지</h2>
        <span>즐길 거리가 가득한 인기 여행지를 살펴보세요!</span>
        <!--
        <div class="korea-spot">
            <ul id="korea-spot-ul">
                <li>
                    <a class="korea-spot-a">
                        <div><img src="resources/images/spot1.webp"></div>
                        <div>
                            <span>제주</span>
                            <span>숙소 1,035개</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="korea-spot-a">
                        <div><img src="resources/images/spot2.webp"></div>
                        <div>
                            <span>서울</span>
                            <span>숙소 1,035개</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="korea-spot-a">
                        <div><img src="resources/images/spot3.webp"></div>
                        <div>
                            <span>제주</span>
                            <span>숙소 1,035개</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="korea-spot-a">
                        <div><img src="resources/images/spot4.webp"></div>
                        <div>
                            <span>부산</span>
                            <span>숙소 1,035개</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="korea-spot-a">
                        <div><img src="resources/images/spot5.webp"></div>
                        <div>
                            <span>강릉</span>
                            <span>숙소 1,035개</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="korea-spot-a">
                        <div><img src="resources/images/spot6.webp"></div>
                        <div>
                            <span>속초</span>
                            <span>숙소 1,035개</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="korea-spot-a">
                        <div><img src="resources/images/spot1.webp"></div>
                        <div>
                            <span>서귀포</span>
                            <span>숙소 1,035개</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="korea-spot-a">
                        <div><img src="resources/images/spot2.webp"></div>
                        <div>
                            <span>서울</span>
                            <span>숙소 1,035개</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="korea-spot-a">
                        <div><img src="resources/images/spot3.webp"></div>
                        <div>
                            <span>제주</span>
                            <span>숙소 1,035개</span>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        -->
    </div>

    <div class="new-spot">
        <ul class="slider">
            <li>
                <a class="a">
                    <div><img src="${contextPath}/resources/user/images/spot1.webp"></div>
                    <div>
                        <span>제주</span>
                        <div class="korea-span">숙소 1,035개</div>
                    </div>
                </a>
            </li>
            <li>
                <a class="a">
                    <div><img src="${contextPath}/resources/user/images/spot2.webp"></div>
                    <div>
                        <span>서울</span>
                        <div class="korea-span">숙소 735개</div>
                    </div>
                </a>
            </li>
            <li>
                <a class="a">
                    <div><img src="${contextPath}/resources/user/images/spot3.webp"></div>
                    <div>
                        <span>서귀포</span>
                        <div class="korea-span">숙소 561개</div>
                    </div>
                </a>
            </li>
            <li>
                <a class="a">
                    <div><img src="${contextPath}/resources/user/images/spot4.webp"></div>
                    <div>
                        <span>부산</span>
                        <div class="korea-span">숙소 1,856개</div>
                    </div>
                </a>
            </li>
            <li>
                <a class="a">
                    <div><img src="${contextPath}/resources/user/images/spot5.webp"></div>
                    <div>
                        <span>강릉</span>
                        <div class="korea-span">숙소 411개</div>
                    </div>
                </a>
            </li>
            <li>
                <a class="a">
                    <div><img src="${contextPath}/resources/user/images/spot6.webp"></div>
                    <div>
                        <span>양양</span>
                        <div class="korea-span">숙소 652개</div>
                    </div>
                </a>
            </li>
          </ul>
    </div>
    
    <div class="section">
        <div class="tab">
            <button class="tablinks" onclick="openCity(event, 'location')" id="defaultOpen">지역</button>
            <button class="tablinks" onclick="openCity(event, 'city')">도시</button>
            <button class="tablinks" onclick="openCity(event, 'place')">관광 명소</button>
        </div>
        
        <div id="location" class="tabcontent">
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
            <div class="content-box">
                <a>서울</a>
                <p>722개 숙소</p>
            </div>
        </div>
        
        <div id="city" class="tabcontent">
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
            <div class="content-box">
                <a>인천</a>
                <p>500개 숙소</p>
            </div>
        </div>
        
        <div id="place" class="tabcontent">
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
            <div class="content-box">
                <a>경기</a>
                <p>900개 숙소</p>
            </div>
        </div>
    </div>

	<div class="footer-top1">
        <p><button onclick="location.href='${contextPath}/login.jsp';">내 숙소 등록</button></p>
    </div>

    <div class="footer-top2">
        <div>
            <ul>
                <li>
                    <a>스마트폰 버전</a>
                </li>
                <li>
                    <a>내 예약 관리</a>
                </li>
                <li>
                    <a>고객 서비스팀 문의</a>
                </li>
                <li>
                    <a>제휴 협력사 등록</a>
                </li>
                <li>
                    <a>Boouen.com 비즈니스 계정</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="section">
        <div>
            <div class="footer-inner-box">
               <div class="ul-wrapper-box">
                    <ul>
                       <li><a>지역</a></li>
                       <li><a>도시</a></li>
                       <li><a>공항</a></li>
                       <li><a>호텔</a></li>
                       <li><a>관광 명소</a></li>
                   </ul>
               </div>
               <div class="ul-wrapper-box">
                    <ul>
                        <li><a>지역</a></li>
                        <li><a>도시</a></li>
                        <li><a>공항</a></li>
                        <li><a>호텔</a></li>
                        <li><a>관광 명소</a></li>
                    </ul>
                </div>
                <div class="ul-wrapper-box">
                    <ul>
                        <li><a>지역</a></li>
                        <li><a>도시</a></li>
                        <li><a>공항</a></li>
                        <li><a>호텔</a></li>
                        <li><a>관광 명소</a></li>
                    </ul>
                </div>
                <div class="ul-wrapper-box">
                    <ul>
                        <li><a>지역</a></li>
                        <li><a>도시</a></li>
                        <li><a>공항</a></li>
                        <li><a>호텔</a></li>
                        <li><a>관광 명소</a></li>
                    </ul>
                </div>
                <div class="ul-wrapper-box">
                    <ul>
                        <li><a>지역</a></li>
                        <li><a>도시</a></li>
                        <li><a>공항</a></li>
                        <li><a>호텔</a></li>
                        <li><a>관광 명소</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="section">&nbsp;</div>
    <script>
        document.getElementById("defaultOpen").click();
    </script>
    
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    
    <script>
        $('.slider').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            dots: true,
            variableWidth: true
        });
    </script>

    <script>
    var today = new Date();

    var year = today.getFullYear();
    var month = ('0' + (today.getMonth() + 1)).slice(-2);
    var day = ('0' + today.getDate()).slice(-2);

    var dateString = year + '/' + month  + '/' + day;
    
    var tomorrow = new Date(today.setDate(today.getDate() + 1));
    
    var year_2 = tomorrow.getFullYear();
    var month_2 = ('0' + (tomorrow.getMonth() + 1)).slice(-2);
    var day_2 = ('0' + tomorrow.getDate()).slice(-2);
    
    var dateString_2 = year_2 + '/' + month_2  + '/' + day_2;
    
        $(document).ready(function () {
            $(function () {
                $('input[name="daterange"]').daterangepicker({
                    "startDate": dateString,
                    "endDate": dateString_2,
                    opens: 'center',
                    locale: {
                        format: 'YYYY/MM/DD'
                    }
                });
            });
        });
    </script>
    
    <script>
    $(function() {
		var contextPath = '${contextPath}';
		$.ajax({
			type: 'get',
			url: contextPath + '/autocomplete.do',
			dataType: "JSON",
			success: function(data) {
				let city = $.map(data, function(item) {
					chosung ="";
					full = Hangul.disassemble(item).join("").replace(/ /gi, ""); // 코드를 통해 한글 초중종성으로 나눠 label에 추가
					Hangul.d(item, true).forEach(function(strItem, index) {
						if (strItem[0] != " ") { // 띄어쓰기 아니면
							chosung += strItem[0]; // 초성 추가
						}
					});
					return {
						label : chosung + "|" + (item).replace(/ /gi, "") + "|" + full, // 실제 검색어랑 비교 대상
						value : item,
						chosung : chosung,
						full: full
					}
				});
				
				$('#keywordInput').autocomplete({
					source : city,
					select : function(event, ui) {
						console.log(ui.item.label + " 선택 완료");
					},
					focus : function(event, ui) {
						return false; // 한글 에러 잡기 용도
					}
				}).autocomplete("instance")._renderItem = function(ul, item) {
					return $("<li>")
					.append("<div style='display: flex; align-items: center;'>" + "<span class='sb-autocomplete--photo'><svg fill='#6B6B6B' height='24' width='24' viewBox='0 0 24 24' class='bk-icon -streamline-geo_pin'><path d='M15 8.25a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm1.5 0a4.5 4.5 0 1 0-9 0 4.5 4.5 0 0 0 9 0zM12 1.5a6.75 6.75 0 0 1 6.75 6.75c0 2.537-3.537 9.406-6.75 14.25-3.214-4.844-6.75-11.713-6.75-14.25A6.75 6.75 0 0 1 12 1.5zM12 0a8.25 8.25 0 0 0-8.25 8.25c0 2.965 3.594 9.945 7 15.08a1.5 1.5 0 0 0 2.5 0c3.406-5.135 7-12.115 7-15.08A8.25 8.25 0 0 0 12 0z'></path></svg></span><span style='padding-left: 6px;'>" + item.value + "</span></div>")
					.appendTo(ul);
				};
			}
		});
		
		$('#keywordInput').on("keyup", function() {
			input = $('#keywordInput').val(); // 입력된 값 저장
			$('#keywordInput').autocomplete("search", Hangul.disassemble(input).join("").replace(/ /gi, "")); // 자음모음 분리 후 띄어쓰기 삭제
		})
	});
    </script>

</body>
</html>