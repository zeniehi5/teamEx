<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${contextPath}/resources/user/css/checkReservation.css" rel="stylesheet">
        <title>check reservation</title>
    </head>
    <body>
    
        <div class=" show_for_print pc-body pc-body--margin_fix" aria-hidden="true">
            <div class="row marginBottom5" style="display: flex;justify-content: space-between; padding-top: 10px;">
                <div class="col-7">
                    <img
                        src="${contextPath}/resources/user/images/logo_color.png"
                        class="header__logo"
                        width="200">
                </div>
                <div class="col-5 txt-right ">
                    <div class="txt-left inline-block">
                        <h1 class="header__title">
                        	<c:choose>
                        	<c:when test="${!reservationVO.status}">
                        		취소 확인서
                        	</c:when>
                        	<c:otherwise>
                        		예약 확인서
                        	</c:otherwise>
                        	</c:choose>
                        </h1>
                        <div class="book-num">
                            예약 확인 번호:
                            <span class="book-num__digits">${reservationVO.reservation_number }</span>
                            <br>
                            PIN 코드:
                            <span class="book-num__digits">${reservationVO.pincode }</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-content">
                <div class="main-content__item booking-details">
                    <!-- summary -->
                    <div class="summary table  summary-layout-redesign">
                        <div class="table-row">
                            <div class="table-cell">
                                <img
                                    src="${reservationVO.file_url}"
                                    class="hotel-details__photo"
                                    width="90">
                                <div class="hotel-details__address ">
                                    <h2 class="marginTop5">
                                        ${reservationVO.hotelname}
                                    </h2>
                                    <div class="marginTop5">
                                        <strong>주소:</strong>
                                         ${reservationVO.city}, ${reservationVO.address1}<br>
                                         ${reservationVO.address2}
                                        <div class="marginTop2">
                                            <strong>전화:</strong>
                                            <span class="u-phone">+82 ${reservationVO.telephone}</span>
                                        </div>
                                       <!-- <div class="marginTop2">
                                            <strong>GPS 좌표계:</strong>
                                            N 035° 6.542, E 129° 2.121
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                            <div class="table-cell table-cell--with-border">
                                <div class="row dates bhpb_table_row_padding">
                                    <!-- row dates -->
                                    <div class="col-6 dates__item">
                                        <div class="dates__border">
                                            <div class="summary__title">체크인</div>
                                            <div class="summary__big-num">${reservationVO.start_date_day }</div>
                                            <div class="dates__month">${reservationVO.start_date_month }월</div>
                                            <div class="dates__week">${reservationVO.start_day }요일</div>
                                            <div class="dates__time marginTop3">
                                                <img
                                                    src="https://cf.bstatic.com/static/img/conf_print/cp-icon-time/756dbcbcbc683fb259653a179513b242439d312c.png"
                                                    class="conf-icon"
                                                    width="10">
                                                ${hotelPoilcyVO.check_in_start }:00부터
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6 dates__item ">
                                        <div class="summary__title">체크아웃</div>
                                        <div class="summary__big-num">${reservationVO.end_date_day }</div>
                                            <div class="dates__month">${reservationVO.end_date_month }월</div>
                                            <div class="dates__week">${reservationVO.end_day }요일</div>
                                        <div class="dates__time marginTop3">
                                            <img
                                                src="https://cf.bstatic.com/static/img/conf_print/cp-icon-time/756dbcbcbc683fb259653a179513b242439d312c.png"
                                                class="conf-icon"
                                                width="10">
                                            ${hotelPoilcyVO.check_out_end }:00까지
                                        </div>
                                    </div>
                                </div>
                                <!-- / row dates -->
                            </div>
                            <div class="table-cell table-cell--with-border">
                                <div class="row rooms-nights">
                                    <div class="col-5 rooms-nights__item">
                                        <div class="summary__title">
                                            박(day)
                                        </div>
                                        <div class="summary__big-num">${reservationVO.diffDays}</div>
                                    </div>
                                    <div class="col-1 rooms-nights__item">
                                        <div class="summary__title">&nbsp;</div>
                                       <div class="summary__big-num summary__big-num--sep">/&nbsp;&nbsp;</div>
                                    </div>
                                    <div class="col-6 rooms-nights__item ">
                                        <div class="summary__title">
                                            일(night)
                                        </div>
                                        <div class="summary__big-num"> ${reservationVO.diffDays + 1}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- price -->
                    <div class="price-table table">
                        <div class="table-row">
                            <div class="table-cell">
                                <div class="summary__big-num"></div>
                                <div class="pb-pricebreakdown--tbl-outerbox-cont is-print is-print-mod2">
                                    <div class="pb-pricebreakdown--tbl-outerbox">
                                        <table class="pb-pricebreakdown--tbl">
                                            <tbody>
                                                <tr>
                                                    <th scope="row">
                                                        숙박옵션 ${reservationVO.count_room}개
                                                    </th>
                                                    <td style="text-align: inherit;text-align: right;"><fmt:setLocale value="ko_KR"/><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${reservationVO.price * 100 / 110}"/></td>
                                                </tr>
                                                <tr>
                                                    <th>10% 세금</th>
                                                    <td style="text-align: inherit;text-align: right;">
                                                        <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${reservationVO.price * 10 / 110}" />
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="pb-pricebreakdown--tbl-outerbox filled">
                                        <table class="pb-pricebreakdown--tbl">
                                            <tbody>
                                                <tr>
                                                    <th>
                                                        <div class="room-price">
                                                            <c:choose>
								                        	<c:when test="${!reservationVO.status}">
								                        		환불받을 금액
								                        	</c:when>
								                        	<c:otherwise>
								                        		 요금
								                        	</c:otherwise>
								                        	</c:choose>
                                                           
                                                        </div>
                                                        <div class="room-price-note"></div>
                                                    </th>
                                                    <td data-et-view="">
                                                        <div style="text-align: inherit;text-align: right;">
                                                            &nbsp;<span class="room-price"><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${reservationVO.price}" /></span>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table class="pb-pricebreakdown--tbl">
                                            <tbody></tbody>
                                        </table>
                                    </div>
                                    <div class="pb-pricebreakdown--tbl-outerbox filled">
                                        <div class="pb-pricebreakdown--additional-info">
                                            <h4 class="pb-pricebreakdown--additional-info-header">
                                                <c:choose>
					                        	<c:when test="${!reservationVO.status}">
					                        		표시된 최종 요금은 숙소 측에 지불한 요금입니다.
					                        	</c:when>
					                        	<c:otherwise>
					                        		표시된 최종 요금은 숙소 측에 지불할 요금입니다.
					                        	</c:otherwise>
					                        	</c:choose>
                                            </h4>
                                            <div
                                                class="pb-pricebreakdown--additional-info-text"
                                                data-et-view="bQbYSCZFceHEVJdYJNdDaXFCVCGXT:1">
                                                Bookqueen.com은 예약, 행정 및 기타 수수료를 고객님께 청구하지 않습니다.<br>
                                            </div>
                                        </div>
<!--                                    <div
                                            id="pb-price-breakdown--payment"
                                            class="pb-pricebreakdown--additional-info">
                                            <h4 class="pb-pricebreakdown--additional-info-header">결제 관련 정보</h4>
                                            <div class="pb-pricebreakdown--additional-info-text">
                                                코모도 호텔 부산에서 요금 결제 일체를 담당합니다.<br>
                                                이 숙박 업체에서 사용 가능한 결제 수단:
                                            </div>
                                        </div> -->
                                        <c:choose>
			                        	<c:when test="${!reservationVO.status}">
			                        		
			                        	</c:when>
			                        	<c:otherwise>
			                        		<div class="pb-pricebreakdown--additional-info">
                                            <h4 class="pb-pricebreakdown--additional-info-header">추가 정보</h4>
                                            <div class="pb-pricebreakdown--additional-info-text">
                                                <div data-et-view="INQHUNFSVdINOfaKLYRTWe:2"></div>
                                                주의: 추가 서비스(예. 엑스트라 베드)는 총 금액에 합산되지 않습니다.<br>
                                                노쇼 또는 예약 취소 시에도 숙소 측에서 세금을 부과할 수 있습니다.<br>
                                            </div>
                                        </div>
                                        <div class="pb-pricebreakdown--additional-info hide_for_print">
                                            <h4 class="pb-pricebreakdown--additional-info-header">
                                                결제에 대해 자세히 알고 싶으신가요?
                                            </h4>
                                            <div class="pb-pricebreakdown--additional-info-text">
                                                결제 시기와 방법에 대해 더 자세히 알고 싶으시다면
                                                <a
                                                 href="${contextPath}/questions.do"
                                                    data-faq-topic="payments">자주 묻는 질문(FAQ)</a>을 확인해보세요.
                                            </div>
                                        </div>
			                        	</c:otherwise>
			                        	</c:choose>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-content__item hotel-map">
                    <div class="table">
                        <div class="table-row">
                            <div class="table-cell ">
                                <div class="pb_conf_print_map" style="position: relative">
                                    <img
                                        class="pb_conf_print_map__tile -loaded"
                                        src="https://google.co.kr/maps/api/staticmap?center=35.10903,129.03536&amp;size=1000x220&amp;zoom=15&amp;language=ko&amp;client=gme-booking&amp;channel=booking-frontend&amp;signature=NILMe9KpBe7M_ri2hgDZQY-97ug="
                                        data-defer-src="https://google.co.kr/maps/api/staticmap?center=35.10903,129.03536&amp;size=1000x220&amp;zoom=15&amp;language=ko&amp;client=gme-booking&amp;channel=booking-frontend&amp;signature=NILMe9KpBe7M_ri2hgDZQY-97ug=">
                                    <img
                                        style="top: 50%; left: 50%; position:absolute;"
                                        src="https://cf.bstatic.com/static/img/marker-hotel-orange-large/b4822d8146725693a1fa3c2f9724e8847aede926.png"
                                        class="pb_conf_print_map__marker"
                                        alt="현재 호텔"
                                        title="코모도 호텔 부산">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-content__item room">
                    <div class="table">
                        <div class="table-row">
                            <div class="table-cell  ">
                                <div class="room__info">
                                    <h2>
                                        스탠다드 더블룸
                                    </h2>
                                    <strong>투숙객 이름:</strong>
                                    ${reservationVO.lastname } ${reservationVO.firstname } / 내용: 최대 ${room.quota }명
                                    <br>
                                    <strong>식사 옵션:</strong>
                                    이 객실 요금에는 식사 요금이 포함되어 있지 않습니다.
                                    <br>
                                    <div class="room__facilities">
                                        <ul class="marginTop5">
                                            <li>
                                                <span class="">객실 내 전용 욕실</span>
                                                •
                                            </li>
											<c:if test="${room.roomFacilitiesVO.wheelchair}"><li>휠체어 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.elevator}"><li>엘리베이터 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.stair_only}"><li>계단 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.bathroom_handle}"><li>욕실 안전 손잡이 •</li></c:if>
											
											<c:if test="${room.roomFacilitiesVO.hanger}"><li>행거 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.drying_rack}"><li>건조대 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.folding_bed}"><li>접이식 침대 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.electric_kettle}"><li>전기 주전자 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.sofa_bed}"><li>소파침대 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.ac}"><li>에어컨 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.closet}"><li>옷장 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.carpet_floor}"><li>카페트 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.marble_floor}"><li>대리석 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.wooden_floor}"><li>나무 바닥 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.dress_room}"><li>드레스룸 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.fan}"><li>선풍기 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.heater}"><li>히터 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.private_entrance}"><li>전용 출입문 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.safety_box}"><li>금고 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.sofa}"><li>소파 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.sound_proof}"><li>방음 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.resting_area}"><li>휴게실 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.cleaning_tools}"><li>청소도구 •</li></c:if>
											
											<c:if test="${room.roomFacilitiesVO.restroom}"><li>화장실 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.bathtub}"><li>욕조 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.bidet}"><li>비데 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.bathrobe}"><li>가운 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.amenities}"><li>오락시설 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.hair_dryer}"><li>헤어드라이기 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.spabath}"><li>스파 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.public_bathroom}"><li>공중 화장실 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.slipper}"><li>실내화 •</li></c:if>
											
											<c:if test="${room.roomFacilitiesVO.dining_area}"><li>식사 공간 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.dining_table}"><li>식탁 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.barbeque}"><li>바베큐 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.cooktop}"><li>가스레인지 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.toaster}"><li>토스터 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.coffee_pot}"><li>커피 포트 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.outdoor_dining}"><li>야외 식사 공간 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.mini_bar}"><li>미니바 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.kitchenware}"><li>주방용품 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.microwave}"><li>전자레인지 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.refridge}"><li>냉장고 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.coffee_machine}"><li>커피머신기 •</li></c:if>
											
											<c:if test="${room.roomFacilitiesVO.computer}"><li>컴퓨터 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.game_console}"><li>게임기 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.laptop}"><li>노트북 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.tablet_pc}"><li>태블릿 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.cable_channel}"><li>케이블 채널 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.fax}"><li>팩스 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.ipad_docking_station}"><li>아이패드 도킹 스테이션 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.laptop_safebox}"><li>노트북 보관함 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.tv}"><li>텔레비전 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.pay_per_view}"><li>유료시청제 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.radio}"><li>라디오 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.satellite_channel}"><li>위성 뉴스 채널 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.telephone}"><li>전화기 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.video_game}"><li>비디오 게임 •</li></c:if>
											
											<c:if test="${room.roomFacilitiesVO.lounge}"><li>라운지 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.alarm_clock}"><li>알람시계 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.morning_call}"><li>모닝콜 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.towel}"><li>수건 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.bathing_sheet}"><li>목욕 타월 •</li></c:if>
											
											<c:if test="${room.roomFacilitiesVO.balcony}"><li>발코니 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.terras}"><li>테라스 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.city_view}"><li>시티뷰 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.garden_view}"><li>가든뷰 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.lake_view}"><li>호수 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.attractions_view}"><li>명소뷰 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.mountain_view}"><li>마운틴뷰 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.pool_view}"><li>수영장뷰 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.river_view}"><li>리버뷰 •</li></c:if>
											<c:if test="${room.roomFacilitiesVO.ocean_view}"><li>오션뷰 •</li></c:if>
											<li>1층
                                        </ul>
                                    </div>
                                    <div class="room__beds marginTop5">
                                        <div class="mb-room_beds">
                                            <strong>침대 크기 :</strong>
                                            <span>
                                                침대 ${room.bed }개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            
    </body>
</html>