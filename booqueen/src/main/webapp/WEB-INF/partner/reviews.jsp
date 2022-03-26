<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/reviews.css">
<title>${hotel.hotelname} · 고객 이용 후기</title>
</head>
<body>
	<jsp:include page="/WEB-INF/partner/header.jsp"/>
	<main class="main">
        <div class="bui-container bui-container--center">
            <div class="bui-page-header">
                <h1 class="bui-page-header__title">
                    <span>고객 이용 후기</span>
                </h1>
                <c:choose>
                	<c:when test = "${avg.scoreAvg eq null}">
                		<p class="bui-page-header__description">
                    		<span>아직 작성된 숙소 이용후기가 없습니다. 나중에 고객이 이용후기를 남기면 이 페이지에서 확인하실 수 있습니다.</span>
                    		<br>
                    		<span><a href="#">여기를 클릭</a>하여 당사 이용 후기 정책을 살펴보세요.</span>
                		</p>
                	</c:when>
                	<c:otherwise>
                		<p class="bui-page-header__description">
                    		<span>고객이 남긴 이용후기를 이 페이지에서 확인하실 수 있습니다.</span>
                    		<br>
                    		<span><a href="#">여기를 클릭</a>하여 당사 이용 후기 정책을 살펴보세요.</span>
                		</p>
                	</c:otherwise>
                </c:choose>
            </div>
            <c:choose>
            	<c:when test = "${avg.scoreAvg eq null}">
            		<div class="bui-empty-state">
                		<svg data-test-id="default-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="bui-empty-state__icon"
                    		style="user-select: auto;">
                    		<path
                        		d="M13.629 22.5H2.25a.75.75 0 0 1-.75-.75V2.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v11.379a.75.75 0 0 1-.22.53L14.16 22.28a.75.75 0 0 1-.53.219zm0 1.5a2.25 2.25 0 0 0 1.59-.659l8.122-8.122A2.25 2.25 0 0 0 24 13.63V2.25A2.25 2.25 0 0 0 21.75 0H2.25A2.25 2.25 0 0 0 0 2.25v19.5A2.25 2.25 0 0 0 2.25 24h11.379zM15 23.115V15.75a.75.75 0 0 1 .75-.75h7.365a.75.75 0 0 0 0-1.5H15.75a2.25 2.25 0 0 0-2.25 2.25v7.365a.75.75 0 0 0 1.5 0z"
                        		style="user-select: auto;"></path>
                		</svg>
                		<p class="bui-empty-state__text">
                    		<span>아직 고객 이용 후기가 없습니다.</span>
               			</p>
               		</div>
                </c:when>
     			<c:otherwise>
            		<div class="bui-state">
                <div class="hp-review_score_entry">
                    <div class="hp-review-score-cta-container-remote">
                        <div class="review-score-component">
                            <div class="review-data">${avg.scoreAvg}</div>
                            <div class="review-data__text">
                                <span class="review-data__description">좋음</span>
                                <span class="review-data__count">${fn:length(review)}개 이용후기</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="bui-f-font-heading hp_subscore_explanation_inline bui-spacer---large">항목별 점수</div>
                    <div class="itemized-score" style="user-select: auto;">
                        <div style="user-select: auto;">
                            <div class="itemized-score-detail" style="user-select: auto;"><span class="itemized-score-text"
                                    style="user-select: auto;">직원 친절도</span><span id="staff_span" style="user-select: auto;">${avg.staffAvg}</span>
                            </div>
                            <div class="c-score-bar" style="user-select: auto;"><span class="c-score-bar__value" id="staff"
                                    style="width: ${avg.staffAvg * 10}%; user-select: auto;">&nbsp;</span></div>
                        </div>
                        <div style="user-select: auto;">
                            <div class="itemized-score-detail" style="user-select: auto;"><span class="itemized-score-text"
                                    style="user-select: auto;">서비스</span><span id="service_span" style="user-select: auto;">${avg.serviceAvg}</span>
                            </div>
                            <div class="c-score-bar" style="user-select: auto;"><span class="c-score-bar__value" id="service"
                                    style="width: ${avg.serviceAvg * 10}%; user-select: auto;">&nbsp;</span></div>
                        </div>
                        <div style="user-select: auto;">
                            <div class="itemized-score-detail" style="user-select: auto;"><span class="itemized-score-text"
                                    style="user-select: auto;">청결도</span><span id="cleanness_span" style="user-select: auto;">${avg.cleannessAvg}</span>
                            </div>
                            <div class="c-score-bar" style="user-select: auto;"><span class="c-score-bar__value" id="cleanness"
                                    style="width: ${avg.cleannessAvg * 10}%; user-select: auto;">&nbsp;</span></div>
                        </div>
                        <div style="user-select: auto;">
                            <div class="itemized-score-detail" style="user-select: auto;"><span class="itemized-score-text"
                                    style="user-select: auto;">편안함</span><span id="comfort_span" style="user-select: auto;">${avg.comfortAvg}</span>
                            </div>
                            <div class="c-score-bar" style="user-select: auto;"><span class="c-score-bar__value" id="comfort"
                                    style="width: ${avg.comfortAvg * 10}%; user-select: auto;">&nbsp;</span></div>
                        </div>
                        <div style="user-select: auto;">
                            <div class="itemized-score-detail" style="user-select: auto;"><span class="itemized-score-text"
                                    style="user-select: auto;">가성비</span><span id="effectiveness_span" style="user-select: auto;">${avg.effectivenessAvg}</span>
                            </div>
                            <div class="c-score-bar" style="user-select: auto;"><span class="c-score-bar__value" id="effectiveness"
                                    style="width: ${avg.effectivenessAvg * 10}%; user-select: auto;">&nbsp;</span></div>
                        </div>
                        <div style="user-select: auto;">
                            <div class="itemized-score-detail" style="user-select: auto;"><span class="itemized-score-text"
                                    style="user-select: auto;">위치</span><span id="place_span" style="user-select: auto;">${avg.placeAvg}</span>
                            </div>
                            <div class="c-score-bar" style="user-select: auto;"><span class="c-score-bar__value" id="place"
                                    style="width: ${avg.placeAvg * 10}%; user-select: auto;">&nbsp;</span></div>
                        </div>
                    </div>
                </div>
        </div>
        <div class="review_list_score_container hp_subscore_explanation_contaienr">
                	<table class="review_table">
                		<thead class="table_head">
                		<tr class="table_row">
                        	<th class="table_cell">
                            	<button class="column_sort"><span>투숙객 이름</span></button>
                            </th>
                            <th class="table_cell">
                            	<button class="column_sort"><span>아이디</span></button>
                            </th>
                           	<th class="table_cell">
                                <button class="column_sort"><span>제목</span></button>
                            </th>
                            <th class="table_cell">
                            	<button class="column_sort"><span>강점</span></button>
                            </th>
                            <th class="table_cell">
                            	<button class="column_sort"><span>약점</span></button>
                            </th>
                            <th class="table_cell">
                            	<button class="column_sort"><span>staff</span></button>
                            </th>
                            <th class="table_cell">
                            	<button class="column_sort"><span>service</span></button>
                            </th>
                            <th class="table_cell">
                            	<button class="column_sort"><span>cleanness</span></button>
                            </th>
                            <th class="table_cell">
                            	<button class="column_sort"><span>comfort</span></button>
                            </th>
                            <th class="table_cell">
                            	<button class="column_sort"><span>effectiveness</span></button>
                            </th>
                            <th class="table_cell">
                            	<button class="column_sort"><span>place</span></button>
                            </th>
                            <th class="table_cell">
                            	<button class="column_sort"><span>총점</span></button>
                            </th>
                    	</tr>
                    	</thead>
                    	<tbody class="table_body">
                		<c:forEach var="ReviewVO" items="${review}">
                			<tr class="table_row">
                				<th class="table_cell_head">
                					<span>${ReviewVO.username}</span>
                				</th>
                				<td class="table_cell"><span>${ReviewVO.userid}</span></td>
                				<td class="table_cell"><span>${ReviewVO.title}</span></td>
                				<td class="table_cell"><span>${ReviewVO.strength}</span></td>
                				<td class="table_cell"><span>${ReviewVO.weakness}</span></td>
                				<td class="table_cell"><span>${ReviewVO.staff}</span></td>
                				<td class="table_cell"><span>${ReviewVO.service}</span></td>
                				<td class="table_cell"><span>${ReviewVO.cleanness}</span></td>
                				<td class="table_cell"><span>${ReviewVO.comfort}</span></td>
                				<td class="table_cell"><span>${ReviewVO.effectiveness}</span></td>
                				<td class="table_cell"><span>${ReviewVO.place}</span></td>
                				<td class="table_cell"><span>${ReviewVO.score}</span></td>
                			</tr>
            			</c:forEach>
            			</tbody>
            			<tfoot class="table_foot">
            			</tfoot>	
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
                           	<c:url var="before" value="/review.pdo">
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
                            <c:url var="after" value="review.pdo">
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
            		<div class="pagination_control"></div>	
            	</div>
            </c:otherwise>	
    	</c:choose>
    </main>
	<jsp:include page="/WEB-INF/partner/footer.jsp"/>
</body>
</html>