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
<body>
    
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
                    <div>
                        <div class="_eb63e28ca corona19" role="button">
                            <div class="be3184abbc">
                                <div class="d371ba543d">
                                    <div class="_c175d0d9f">
                                        <div class="_dc55ee131">코로나19(COVID-19) 관련 지원</div>
                                    </div>
                                    <span class="_3ae5d40db _4de7b1cb8" id="down" aria-hidden="true"><svg viewBox="0 0 128 128" width="1em" height="1em"><path d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z"></path></svg></span>
                                </div>
                            </div>
                            <div class="know-detail" id="know-detail-text1">
                               <h4>예약과 관련된 최신 정보는 어디서 확인할 수 있나요?</h4>
                               <div>상황이 시시각각 변하고 있는 만큼, 고객 센터 페이지에서 예약 건을 선택하여 관련 정보를 확인하시기 바랍니다. 현재 상황으로 인해 저희 쪽으로 주신 문의에 대한 답변이 평소보다 지연될 수 있습니다. 고객님의 너그러운 양해 부탁드립니다.</div>
                            </div>
                        </div>
                        <div class="_eb63e28ca cancel" role="button">
                            <div class="be3184abbc">
                                <div class="d371ba543d">
                                    <div class="_c175d0d9f">
                                        <div class="_dc55ee131">취소</div>
                                    </div>
                                    <span class="_3ae5d40db _4de7b1cb8" aria-hidden="true"><svg viewBox="0 0 128 128" width="1em" height="1em"><path d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z"></path></svg></span>
                                </div>
                            </div>
                            <div class="know-detail" id="know-detail-text2">
                                <h4>예약은 취소가 가능한가요?</h4>
                                <div>가능합니다! 취소 수수료는 숙소에서 지정하며 취소 정책에 기재되어 있습니다. 숙소 측에 추가 요금을 지불해야 할 수도 있습니다.</div>
                                <h4>숙소 측 취소 정책은 어디서 확인할 수 있나요?</h4>
                                <div>예약 확인서에 기재되어있습니다.</div>
                            </div>
                        </div>
                        <div class="_eb63e28ca detail-info" role="button">
                            <div class="be3184abbc">
                                <div class="d371ba543d">
                                    <div class="_c175d0d9f">
                                        <div class="_dc55ee131">예약 상세 정보</div>
                                    </div>
                                    <span class="_3ae5d40db _4de7b1cb8" aria-hidden="true"><svg viewBox="0 0 128 128" width="1em" height="1em"><path d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z"></path></svg></span>
                                </div>
                            </div>
                            <div class="know-detail" id="know-detail-text3">
                                <h4>아동용 엑스트라 베드 또는 유아용 침대를 제공받을 수 있나요?</h4>
                                <div>이는 숙소 정책에 따라 다릅니다. 엑스트라 베드 또는 유아용 침대 등 아동과 관련한 추가 비용은 예약 요금에 포함되지 않습니다. 자세한 내용은 숙소 측에 직접 문의해주시기 바랍니다.</div>
                                <h4>아동도 1인 요금을 전부 지불해야 하나요?</h4>
                                <div>아동에 해당되는 추가 비용은 예약 요금에 포함되어 있지 않습니다. 아동 요금 지불과 관련한 사항은 숙소 측에 직접 문의해주시기 바랍니다.</div>
                                <h4>정해진 체크인 시간 외에 도착할 것 같습니다. 체크인이 가능할까요?</h4>
                                <div>이는 숙소 재량에 맡겨진 것으로 반드시 보장되지는 않습니다. '이른 또는 늦은 체크인/체크아웃 요청하기', '숙소에 연락하기' 기능을 활용해주시기 바랍니다.</div>
                            </div>
                        </div>
                        <div class="_eb63e28ca comunication" role="button">
                            <div class="be3184abbc">
                                <div class="d371ba543d">
                                    <div class="_c175d0d9f">
                                        <div class="_dc55ee131">커뮤니케이션</div>
                                    </div>
                                    <span class="_3ae5d40db _4de7b1cb8" aria-hidden="true"><svg viewBox="0 0 128 128" width="1em" height="1em"><path d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z"></path></svg></span>
                                </div>
                            </div>
                            <div class="know-detail" id="know-detail-text4">
                                <h4>왜 숙박 업체의 이메일 주소가 @property.booqueen.com으로 끝나나요?</h4>
                                <div>
                                    <p>Booqueen.com은 예약별 익명의 별칭 이메일 주소를 귀사와 투숙객에게 제공합니다. 별칭 이메일 주소로 전송되는 모든 메시지(링크, 이미지 및 15 MB 이하 첨부 파일 포함)는 숙박 시설 메일로 전달됩니다.</p>
                                    <p>
                                        보안 방침상 Booqueen.com은 적의적인 내용을 자동 감지하는 시스템을 갖추고 있습니다. 스팸 및 zip, .rar, .exe. 와 같은 일정 파일 형태도 감지 대상에 포함됩니다.
                                        본 메시지는 숙소 측에서 작성하여 Booqueen.com을 통하여 전송됩니다. Booqueen.com은 메시지 내용에 대한 책임이 없으며 만약 내용이 수상하고 부적절하거나 스팸이 의심되는 경우, 이메일 오른쪽 하단에 위치한 링크를 클릭하여 신고하여 주시기 바랍니다.
                                    </p>
                                    <p>
                                        모든 연락 내용은 Booqueen.com에 의해 저장됩니다. Booqueen.com은 귀사 또는 투숙객의 요청이나 보안 또는 사기 적발 및 방지를 위한 법무 집행 시에 연락 내용을 열람할 수 있습니다.
                                        Booqueen.com은 서비스 향상을 위해 연 락 내용을 분석할 수 있습니다. Booqueen.com이 연락 내용을 저장 및 확인하는 것을 원치 않으실 경우, 별칭 이메일을 포함한 Booking.com에서 제공되는 연락 기능을 사용하지 않으시는 것을 권장합니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="_eb63e28ca fare" role="button">
                            <div class="be3184abbc">
                                <div class="d371ba543d">
                                    <div class="_c175d0d9f">
                                        <div class="_dc55ee131">요금</div>
                                    </div>
                                    <span class="_3ae5d40db _4de7b1cb8" aria-hidden="true"><svg viewBox="0 0 128 128" width="1em" height="1em"><path d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z"></path></svg></span>
                                </div>
                            </div>
                            <div class="know-detail" id="know-detail-text5">
                                <h4>가격에 조식이 포함되어 있나요?</h4>
                                <div>객실과 숙박 옵션마다 각기 다른 조식 정책이 적용됩니다. 예약 시 숙소 페이지에서 각 숙박 옵션의 조식 포함 여부를 확인하실 수 있습니다. 원하는 옵션에 조식이 포함되지 않은 경우, 숙소에서 이용 가능한 시설 목록을 통해 조식 제공 여부를 확인하시면 됩니다. 예약 후에는 예약 확정 이메일, 또는 고객님의 회원 계정 내 예약 정보에서 이를 확인하실 수 있습니다.</div>
                                <h4>아동에게도 성인과 동일한 요금이 부과되나요?</h4>
                                <div>숙소의 아동 관련 정책은 예약 시 숙소 페이지 '하우스 룰'에서 확인이 가능합니다.
                                    어린이에게 추가 비용이 부과되는 경우, 해당 비용은 예약 요금에 포함되어 있지 않습니다.
                                    예약 과정에서 '별도 요청'란을 통해 엑스트라 베드/유아용 침대를 요청하실 수 있습니다.
                                    예약을 이미 완료한 경우 예약 확정 이메일에 있는 링크를 통해 엑스트라 베드/유아용 침대를 요청하실 수 있습니다.
                                    엑스트라 베드/유아용 침대 이용 가능 여부를 확인하려면 도착 전 미리 숙소에 연락해주시기 바랍니다. 숙소 연락처는 예약 확정 이메일, 또는 고객님의 회원 계정 내 예약 정보에서 확인하실 수 있습니다.</div>
                                <h4>객실 가격에는 무엇이 포함되어 있나요?</h4>
                                <div>객실 또는 숙박 옵션 아래에 명시된 모든 시설의 이용료는 요금에 포함되어 있습니다. 예약 시 다른 옵션과의 비교를 통해 조식, 세금, 서비스 이용료 등의 기타 비용이 포함되어 있는지를 확인하실 수 있습니다. 예약 후에는 예약 확정 이메일, 또는 고객님의 회원 계정 내 예약 정보에서 요금에 포함된 사항을 확인하실 수 있습니다.</div>    
                            </div>
                        </div>
                        <div class="_eb63e28ca policy" role="button">
                            <div class="be3184abbc">
                                <div class="d371ba543d">
                                    <div class="_c175d0d9f">
                                        <div class="_dc55ee131">숙소 정책</div>
                                    </div>
                                    <span class="_3ae5d40db _4de7b1cb8" aria-hidden="true"><svg viewBox="0 0 128 128" width="1em" height="1em"><path d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z"></path></svg></span>
                                </div>
                            </div>
                            <div class="know-detail" id="know-detail-text6">
                                <h4>명시된 체크아웃 시간보다 더 늦은 시간에 체크아웃하고 싶어요. 어떻게 해야 하나요?</h4>
                                <div>늦은 체크아웃은 숙소에 도착해서 직접 요청하실 수 있습니다. 숙박 시기에 따라 가능 여부가 달라질 수 있는 점 참고해주시기 바랍니다.</div>
                                <h4>숙소의 체크인/체크아웃 시간은 언제인가요?</h4>
                                <div>체크인 및 체크아웃 시간은 숙소마다 다릅니다. 예약 시 숙소 페이지 '하우스 룰'에서 정보를 확인해주시기 바랍니다. 이미 예약을 완료한 경우 예약 확정 이메일, 또는 고객님의 회원 계정 로그인을 통해 체크인/체크아웃 시간을 확인하실 수 있습니다.</div>
                                <h4>숙소에서 반려동물을 허용하는지 어떻게 알 수 있을까요?</h4>
                                <div>반려동물 정책은 언제나 숙소 페이지의 '하우스 룰' 아래에 표시됩니다.</div>
                            </div>
                        </div>
                        <div class="_eb63e28ca security" id="dfasdfdf" role="button">
                            <div class="be3184abbc">
                                <div class="d371ba543d">
                                    <div class="_c175d0d9f">
                                        <div class="_dc55ee131">보안의식</div>
                                    </div>
                                    <span class="_3ae5d40db _4de7b1cb8" aria-hidden="true"><svg viewBox="0 0 128 128" width="1em" height="1em"><path d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z"></path></svg></span>
                                </div>
                            </div>
                            <div class="know-detail" id="know-detail-text7">
                                <h4>인터넷 사기를 당한 것 같습니다. 어떻게 해야 하나요?</h4>
                                <div>Booqueen.com과 관련한 온라인 사기 범죄에 노출된 것으로 생각될 경우 최대한 빨리 저희에게 알려주시기 바랍니다. booqueen.com/help, 또는 앱 메인 메뉴의 고객 지원을 통해 24시간 도움을 받으실 수 있습니다.</div>
                            </div>
                        </div>
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
            $(".corona19").click(function(){
                $("#know-detail-text1").slideToggle();
            })
            $(".cancel").click(function(){
                $("#know-detail-text2").slideToggle();
            })
            $(".detail-info").click(function(){
                $("#know-detail-text3").slideToggle();
            })
            $(".comunication").click(function(){
                $("#know-detail-text4").slideToggle();
            })
            $(".fare").click(function(){
                $("#know-detail-text5").slideToggle();
            })
            $(".policy").click(function(){
                $("#know-detail-text6").slideToggle();
            })
            $(".security").click(function(){
                $("#know-detail-text7").slideToggle();
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