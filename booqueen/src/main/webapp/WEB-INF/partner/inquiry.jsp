<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/inquiry.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<title>${hotel.hotelname}·숙소관련 문의</title>
</head>
<body>
<jsp:include page="/WEB-INF/partner/header.jsp"/>
	<main class="qna">
		<h1>숙소 관련 문의</h1>
			<div style="margin: 20px;">
				<span>숙소 관련 문의는 파트너님의 숙소 및 객실 페이지에 게재됩니다. 고객이 숙소나 객실에 관련된 질문을 할
				경우 이곳에서 답변을 작성하실 수 있습니다. 숙소에 관심이 있는 모든 사용자가 정보를 제공받을 수 있도록 하기 위해 답변은
				전체 공개로 설정됩니다. 향후 모든 사용자에게 도움이 될 수 있도록 정확하고 자세한 정보를 공유해주시기 바라며, 부적절한
				내용이나 개인 정보를 포함한 답변은 삼가주시기 바랍니다.</span>
			</div>
			<div class="table_wrapper">
				<table class="board_table">
    				<thead class="table_head">
        				<tr class="table_row">
            				<th class="table_cell">
                				<button class="column_sort"><span>아이디</span></button>
            				</th>
            				<th class="table_cell">
                				<button class="column_sort"><span>문의 내용</span></button>
            				</th>
            				<th class="table_cell">
                				<button class="column_sort"><span>등록일</span></button>
            				</th>
            				<th class="table_cell">
                				<button class="column_sort"><span>답변</span></button>
            				</th>
        				</tr>
    				</thead>
    			<tbody class="table_body">
        		<c:forEach var="InquiryVO" items="${inquiryList}">
        			<c:if test="${InquiryVO.partner ne true}">
            		<tr class="table_row">
                		<th class="table_cell_head"><span>${InquiryVO.userid}</span></th>
                		<td class="table_cell"><span>${InquiryVO.content}</span></td>
                		<td class="table_cell"><span>${InquiryVO.send_date}</span></td>
                		<c:if test="${InquiryVO.complete ne true}">
                		<td class="table_cell"><button class="btn_primary" id="btnAnswer" onclick="openModal('${InquiryVO.userid}', '${InquiryVO.groupno}', '${InquiryVO.content}');">답변하기</button></td>
            			</c:if>
            			<c:if test="${InquiryVO.complete eq true}">
            			<td class="table_cell"><button class="btn_disabled">답변완료</button></td>
            			</c:if>
            		</tr>
            		</c:if>
        		</c:forEach>
    </tbody>
</table>
</div>
<div class="table_pagination">
                            <div class="pagination_nav">
                                <ul class="pagination_list">
                                	<!-- 이전 -->
                                	<c:if test="${paging.currentPage eq 1}">
                                    <li class="pagination_item pagination_prev pagination_disabled">
                                        <a class="pagination_link">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20" height="20" class="pagination_icon" style="user-select: auto;">
                                                <path d="M14.55 18a.74.74 0 0 1-.53-.22l-5-5A1.08 1.08 0 0 1 8.7 12a1.1 1.1 0 0 1 .3-.78l5-5a.75.75 0 0 1 1.06 0 .74.74 0 0 1 0 1.06L10.36 12l4.72 4.72a.74.74 0 0 1 0 1.06.73.73 0 0 1-.53.22zm-4.47-5.72zm0-.57z" style="user-select: auto;"></path>
                                            </svg>
                                            <span class="pagination_direction">이전</span>
                                        </a>
                                    </li>
                                    </c:if>
                                    <c:if test="${paging.currentPage ne 1}">
                                    <c:url var="before" value="/reservation.pdo">
                                    	<c:param name="currentPage" value="${paging.currentPage -1}"/>
                                    </c:url>
                                    <li class="pagination_item pagination_prev pagination">
                                        <a href="${before}" class="pagination_link">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20" height="20" class="pagination_icon" style="user-select: auto;">
                                                <path d="M14.55 18a.74.74 0 0 1-.53-.22l-5-5A1.08 1.08 0 0 1 8.7 12a1.1 1.1 0 0 1 .3-.78l5-5a.75.75 0 0 1 1.06 0 .74.74 0 0 1 0 1.06L10.36 12l4.72 4.72a.74.74 0 0 1 0 1.06.73.73 0 0 1-.53.22zm-4.47-5.72zm0-.57z" style="user-select: auto;"></path>
                                            </svg>
                                            <span class="pagination_direction">이전</span>
                                        </a>
                                    </li>
                                    </c:if>
                                    <!-- 현재 페이지 -->
                                    <c:forEach var="page" begin="${paging.startPage}" end="${paging.endPage}">
                                    	<c:if test="${page eq paging.currentPage}">
                                    		<li class="pagination_current_page"><span>${page} 페이지</span></li>
                                    	</c:if>
                                    </c:forEach>
                                    <!-- 다음 -->
                                    <c:if test="${paging.currentPage eq paging.maxPage}">
                                    <li class="pagination_item pagination_next pagination_disabled">
                                        <a class="pagination_link">
                                            <span class="pagination_direction">다음</span>
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20" height="20" class="pagination_icon" style="user-select: auto;">
                                                <path d="M9.45 6c.2 0 .39.078.53.22l5 5c.208.206.323.487.32.78a1.1 1.1 0 0 1-.32.78l-5 5a.75.75 0 0 1-1.06 0 .74.74 0 0 1 0-1.06L13.64 12 8.92 7.28a.74.74 0 0 1 0-1.06.73.73 0 0 1 .53-.22zm4.47 5.72zm0 .57z" style="user-select: auto;"></path>
                                            </svg>    
                                        </a>
                                    </li>
                                    </c:if>
                                    <c:if test="${paging.currentPage ne paging.maxPage}">
                                    <c:url var="after" value="reservation.pdo">
                                    	<c:param name="currentPage" value="${paging.currentPage + 1}"/>
                                    </c:url>
                                    <li class="pagination_item pagination_next pagination">
                                        <a href="${after}" class="pagination_link">
                                            <span class="pagination_direction">다음</span>
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20" height="20" class="pagination_icon" style="user-select: auto;">
                                                <path d="M9.45 6c.2 0 .39.078.53.22l5 5c.208.206.323.487.32.78a1.1 1.1 0 0 1-.32.78l-5 5a.75.75 0 0 1-1.06 0 .74.74 0 0 1 0-1.06L13.64 12 8.92 7.28a.74.74 0 0 1 0-1.06.73.73 0 0 1 .53-.22zm4.47 5.72zm0 .57z" style="user-select: auto;"></path>
                                            </svg>    
                                        </a>
                                    </li>
                                    </c:if>
                                </ul>
                            </div>
                            </div>
		</main>
	<div class="bui-modal bui-modal-answer" id="modal">
   	<form action="${contextPath}/insertInquiryAnswer.pdo" method="post">
    <div class="bui-modal__wrapper">
  	        <div class="bui-modal__align">
                <aside class="bui-modal__content bui-f-depth-1">
                    <div class="bui-modal__body">
                        <div>
                            <h3 class="form-title">답변하기</h3>
                            <span>아이디&nbsp;</span><input type="text" id="userid" class="form-section-title" name="userid" readonly><br>   	
							<span>문의&nbsp;&nbsp;</span><input type="text" id="question" class="question" disabled>
							<textarea class="answer" name="content"></textarea><br>
							<span>답변 비공개 &nbsp;</span><input type="checkbox" id="closed" name="closed">
							<input type="hidden" id="groupno" name="groupno">
                        </div>
                    </div>
                    <footer class="bui-modal__footer">
                        <div class="bui-group bui-group--inline">
                            <button type="submit" class="btn_primary">
                                <span class="bui-button__text"><span>저장</span></span>
                            </button>
                            <button type="button" class="btn_secondary" onclick="closeModal();">
                                <span class="bui-button__text"><span>취소</span></span>
                            </button>
                        </div>
                    </footer>
                    <button type="button" class="bui-modal__close" onclick="closeModal();">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                            <path
                                d="M13 12l6.26-6.26a.73.73 0 0 0-1-1L12 11 5.74 4.71a.73.73 0 1 0-1 1L11 12l-6.29 6.26a.73.73 0 0 0 .52 1.24.73.73 0 0 0 .51-.21L12 13l6.26 6.26a.74.74 0 0 0 1 0 .74.74 0 0 0 0-1z">
                            </path>
                        </svg>
                    </button>
                </aside>
            </div>
            <div class="bui-modal__overlay"></div>
        </div>
    	</form>
    </div>
<script>
	function openModal(userid, groupno, content) {
		console.log(userid + groupno + content);
		var modal = document.getElementById('modal');
		modal.style.display = 'block';
	
		$('#userid').val(userid);
		$('#question').val(content);
		$('#groupno').val(groupno);
		
	}
	
	function closeModal() {
		var modal = document.getElementById('modal');
		modal.style.display = 'none';
	}    
</script>
	<jsp:include page="/WEB-INF/partner/footer.jsp" />
</body>
</html>