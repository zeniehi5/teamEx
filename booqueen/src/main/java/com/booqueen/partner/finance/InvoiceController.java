package com.booqueen.partner.finance;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.partner.hotel.HotelService;
import com.booqueen.partner.hotel.HotelVO;
import com.booqueen.partner.reservation.Pagination;
import com.booqueen.partner.reservation.PagingVO;
import com.booqueen.partner.reservation.ReservationService;
import com.booqueen.partner.reservation.ReservationVO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Controller
public class InvoiceController {

	@Autowired
	private HotelService hotelService;

	@Autowired
	private ReservationService reservationService;

	@RequestMapping(value = "/invoice.pdo", method = RequestMethod.GET)
	public String getInvoice(@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			@ModelAttribute("hotel") HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());

			if (hotel != null) {
				int listCount = hotelService.getListCount(hotel.getSerialnumber());

				PagingVO paging = Pagination.getPagingVO(currentPage, listCount);

				List<InvoiceVO> invoice = hotelService.selectInvoiceByHotelSerial(hotel.getSerialnumber(), paging);
				System.out.println(invoice.toString());

				model.addAttribute("paging", paging);
				model.addAttribute("hotel", hotel);
				model.addAttribute("invoice", invoice);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "invoice";
	}

	@RequestMapping(value = "/statement.pdo", method = RequestMethod.GET)
	public String getStatement(@ModelAttribute("hotel") HotelVO hotel, Model model, HttpSession session) {
		try {
			hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
			if (hotel != null) {
				model.addAttribute("hotel", hotel);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "statement";
	}

	@RequestMapping(value = "/chargeBillingStateMent.pdo", method = RequestMethod.POST)
	@ResponseBody
	public String chargeBillingStateMent(@RequestBody ReservationVO reservation) {

		int updateNumber = reservationService.updateReservationStatusToBilling(reservation);

		Gson gson = new Gson();
		JsonObject jsonObject = new JsonObject();
		String result = "";

		if (updateNumber == 0) {
			jsonObject.addProperty("message", "FAIL");
			result = gson.toJson(jsonObject);
		} else {
			jsonObject.addProperty("message", "SUCCESS");
			result = gson.toJson(jsonObject);
		}

		return result;
	}

	@RequestMapping(value = "/searchInvoiceByMonth.pdo", method = RequestMethod.POST)
	@ResponseBody
	public String searchInvoiceByMonth(@RequestBody InvoiceVO invoice) {
		List<InvoiceVO> monthlyInvoice = reservationService.selectInvoiceListByMonth(invoice);
		Gson gson = new Gson();
		String result = gson.toJson(monthlyInvoice);
		return result;
	}

	// excel 변환
	@RequestMapping("excelConvert.pdo")
	public void excelConvert(HttpServletResponse response, HttpServletRequest request, HttpSession session) throws IOException {

		HotelVO hotel = hotelService.getHotelByMemberEmail(session.getAttribute("email").toString());
		List<InvoiceVO> monthlyInvoice = reservationService.selectInvoiceListByHotelSerial(hotel.getSerialnumber());
		DecimalFormat formatter = new DecimalFormat("###,###,###");
		

		Workbook wb =new HSSFWorkbook();// 엑셀 파일 객체 생성
		Sheet sheet = wb.createSheet("청구서입니다용쿄쿄서");

		CellStyle style = wb.createCellStyle();// 셀 스타일 생성
		Font font = wb.createFont();// 폰트 스타일 생성

		font.setFontHeight((short) 560); // 글자 크기 왜 적용안돼??
		font.setFontName("맑은 고딕"); // 글씨체
		sheet.setDefaultColumnWidth(30); // sheet 전체 기본 너비설정
		sheet.setDefaultRowHeightInPoints(30); // sheet 전체 기본 너비설정
		Row titleRow = sheet.createRow(0); // 타이틀 행 생성
		int titleColNum = 0;// 첫번째 열이기때문에 0으로

		Cell titleCell = titleRow.createCell(titleColNum); // 첫 번째행의 첫번째 열을 지정
		titleCell.setCellValue("청구서 목록");

		Row headRow = sheet.createRow(2);
		int headerCol = 0;

		CellStyle dataStyle = wb.createCellStyle(); // 셀 스타일!

		Cell headerCell = headRow.createCell(headerCol++);
		headerCell.setCellValue("예약번호");
		headerCell.setCellStyle(dataStyle);

		headerCell = headRow.createCell(headerCol++);
		headerCell.setCellValue("객실 고유번호");
		headerCell.setCellStyle(dataStyle);

		headerCell = headRow.createCell(headerCol++);
		headerCell.setCellValue("ID");
		headerCell.setCellStyle(dataStyle);

		headerCell = headRow.createCell(headerCol++);
		headerCell.setCellValue("체크인 날짜");
		headerCell.setCellStyle(dataStyle);

		headerCell = headRow.createCell(headerCol++);
		headerCell.setCellValue("체크아웃 날짜");
		headerCell.setCellStyle(dataStyle);

		headerCell = headRow.createCell(headerCol++);
		headerCell.setCellValue("청구금액");
		headerCell.setCellStyle(dataStyle);

		headerCell = headRow.createCell(headerCol++);
		headerCell.setCellValue("이름");
		headerCell.setCellStyle(dataStyle);

		// 데이터 삽입
		int rowNum = 3;
		int cellNum = 0;
		Row dataRow = null; // 반복문으로 돌릴거양
		Cell dataCell = null;
		
		for(InvoiceVO result : monthlyInvoice) {
			cellNum = 0;
			dataRow = sheet.createRow(rowNum++);
			
			dataCell = dataRow.createCell(cellNum++); // 열 한줄씩 추가
			dataCell.setCellValue(result.getReservation_number());
			dataCell.setCellStyle(dataStyle);
			
			dataCell = dataRow.createCell(cellNum++); // 열 한줄씩 추가
			dataCell.setCellValue(result.getRoom_id());
			dataCell.setCellStyle(dataStyle);
			
			dataCell = dataRow.createCell(cellNum++); // 열 한줄씩 추가
			dataCell.setCellValue(result.getEmail());
			dataCell.setCellStyle(dataStyle);
			
			dataCell = dataRow.createCell(cellNum++); // 열 한줄씩 추가
			dataCell.setCellValue(result.getCheckin_date());
			dataCell.setCellStyle(dataStyle);
			
			dataCell = dataRow.createCell(cellNum++); // 열 한줄씩 추가
			dataCell.setCellValue(result.getCheckout_date());
			dataCell.setCellStyle(dataStyle);
			
			dataCell = dataRow.createCell(cellNum++); // 열 한줄씩 추가
			dataCell.setCellValue(result.getBilling());
			dataCell.setCellStyle(dataStyle);
			
			dataCell = dataRow.createCell(cellNum++); // 열 한줄씩 추가
			dataCell.setCellValue(result.getFirstname()+result.getLastname());
			dataCell.setCellStyle(dataStyle);
			
		}

		response.setContentType("ms-vnd/excel");
		response.setHeader("Content-Disposition", "attachment;filename=invoiceList.xls");
		wb.write(response.getOutputStream());
		
	}
	
}
