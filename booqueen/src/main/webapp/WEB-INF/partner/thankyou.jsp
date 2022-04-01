<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/partner/css/thankyou.css">
    <title>감사합니다.</title>
</head>
<body>
<form action="main.pdo" method="get">
    <div class="bui-u-text-left bui_font_body">
        <div>
            <div>
                <div class="partner-header">
                    <header class="header">
                        <nav class="header-nav">
                            <div class="header-nav-item-top">
                                <div>
                                    <a href="#">
                                        <img src="${contextPath}/resources/partner/images/logo.png" class="header_logo">
                                    </a>
                                </div>
                            </div>
                        </nav>
                    </header>
                </div>
                <div class="app">
                    <div class="access-container bui_font_body">
                        <div class="access-panel-container">
                            <div class="access-panel nx-access-panel">
                                <div class="transition-container">
                                    <div class="animate-height" style="height: auto; overflow: visible;">
                                        <div class="sliding-panel">
                                            <div class="transition bui-panel-body slide-enter-done">
                                                <div class="page-header">
                                                    <h1
                                                        class="bui_font_display_two bui_font_heading--bold bui-spacer--medium nw-step-header">
                                                        귀사 숙소의 계정 설정이 완료되었어요!</h1>
                                                    <div class="bui-spacer--largest">
                                                        <div>
                                                            <p class="nw-step-description">귀사 숙소를 저희 시스템에 등록하였습니다. 하단의 버튼을 클릭하시면 숙소 관리자 페이지로 바로 이동하실 수 있습니다.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="nw-account-disabled">
                                                    <a href="#">
                                                        <button type="submit" class="button">
                                                            <span class="button_text">내 관리자 페이지로 이동</span>
                                                        </button>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="account-access__footer">
                        <div class="u-text-center bui_font_caption portal_footer">
                            <div class="account_footer_terms footer-block">로그인하거나 회원으로 가입하시면 당사 <a href="#"
                                    class="bui_color_action nw-terms">이용약관</a> 및 <a href="#"
                                    class="bui_color_action nw-privacy">개인정보 보호정책</a>에 동의하시는 것으로 간주됩니다.</div>
                            <div class="access-footer-bottom bui_font_caption footer-block">
                                <div>All rights reserved.<br>Copyright (2006 - 2022) - booqueen.com</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>