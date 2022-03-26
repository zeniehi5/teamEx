package com.booqueen.partner.reservation;

import java.util.List;

public interface ReservationService {

	List<ReservationVO> selectReservationPagingByHotelSerial(int serialnumber, PagingVO paging);

	ReservationDetailVO selectReservationDetailByRSVN(int reservation_number);

	int getListCount();

	List<ReservationVO> selectReservationListByHotelSerial(int serialnumber);

	List<ReservationVO> selectReservationListOnCondition(SearchVO search, PagingVO paging);

	ReservationVO selectReservationDetailByUserId(ReservationVO vo);

}
