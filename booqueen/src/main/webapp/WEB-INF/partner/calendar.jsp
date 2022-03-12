<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
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
    <title>${hotel.hotelname} · 캘린더</title>
</head>
<script>
    $(document).ready(function () {

        $('.input-daterange').datepicker({
            format: 'yyyy년 mm월 dd일',
            todayHighlight: true,
            startDate: '0d'
        });

    });
</script>
<body>
    <div class="main-container">
        <div class="content">
            <div class="home">
            	<jsp:include page="/WEB-INF/partner/header.jsp"/>  
                <main class="main">
                    <div class="bui-spacer">
                        <div class="av-cal-header av-cal-header--fixed-max-width">         
                            <div class="av-cal-header-row">
                                <div class="av-cal-header-row__section av-cal-header-row__section--primary">
                                    <div class="av-cal-header-row__element av-cal-header-row__element--flexible">
                                        <span class="bui-f-font-display_two"><span>캘린더</span></span>
                                    </div>
                                </div>
                                <div class="av-cal-header-row__section av-cal-header-row__section--secondary">
                                    <div class="av-cal-header-row__element av-cal-header-row__element--flexible">
                                        <div>
                                            <div class="bui-form__group">
                                                <label></label>
                                                <div class="bui-input-select">
                                                    <select class="bui-form__control">
                                                        <option value="MONTHLY">월별</option>
                                                        <option value="MATRIX">객실 옵션별</option>
                                                        <option value="YEARLY">연도별</option>
                                                    </select>
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                                                        class="bui-input-select__icon" style="user-select: auto;">
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
                    </div>
                    <div class="av-monthly">
                        <div class="av-monthly-layout">
                            <div class="calendarWrap">
                                        <table class="calendarHeader">
                                            <tr>
                                                <td class="calendarHeaderLeft"></td>

                                                <td class="calendarHeaderYearAndMonth"><select class="calendarSelect"
                                                        id="_calendarHeaderYear">
                                                        <c:forEach begin="2020" end="2023" step="1" var="y">
                                                            <option value="${y}">${y}</option>
                                                        </c:forEach>
                                                    </select>년 &nbsp;&nbsp;<select class="calendarSelect"
                                                        id="_calendarHeaderMonth">
                                                        <c:forEach begin="1" end="12" step="1" var="m">
                                                            <option value="${m }">${m }</option>
                                                        </c:forEach>
                                                    </select>월&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

                                                <td class="calendarHeaderRight"><a href="#none" title="이전 월"
                                                        id="_showNextYear" onclick="changeYearAndMonth(2);">
                                                        <button type="button"
                                                            class="av-monthly__month-selector av-monthly-no-bui-button__text av-monthly-prev bui-button bui-button--secondary">
                                                            <span class="bui-button__icon"> <svg fill="currentColor"
                                                                    focusable="false" viewbox="0 0 24 24"
                                                                    role="presentation" width="16" aria-hidden="true"
                                                                    height="16"
                                                                    class="bk-icon -streamline-arrow_nav_left"
                                                                    style="user-select: auto;">
                                                                    <path
                                                                        d="M14.55 18a.74.74 0 0 1-.53-.22l-5-5A1.08 1.08 0 0 1 8.7 12a1.1 1.1 0 0 1 .3-.78l5-5a.75.75 0 0 1 1.06 0 .74.74 0 0 1 0 1.06L10.36 12l4.72 4.72a.74.74 0 0 1 0 1.06.73.73 0 0 1-.53.22zm-4.47-5.72zm0-.57z"
                                                                        style="user-select: auto;"></path>
                                                                </svg>
                                                            </span> <span class="bui-button__text"></span>
                                                        </button>
                                                    </a> <a href="#none" title="다음월" id="_showNextMonth"
                                                        onclick="changeYearAndMonth(3);">
                                                        <button type="button"
                                                            class="av-monthly__month-selector av-monthly-no-bui-button__text av-monthly-next bui-button bui-button--secondary">
                                                            <span class="bui-button__icon"> <svg fill="currentColor"
                                                                    viewbox="0 0 24 24" focusable="false" width="16"
                                                                    role="presentation" height="16" aria-hidden="true"
                                                                    class="bk-icon -streamline-arrow_nav_right"
                                                                    style="user-select: auto;">
                                                                    <path
                                                                        d="M9.45 6c.2 0 .39.078.53.22l5 5c.208.206.323.487.32.78a1.1 1.1 0 0 1-.32.78l-5 5a.75.75 0 0 1-1.06 0 .74.74 0 0 1 0-1.06L13.64 12 8.92 7.28a.74.74 0 0 1 0-1.06.73.73 0 0 1 .53-.22zm4.47 5.72zm0 .57z"
                                                                        style="user-select: auto;"></path>
                                                                </svg>
                                                            </span> <span class="bui-button__text"></span>
                                                        </button>
                                                    </a> &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            </tr>
                                        </table>
                                    </div>
                        </div>
                        <div class="av-monthly-layout__main">
                            <div class="av-monthly-layout">
                                <span></span>
                                <div class="av-monthly-container">
                                    <div class="av-monthly-container__grid">
                                    <div class="av-monthly__grid">
                                        <h2>2022년 3월</h2>
                                        <table class="calendarBodytbl">
                                            <colgroup>
                                                <col width="300">
                                                <col width="300">
                                                <col width="300">
                                                <col width="300">
                                                <col width="300">
                                                <col width="300">
                                                <col width="300">
                                            </colgroup>
                                            <thead class="calendarBodytblHead">
                                                <tr>
                                                    <th>Sun</th>
                                                    <th>Mon</th>
                                                    <th>Tue</th>
                                                    <th>Wed</th>
                                                    <th>Thu</th>
                                                    <th>Fri</th>
                                                    <th>Sat</th>
                                                </tr>

                                            </thead>
                                            <tbody class="calendarBodytblBody"></tbody>
                                        </table>

                                        <script type="text/javascript">
                                            var currYear = 1;
                                            var currMonth = 1;

                                            $(function () {
                                                //오늘 날짜 기준으로 달력 결정 및 생성
                                                var now = new Date();
                                                var nowYear = now.getFullYear();
                                                var nowMon = now.getMonth() + 1;
                                                $("#_calendarHeaderYear")
                                                    .val(nowYear)
                                                    .attr("selected", "selected");
                                                $("#_calendarHeaderMonth")
                                                    .val(nowMon)
                                                    .attr("selected", "selected");
                                                makeCalendar(nowYear, nowMon);

                                                currYear = parseInt($("#_calendarHeaderYear option:selected").val());
                                                currMonth = parseInt($("#_calendarHeaderMonth option:selected").val());
                                                // alert('현재년' + currYear + '  현재월' + currMonth); select 변경 이벤트 발생하면 선택한 년-월에
                                                // 해당하는 달력을 그려줌
                                                $(".calendarSelect").change(function () {
                                                    currYear = parseInt($("#_calendarHeaderYear option:selected").val());
                                                    currMonth = parseInt($("#_calendarHeaderMonth option:selected").val());
                                                    $(".calendarRow").remove();
                                                    makeCalendar(currYear, currMonth);
                                                });

                                                //버튼을 클릭하면 선택한 년-월에 해당하는 달력을 그려줌 Ajax 통신을 통해 년-월을 넘겨서 일정 정보를 받아 테이블을 만들어주는 함수
                                                $("#btnDelInDetail").click(function () {
                                                    alert('삭제버튼');
                                                    //배열 초기화
                                                    var viewData = {};
                                                    //data[키] 벨류
                                                    viewData["seq"] = '${bbs.seq}';

                                                    $.ajax({
                                                        contentType: 'application/json',
                                                        dataType: 'json',
                                                        url: 'bbsdeletepost.do',
                                                        type: 'post',
                                                        data: JSON.stringify(viewData),
                                                        success: function (resp) {
                                                            //alert(resp);
                                                            if (resp === 1) {
                                                                alert('삭제가 완료되었습니다');
                                                                location.href = "bbslist.do";
                                                            } else {
                                                                alert('삭제에 실패했습니다. 다시 시도해 주세요.');
                                                            }

                                                        },
                                                        error: function () {
                                                            alert('error');
                                                        }
                                                    });
                                                });
                                            });

                                            //num 매개변수를 받아 현재 년-월을 변경해주는 메소드
                                            function changeYearAndMonth(num) {
                                                //alert('현재년' + currYear + '  현재월' + currMonth);

                                                $("#_calendarHeaderYear").removeAttr("selected", "selected");
                                                $("#_calendarHeaderMonth").removeAttr("selected", "selected");
                                                //alert( typeof currYear + ' ' + typeof currMonth);

                                                switch (num) {
                                                    case 1:
                                                        currYear = ((currYear - 1) < 2020)
                                                            ? 2020
                                                            : (currYear - 1);
                                                        break;
                                                    case 2:
                                                        if ((currMonth - 1) < 1) {

                                                            if ((currYear - 1) < 2020) {
                                                                alert('2020년 이하로 설정할 수 없습니다.');
                                                                currMonth = 12;
                                                            } else {
                                                                currYear = currYear - 1;
                                                                currMonth = 1;
                                                            }
                                                        } else {
                                                            currMonth = currMonth - 1;
                                                        }
                                                        break;
                                                    case 3:
                                                        if ((currMonth + 1) > 12) {
                                                            currMonth = 1;
                                                            if ((currYear + 1) > 2023) {
                                                                alert('2023년 이상으로 설정할 수 없습니다');
                                                                currMonth = 12;
                                                            } else {
                                                                currYear = currYear + 1;
                                                            }
                                                        } else {
                                                            currMonth = currMonth + 1;
                                                        }
                                                        break;
                                                    case 4:
                                                        currYear = ((currYear + 1) > 2023)
                                                            ? 2023
                                                            : (currYear + 1);
                                                        break;
                                                    default:
                                                        break;
                                                }

                                                //설정된 값에 맞게 select 설정
                                                $("#_calendarHeaderYear")
                                                    .val(currYear)
                                                    .attr("selected", "selected");
                                                $("#_calendarHeaderMonth")
                                                    .val(currMonth)
                                                    .attr("selected", "selected");

                                                //달력 지우고 새로 그려주기
                                                $(".calendarRow").remove();
                                                makeCalendar(currYear, currMonth);
                                            }

                                            //매개변수에 맞는 달력을 그려 주는 메소드
                                            function makeCalendar(year, month) {
                                                //select에 해당하는 년-월을 매개변수로 받아서 날짜 설정
                                                var now = new Date(year + '-' + month + '-01');
                                                var dayOfWeek = now.getDay() + 1; //시작요일 설정
                                                var lastDay = (new Date(year, month, 0)).getDate(); //마지막 날짜 설정
                                                var weeks = (lastDay / 7) + 1; // 총 주 수를 설정

                                                //시작일 전 빈칸 채우기
                                                var trDay = document.createElement('tr');
                                                trDay.setAttribute('class', 'calendarRow');
                                                var tdDay = document.createElement('td');
                                                tdDay.setAttribute('class', 'tableBlank');
                                                tdDay.append('');
                                                for (i = 1; i < dayOfWeek; i++) {
                                                    tdDay = document.createElement('td');
                                                    tdDay.setAttribute('class', 'tableBlank');
                                                    tdDay.setAttribute('id', 'blank');
                                                    tdDay.append('');
                                                    trDay.append(tdDay);
                                                }

                                                //날짜 채우기 alert('dayOfWeek : ' + dayOfWeek + (typeof dayOfWeek));
                                                for (i = 1; i < lastDay + 1; i++) {
                                                    // console.log( 'i : ' + i + ',  cond:' + (i + dayOfWeek - 1 ) + ',  dayOfWeek :
                                                    // ' + dayOfWeek ) ;
                                                    tdDay = document.createElement('td');
                                                    tdDay.setAttribute('class', 'tableDay');
                                                    tdDay.setAttribute('id', 'HighLight');
                                                    //tdDay.setAttribute('onclick', 'HighLightTD(this,"#d8fafa","#003b95")');
                                                    tdDay.append(i + '일');
                                                    trDay.append(tdDay);
                                                    if ((i + dayOfWeek - 1) % 7 === 0 && i != lastDay) {
                                                        //7일을 모두 수행했으면 새로운 행 추가
                                                        $(".calendarBodytbl").append(trDay);
                                                        trDay = document.createElement('tr');
                                                        trDay.setAttribute('class', 'calendarRow');
                                                        trDay.setAttribute('id', 'result');
                                                    }
                                                }
                                                //마지막주 빈칸append
                                                for (i = 0; i < ((7 - ((dayOfWeek + lastDay - 1)) % 7)) % 7; i++) {
                                                    tdDay = document.createElement('td');
                                                    tdDay.setAttribute('id', 'blank');
                                                    tdDay.append('');
                                                    trDay.append(tdDay);
                                                }

                                                $(".calendarBodytbl").append(trDay); //마지막주
                                            }
                                        </script>
                                        <script src="js/plugins/dataTables/datatables.min.js"></script>
                                        <script src="js/plugins/dataTables/datatables.select.min.js"></script>

                                        <script>

                                            $(function () {
                                                var isMouseDown = false,
                                                    isHighlighted;
                                                $(".calendarBodytbl td")
                                                    .mousedown(function () {
                                                        isMouseDown = true;
                                                        $(this).toggleClass("highlighted");
                                                        isHighlighted = $(this).hasClass("highlighted");
                                                        return false;
                                                    })
                                                    .mouseover(function () {
                                                        if (isMouseDown) {
                                                            $(this).toggleClass("highlighted", isHighlighted);
                                                        }
                                                    })
                                                    .bind("selectstart", function () {
                                                        return false;
                                                    })

                                                $(document)
                                                    .mouseup(function () {
                                                        isMouseDown = false;
                                                    });
                                            });

                                        </script>
                                    </div>
                                </div>
                                    <div class="av-monthly-container__form">
                                        <div class="av-monthly-container__block av-monthly__hide-medium">
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
                                                                        role="presentation" fill="currentColor"
                                                                        height="16" viewBox="0 0 128 128" slot="icon"
                                                                        class="av-monthly__datepicker-icon bk-icon -streamline-calendar_check_in"
                                                                        style="user-select: auto;">
                                                                        <path
                                                                            d="M116 16H96V4a4 4 0 0 0-8 0v12H40V4a4 4 0 0 0-8 0v12H12C5.373 16 0 21.373 0 28v88c0 6.627 5.373 12 12 12h104c6.627 0 12-5.373 12-12V28c0-6.627-5.373-12-12-12zm4 100a4 4 0 0 1-4 4H12a4 4 0 0 1-4-4V28a4 4 0 0 1 4-4h20v8a4 4 0 0 0 8 0v-8h48v8a4 4 0 0 0 8 0v-8h20a4 4 0 0 1 4 4zm-20-68H52a4 4 0 0 0-4 4v20H28a4 4 0 0 0-4 4v24a4 4 0 0 0 4 4h72a4 4 0 0 0 4-4V52a4 4 0 0 0-4-4zm-4 24H80V56h16zm-64 8h16v16H32zm24 0h16v16H56zm24 16V80h16v16z"
                                                                            style="user-select: auto;"></path>
                                                                    </svg>
                                                                </div>
                                                                <input class="form-control bui-form__control" placeholder="2022년 3월 9일" readonly>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="bui-spacer--large">
                                                </div>
                                                <div class="av-monthly-expandable__wrap">
                                                    <div class="ext-datepicker__wrap">
                                                        <div class="ext-datepicker__text-input bui-form__group">
                                                            <label><span>종료일</span></label>
                                                            <div
                                                                class="input-group input-daterange bui-input__group bui-text-input__group bui-text-input__group--prepend">
                                                                <div class="bui-input__addon">
                                                                    <svg viewBox="0 0 128 128" fill="currentColor"
                                                                        height="16" role="presentation"
                                                                        aria-hidden="true" width="16" focusable="false"
                                                                        slot="icon"
                                                                        class="av-monthly__datepicker-icon bk-icon -streamline-calendar_check_out"
                                                                        style="user-select: auto;">
                                                                        <path
                                                                            d="M116 16H96V4a4 4 0 0 0-8 0v12H40V4a4 4 0 0 0-8 0v12H12C5.373 16 0 21.373 0 28v88c0 6.627 5.373 12 12 12h104c6.627 0 12-5.373 12-12V28c0-6.627-5.373-12-12-12zm4 100a4 4 0 0 1-4 4H12a4 4 0 0 1-4-4V28a4 4 0 0 1 4-4h20v8a4 4 0 0 0 8 0v-8h48v8a4 4 0 0 0 8 0v-8h20a4 4 0 0 1 4 4zm-20-68H52a4 4 0 0 0-4 4v20H28a4 4 0 0 0-4 4v24a4 4 0 0 0 4 4h72a4 4 0 0 0 4-4V52a4 4 0 0 0-4-4zm-4 24H80V56h16zM72 56v16H56V56zM32 80h16v16H32zm24 0h16v16H56z"
                                                                            style="user-select: auto;"></path>
                                                                    </svg>
                                                                </div>
                                                                <input class="form-control bui-form__control" placeholder="2022년 3월 1일" readonly>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="av-monthly-container__block">
                                            <form>
                                                <div data-tour-onboarding="open-close">
                                                    <div class="bui-spacer--medium">
                                                        <span>객실 Open/Close</span>
                                                    </div>
                                                    <div class="bui-spacer--large">
                                                        <div class="bui-group bui-group--inline bui-group--large">
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 가능</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 불가</span>
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
                                                                <label><span>판매 수량 선택</span></label>
                                                                <div class="bui-input-select">
                                                                    <select class="bui-form__control">
                                                                        <option>잔여 옵션 0개</option>
                                                                        <option>잔여 옵션 1개</option>
                                                                    </select>
                                                                    <svg xmlns="http://www.w3.org/2000/svg"
                                                                        viewBox="0 0 24 24"
                                                                        class="bui-input-select__icon"
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
                                                            Rate
                                                        </div>
                                                        <div
                                                            class="bui-spacer--small bui-group bui-group bui-group--inline bui-group--large">
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 가능</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 불가</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="bui-form__group bui-has-error">
                                                                <div
                                                                    class="bui-input__group bui-text-input__group bui-text-input__group--prepend">
                                                                    <div class="bui-input__addon">KRW</div>
                                                                    <input type="text"
                                                                        class="bui-form__control av-monthly__segmented--middle">
                                                                    <div
                                                                        class="bui-input__addon av-monthly__right-bui-addon">
                                                                        <button type="button"
                                                                            class="bui-button bui-button--secondary">
                                                                            <span class="bui-button__icon">
                                                                                <svg width="16" height="16"
                                                                                    fill="currentColor"
                                                                                    viewBox="0 0 24 24"
                                                                                    role="presentation"
                                                                                    aria-hidden="true" focusable="false"
                                                                                    class="bk-icon -streamline-person_half"
                                                                                    style="user-select: auto;">
                                                                                    <path
                                                                                        d="M16.5 6a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zM18 6A6 6 0 1 0 6 6a6 6 0 0 0 12 0zM3 23.25a9 9 0 1 1 18 0 .75.75 0 0 0 1.5 0c0-5.799-4.701-10.5-10.5-10.5S1.5 17.451 1.5 23.25a.75.75 0 0 0 1.5 0z"
                                                                                        style="user-select: auto;">
                                                                                    </path>
                                                                                </svg>
                                                                            </span>
                                                                            <span class="bui-button__text">4</span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                <div class="bui-form__error">
                                                                    <span>요금을 입력해 주세요.</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <a href="#"
                                                            class="bui-link bui-link-primary"><span>제한사항</span></a>
                                                    </div>
                                                    <div class="bui-spacer--largest">
                                                        <div class="bui-spacer--small bui-f-color-grayscale">
                                                            Non-refundable
                                                            Rate</div>
                                                        <div
                                                            class="bui-spacer--small bui-group bui-group--inline bui-group--large">
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 가능</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 불가</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="bui-form__group">
                                                                <div
                                                                    class="bui-input__group bui-text-input__group bui-text-input__group--prepend">
                                                                    <div class="bui-input__addon">KRW</div>
                                                                    <input disabled="disabled" type="text"
                                                                        class="bui-form__control av-monthly__segmented--middle">
                                                                    <div
                                                                        class="bui-input__addon av-monthly__right-bui-addon">
                                                                        <button type="button"
                                                                            class="bui-button bui-button--secondary">
                                                                            <span class="bui-button__icon">
                                                                                <svg width="16" height="16"
                                                                                    fill="currentColor"
                                                                                    viewBox="0 0 24 24"
                                                                                    role="presentation"
                                                                                    aria-hidden="true" focusable="false"
                                                                                    class="bk-icon -streamline-person_half"
                                                                                    style="user-select: auto;">
                                                                                    <path
                                                                                        d="M16.5 6a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zM18 6A6 6 0 1 0 6 6a6 6 0 0 0 12 0zM3 23.25a9 9 0 1 1 18 0 .75.75 0 0 0 1.5 0c0-5.799-4.701-10.5-10.5-10.5S1.5 17.451 1.5 23.25a.75.75 0 0 0 1.5 0z"
                                                                                        style="user-select: auto;">
                                                                                    </path>
                                                                                </svg>
                                                                            </span>
                                                                            <span class="bui-button__text">4</span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <a href="#"
                                                            class="bui-link bui-link--primary"><span>제한사항</span></a>
                                                    </div>
                                                    <div class="bui-spacer--largest">
                                                        <div class="bui-spacer--small bui-f-color-grayscale">Weekly
                                                            Rate</div>
                                                        <div
                                                            class="bui-spacer--small bui-group bui-group--inline bui-group--large">
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 가능</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                            <div class="bui-form__group">
                                                                <label class="bui-radio">
                                                                    <input type="radio" class="bui-radio__input">
                                                                    <span class="bui-radio__label">
                                                                        <span>예약 불가</span>
                                                                    </span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="bui-form__group">
                                                                <div
                                                                    class="bui-input__group bui-text-input__group bui-text-input__group--prepend">
                                                                    <div class="bui-input__addon">KRW</div>
                                                                    <input disabled="disabled" type="text"
                                                                        class="bui-form__control av-monthly__segmented--middle">
                                                                    <div
                                                                        class="bui-input__addon av-monthly__right-bui-addon">
                                                                        <button type="button"
                                                                            class="bui-button bui-button--secondary">
                                                                            <span class="bui-button__icon">
                                                                                <svg width="16" height="16"
                                                                                    fill="currentColor"
                                                                                    viewBox="0 0 24 24"
                                                                                    role="presentation"
                                                                                    aria-hidden="true" focusable="false"
                                                                                    class="bk-icon -streamline-person_half"
                                                                                    style="user-select: auto;">
                                                                                    <path
                                                                                        d="M16.5 6a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zM18 6A6 6 0 1 0 6 6a6 6 0 0 0 12 0zM3 23.25a9 9 0 1 1 18 0 .75.75 0 0 0 1.5 0c0-5.799-4.701-10.5-10.5-10.5S1.5 17.451 1.5 23.25a.75.75 0 0 0 1.5 0z"
                                                                                        style="user-select: auto;">
                                                                                    </path>
                                                                                </svg>
                                                                            </span>
                                                                            <span class="bui-button__text">4</span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <a href="#"
                                                            class="bui-link bui-link--primary"><span>제한사항</span></a>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div class="bui-f-font-caption bui-spacer--medium">
                                                        <div class="bui-spacer--medium">
                                                            <hr class="bui-divider bui-divider--light">
                                                        </div>
                                                        <span>다음 날짜에 변경사항이 적용됩니다: 2022년 2월 6일</span>
                                                    </div>
                                                    <div class="av-monthly__form-btn-wrap av-monthly-flex-inline__wrap">
                                                        <button type="button" disabled="disabled"
                                                            class="av-monthly-flex-inline__item--equal bui-button bui-button--secondary bui-button--wide">
                                                            <span class="bui-button__text"><span>취소</span></span>
                                                        </button>
                                                        <button type="button" disabled="disabled"
                                                            class="av-monthly-flex-inline__item--equal bui-button bui-button--primary bui-button--wide">
                                                            <span class="bui-button__text"><span>저장</span></span>
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
                                                    <svg width="16" height="16" aria-hidden="true" fill="currentColor"
                                                        focusable="false" role="presentation" viewBox="0 0 24 24"
                                                        class="bk-icon -streamline-warning" style="user-select: auto;">
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
                    </div>
                </main>
                <jsp:include page="/WEB-INF/partner/footer.jsp"/>
            </div>
        </div>
    </div>
</body>

</html>