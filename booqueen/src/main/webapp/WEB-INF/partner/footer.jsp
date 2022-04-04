<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<footer class="footer">
                    <div class="footer_top_content">
                        <div class="footer_container_center">
                            <div class="footer_top_inner">
                                <div class="footer_top_first">
                                    <div class="footer_links">
                                        <a href="#" class="footer_link"><span>회사소개</span></a>
                                        <a href="#" class="footer_link"><span>개인정보 보호정책</span></a>
                                        <a href="#" class="footer_link"><span>자주 묻는 질문</span></a>
                                    </div>
                                </div>
                                <div class="footer_top_second">
                                    <div class="footer_cta">
                                        <div class="feedback_cta">
                                            <button class="footer_cta_button" onclick="openModal()">
                                                <span class="button_text">신규 객실 추가</span>
                                            </button>
                                        </div>
                                        <div class="feedback_cta">
                                            <button class="footer_cta_button">
                                                <span class="button_text">의견 보내기</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer_bottom_content">
                        <div class="footer_container_center">
                            <div class="footer_bottom_inner">
                                <div class="footer_bottom_first">
                                    <span>ⓒ Copyright <a href=#" class="footer_link">Booking.com</a> 2022</span>
                                </div>
                                <div class="footer_bottom_second">
                                    <div class="footer_language_select">
                                        <div class="language_form_group">
                                            <div class="input_select">
                                                <select class="form_control">
                                                    <option value="ko">한국어</option>
                                                </select>
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                                                    class="input_select_icon" style="user-select: auto;">
                                                    <path
                                                        d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z"
                                                        style="user-select: auto;"></path>
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>