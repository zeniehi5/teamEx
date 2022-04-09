package com.booqueen.partner.reservation;

import java.util.List;

import com.booqueen.partner.finance.InvoiceVO;

public interface ReservationService {

	List<ReservationVO> selectReservationPagingByHotelSerial(int serialnumber, PagingVO paging);

	ReservationDetailVO selectReservationDetailByRSVN(int reservation_number);

	int getListCount(int serialnumber);

	List<ReservationVO> selectReservationListByHotelSerial(int serialnumber);

	List<ReservationVO> selectReservationListOnCondition(SearchVO search, PagingVO paging);

	ReservationVO selectReservationDetailByUserId(ReservationVO vo);

	int updateCheckInStatus(ReservationVO reservation);

	int updateCheckoutStatus(ReservationVO reservation);

	List<ReservationVO> selectCheckInListByHotelSerial(int serialnumber);

	ReservationVO selectReservationByRSVN(SearchVO search);

	int updateReservationStatusToBilling(ReservationVO reservation);

	int reportUser(ReportUserVO reportUser);

	ReportUserVO selectReportedUser(ReportUserVO search);

	List<InvoiceVO> selectInvoiceListByMonth(InvoiceVO invoice);

	List<InvoiceVO> selectInvoiceListByHotelSerial(int serialnumber);

}
