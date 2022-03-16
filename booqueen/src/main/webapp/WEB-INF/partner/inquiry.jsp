<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${contextPath}/resources/partner/css/inquiry.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<title>${hotel.hotelname}·숙소관련 문의</title>
</head>
<body>
	<jsp:include page="/WEB-INF/partner/header.jsp" />
	<form action="/inquiry.pdo" method="GET">
		<main class="qna">
			<div>
				<h1>숙소 관련 문의</h1>
				<br> 숙소 관련 문의는 파트너님의 숙소 및 객실 페이지에 게재됩니다. 고객이 숙소나 객실에 관련된 질문을 할
				경우 이곳에서 답변을 작성하실 수 있습니다. 숙소에 관심이 있는 모든 사용자가 정보를 제공받을 수 있도록 하기 위해 답변은
				전체 공개로 설정됩니다. 향후 모든 사용자에게 도움이 될 수 있도록 정확하고 자세한 정보를 공유해주시기 바라며, 부적절한
				내용이나 개인 정보를 포함한 답변은 삼가주시기 바랍니다. <br> <br> <br> <br />
				<div class="msg">

					<div class="tab">
						<div class="tab-top">
							<div>
								<ul class="tabs">
									<li class="tab-link current" data-tab="tab-1">새질문</li>
									<li class="tab-link" data-tab="tab-2">답변함</li>

								</ul>
							</div>
							<div id="qnaset">
								<a href="#">문의관련설정</a>
							</div>
						</div>
						<hr id="hr">

						<div class="tab-content current" id="tab-1">

							<div class="msginside">
								<svg class="bk-icon -streamline-help" fill="#6B6B6B" height="72"
									width="72" viewbox="0 0 24 24" role="presentation"
									aria-hidden="true" focusable="false">
                                                <path
										d="M7.5 3.75a2.25 2.25 0 1 1-4.5 0 2.25 2.25 0 0 1 4.5 0zm1.5 0a3.75 3.75 0 1 0-7.5 0 3.75 3.75 0 0 0 7.5 0zm-.754 19.575l.75-7.5-.746.675h1.5a.75.75 0 0 0 .75-.75v-3a5.25 5.25 0 0 0-10.5 0v3c0 .414.336.75.75.75h1.5l-.746-.675.75 7.5A.75.75 0 0 0 3 24h4.5a.75.75 0 0 0 .746-.675zm-1.492-.15L7.5 22.5H3l.746.675-.75-7.5A.75.75 0 0 0 2.25 15H.75l.75.75v-3a3.75 3.75 0 1 1 7.5 0v3l.75-.75h-1.5a.75.75 0 0 0-.746.675l-.75 7.5zM22.5 6.75a5.25 5.25 0 1 1-10.5 0 5.25 5.25 0 0 1 10.5 0zm1.5 0a6.75 6.75 0 1 0-13.5 0 6.75 6.75 0 0 0 13.5 0zm-7.875-1.125A1.125 1.125 0 1 1 17.25 6.75a.75.75 0 0 0 0 1.5 2.625 2.625 0 1 0-2.625-2.625.75.75 0 0 0 1.5 0zm.595 4.655a.75.75 0 1 0 1.06-1.06.75.75 0 0 0-1.06 1.06zM17.25 9a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5z"></path>
                                            </svg>
								<br> <br>
								<div>
									<h2>답변하지 않은 메시지가 없습니다</h2>
									현재 답변하지 않은 메시지가 없습니다. 잠재 고객이 숙소 페이지에 질문을 남길 경우, 파트너님께서 답변을 하거나
									'건너뜀' 이라고 표시하기 전까지 해당 질문이 계속해서 여기에 나타납니다.
								</div>
								<br> <br> <input type="button" value="더 알아보기"
									id="moremsg"> <br>
							</div>
						</div>
						<div id="tab-2" class="tab-content">
							<h3>숙소에 대한 질문</h3>
							<div>
								<c:forEach items="${inquiry}" var="inquiry" varStatus="status">
									<c:choose>
										<c:when test="${!inquiry.partner}">
											<div class="question">
												<h4>Question:</h4>
												<p>"${inquiry.content}"</p>
											</div>
											<div class="receivetime_que">${inquiry.send_date}</div>
										</c:when>
									</c:choose>
								</c:forEach>

							</div>
							<div>

								<c:forEach items="${inquiry}" var="inquiry" varStatus="status">
									<c:choose>
										<c:when test="${inquiry.partner}">
											<div class="answer">
												<h4>답변:</h4>
												<p>"${inquiry.content}"</p>
											</div>
											<div class="receivetime_ans">${inquiry.send_date}</div>
										</c:when>
									</c:choose>
								</c:forEach>


							</div>
							<hr>
							<div class="question_bottom">
								<div>
									<a href="#"><input id="deletebtn" type="button"
										name="delete" value="답변 삭제"></a>
								</div>
								<div class="public_ans">
									<input type="checkbox" name="public_ans" id="ans">
								</div>
								<div class="checkbox_text">답변 공개</div>
							</div>
						</div>

					</div>

					<div>
						<div class="msgright">

							<div>
								<img class="bui-card__image" alt="Description for a11y"
									src="https://q-xx.bstatic.com/backend_static/common/icons/partner-thumbnails/insights/56f0122997ed2793742c3441d5baf820fa48e16c.svg">
							</div>
							<div id="tip">
								<br>
								<h3>팁:</h3>
								숙소에 관심이 있는 다른 고객들에게도 참고가 될 수 있도록 답변을 작성해보세요.<br> <br>
								숙소 페이지의 Q&A 내용은 비공개로 설정된 경우를 제외하고 모든 고객이 볼 수 있습니다. 질문자는 한 명이지만
								읽는 사람은 여러 명이라는 점을 염두에 두시고, 숙소 예약을 고려하는 모든 고객에게 참고가 될만한 답변을 작성해
								주시기 바랍니다.<br> <br> <a href="#">다음 팁 보기</a>
							</div>

						</div>
						<div class="introduce_qna">
							<div>
								<img class="bui-card__image" alt="Descroption for a11y"
									src="https://r-xx.bstatic.com/backend_static/common/icons/partner-thumbnails/message/f4b65617daa4aad1c0ae2f4af86967479d520e65.svg">
							</div>
							<div id="qna">
								<br>
								<h3>고객 Q&A 소개</h3>
								<br> 숙소 예약을 고려하는 고객들이 예약을 진행하기 전에 숙소에 관해 질문할 수 있습니다. 파트너님의
								답변은 모든 고객에게 공개되며, 고객들은 숙소 예약을 결정하는데 이 내용을 참고합니다. <br> <br>
								<a href="#">다음 팁 보기</a>

							</div>
						</div>
					</div>
					<script>
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
				</div>

			</div>

		</main>
	</form>
	<jsp:include page="/WEB-INF/partner/footer.jsp" />
</body>
</html>
