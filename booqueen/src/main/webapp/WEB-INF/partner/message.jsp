<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/message.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>${hotel.hotelname} · 예약 관련 메시지</title>
</head>
<body>
<div class="main-container">
        <div class="content">
            <div class="home">
            <jsp:include page="/WEB-INF/partner/header.jsp"/>
                <main class="container">
                    <div class="tab-top">
                        <div>
                            <ul class="tabs">
                                <li class="tab-link current" data-tab="tab-1">고객</li>
                                <li class="tab-link" data-tab="tab-2">고객 서비스팀</li>
                            </ul>
                            <hr id="hr">
                        </div>
                    </div>
                    <script>
                        $(document).ready(function () {

                            $('ul.tabs li').click(function () {
                                var tab_id = $(this).attr('data-tab');

                                $('ul.tabs li').removeClass('current');
                                $('.tab-content').removeClass('current');

                                $(this).addClass('current');
                                $("#" + tab_id).addClass('current');
                            })

                        })
                    </script>
                    <div class="middle">
                        <div class="tab-content current" id="tab-1">
                            <div class="middle-left">
                                <div>
                                    <h4>메시지</h5>
                                        <a href="#">
                                            <button type="button" class="input_icon">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-search" viewbox="0 0 16 16">
                                                    <path
                                                        d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                                </svg>
                                            </button>
                                        </a>
                                        <br>
                                        <input type="text" id="left-text" placeholder="이름 또는 예약번호로 검색해보세요">
                                </div>
                                <div>
                                    메시지 정렬 기준:<br><br>
                                    <select>
                                        <option>
                                            전송된 메시지
                                        </option>
                                        <option selected="selected">
                                            아직 답변하지 않은 메시지
                                        </option>
                                        <option>
                                            모든 메시지
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="middle-middle-1">
                                <div class="middle-top">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                                        class="bi bi-arrow-left-square" viewbox="0 0 16 16">
                                        <path fill-rule="evenodd"
                                            d="M15 2a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2zM0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm11.5 5.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z" />
                                    </svg>
                                    <span>(${name})</span>
                                </div>

                                <div class="message">
                                    <div class="spacer">
                                        <div class="date">1월 21일 (금) 09:14</div>
                                        <div class="user">
                                            <p>이건 또</p>
                                        </div>
                                    </div>
                                    <div class="spacer">
                                        <div class="date">1월 21일 (금) 10:28</div>
                                        <div class="partner">
                                            <p>어떻게 기능을 넣지?</p>
                                        </div>
                                    </div>
                                    <div class="spacer">
                                        <div class="date">1월 21일 (금) 12:19</div>
                                        <div class="user">
                                            <p>그러게
                                                <br>
                                                망했네?
                                            </p>
                                        </div>
                                    </div>
                                    <div class="spacer">
                                        <div class="date">1월 21일 (금) 12:45</div>
                                        <div class="partner">
                                            <p>이거 화면</p>
                                        </div>
                                    </div>
                                    <div class="spacer">
                                        <div class="date">1월 21일 (금) 21:16</div>
                                        <div class="user">
                                            <p>화가난다</p>
                                        </div>
                                    </div>
                                    <div class="spacer">
                                        <div class="date">1월 21일 (금) 21:22</div>
                                        <div class="user">
                                            <p>탈주각 나온다</p>
                                        </div>
                                    </div>
                                    <div class="spacer">
                                        <div class="date">1월 21일 (금) 22:14</div>
                                        <div class="partner">
                                            <p>이정도 썼으면 충분하겠지</p>
                                        </div>
                                    </div>
                                    <div class="spacer">
                                        <div class="date">1월 21일 (금) 22:15</div>
                                        <div class="user">
                                            <p>길게도 써봐야지 제발 한번에 끝났으면 좋겠다 제발 제발 제발 제발 fhjadislkfnklanfjdaioslkfjdlaksf</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="msg-input">
                                    <div>
                                        <textarea class="text" autocomplete="off" placeholder="메시지를 입력해주세요."></textarea>
                                    </div>
                                    <div class="send">
                                        <input type="button" id="button" value="전송">
                                    </div>
                                </div>
                            </div>
                            <div class="middle-right">
                                <div class="right-top">
                                    <div>
                                        <p>예약 취소됨</p>
                                    </div>
                                    <div class="detail">
                                        <div class="name">투숙객명:<br>
                                            (${name})
                                        </div>
                                        <div class="number">예약번호:<br>2299035596
                                        </div>
                                        <div class="check-in">체크인:<br>2022년 7월 15일(금)</div>
                                        <div class="check-out">체크아웃:<br>2022년 7월 16일(토)</div>
                                        <div class="price">총 요금:<br>
                                            \0
                                        </div>
                                        <div class="lang">사용 언어:
                                            <br>한국어
                                        </div>
                                        <div class="member">총 투숙객 수:<br>2</div>
                                        <div class="room">객실 0개:</div>
                                        <div class="arrival-time">예상 도착 시간
                                            <br>
                                            15:00 ~ 16:00
                                        </div>
                                    </div>
                                </div>
                                <div class="right-bottom">
                                    <span>Booqueen.com은 여기에 쓰인 모든 메시지를 받아볼 수 있으며 당사
                                        <a href="#">개인정보 보호정책 및 쿠키 정책</a>에 따라 처리하게 됩니다.</span>
                                </div>
                            </div>
                        </div>
                        <div class="tab-content" id="tab-2">
                            <div class="middle-left">
                                <div>
                                    <h4>메시지</h5>
                                        <a href="#">
                                            <button type="button" class="input_icon">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-search" viewbox="0 0 16 16">
                                                    <path
                                                        d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                                </svg>
                                            </button>
                                        </a>
                                        <br>
                                        <input type="text" id="left-text" placeholder="예약 번호로 검색">
                                </div>

                            </div>
                            <div class="middle-middle">
                                <img alt="" src="images/message.png">
                                <h2>메시지가 없습니다</h2>
                                고객 서비스팀과 예약에 관해 주고 받은 메시지 내용이 여기에 나타납니다<br>

                            </div>

                            <div class="middle-right">
                                <span>Booqueen.com은 여기에 쓰인 모든 메시지를 받아볼 수 있으며 당사
                                    <a href="#">개인정보 보호정책 및 쿠키 정책</a>에 따라 처리하게 됩니다.</span>
                            </div>
                        </div>
                    </div>
            </div>
            </main>
            <jsp:include page="/WEB-INF/partner/footer.jsp"/>
        </div>
    </div>
    </div>
</body>
</html>