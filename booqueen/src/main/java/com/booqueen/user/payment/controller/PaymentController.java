package com.booqueen.user.payment.controller;


import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booqueen.user.payment.SendEmail;
import com.booqueen.user.payment.service.PaymentService;
import com.booqueen.user.payment.vo.PaymentVO;
import com.booqueen.user.reservation.service.ReservationService;
import com.booqueen.user.reservation.vo.ReservationVO;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.CancelData;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
public class PaymentController {

	private IamportClient api;
	
	IamportClient client;
	
	public void setup() {
		String api_key = "6299277095985667";
		String api_secret = "825b92ac5cb96f267a27670bac2dba4c3633c2ff00c5c767252601cae821cdf0cf4f52222cfccd98";
		client = new IamportClient(api_key, api_secret);
	}
	
	public IamportResponse<AccessToken> getToken() throws IamportResponseException, IOException {
		setup();
		IamportResponse<AccessToken> auth_response = client.getAuth();
		return auth_response;
	}
	
	@RequestMapping("/getImportToken.do")
	@ResponseBody
	public IamportResponse<AccessToken> paymentToken() throws IamportResponseException, IOException{
		IamportResponse<AccessToken> paymentToken = getToken();
		return paymentToken;
	}
	
	@Autowired
	PaymentService paymentService;
	
	@Autowired
	ReservationService reservationService;
	
	SendEmail sendEmail;

	public PaymentController() {
		this.api = new IamportClient("6299277095985667",
				"825b92ac5cb96f267a27670bac2dba4c3633c2ff00c5c767252601cae821cdf0cf4f52222cfccd98");
	}

	@RequestMapping("/iamport.do")
	@ResponseBody
	public IamportResponse<Payment> paymentByImUid(Model model, Locale locale, HttpSession session, @RequestParam(value = "imp_uid") String imp_uid) throws IamportResponseException, IOException {
		Map<String, String> payMap = new HashMap<String, String>();
		payMap.put("Uid", api.paymentByImpUid(imp_uid).getResponse().getMerchantUid());
		payMap.put("amount", api.paymentByImpUid(imp_uid).getResponse().getMerchantUid());
		payMap.put("payType", api.paymentByImpUid(imp_uid).getResponse().getMerchantUid());
		payMap.put("payStatus", api.paymentByImpUid(imp_uid).getResponse().getStatus());
		return api.paymentByImpUid(imp_uid);
	}
	
	@RequestMapping("/paymentSuccess.do")
	@ResponseBody
	public String insertPaymentDetail(@RequestBody PaymentVO paymentVO) throws Exception {
		paymentVO.getPayment_status();
		int result = paymentService.insertReservation(paymentVO);
		
		if(result > 0) {
//			sendEmail.reservationEmail(paymentVO.getOrder_merchant_serial());
			return "success";
		} else {
			return "error";
		}
	}
	
	@RequestMapping("/checkPayment.do")
	@ResponseBody
	public PaymentVO checkPaymentDetail(@RequestParam("merchant_uid") String merchant) {
		
		PaymentVO vo = paymentService.selectPayment(merchant);

		return vo;
	}
	
	@RequestMapping("/insertCancel.do")
	@ResponseBody
	public String insertCancel(@RequestParam("message") String message) {
		
		System.out.println(message);
		
		return "message";
	}
	
	@PostMapping("/cancelPayment.do")
	   @ResponseBody
	   public String paymentCancel(@RequestBody PaymentVO paymentVO) {
	      String merchantUid = null;
	      BigDecimal amount = null;
	      IamportResponse<Payment> reservePaymentResponse = null;
	      IamportResponse<Payment> paymentResponse = null;
	      String reserveImpUid = paymentVO.getImp_uid();

	      try {
	         reservePaymentResponse = api.paymentByImpUid(reserveImpUid);
	         Payment reservePayment = reservePaymentResponse.getResponse();
	         merchantUid = reservePayment.getMerchantUid();
	         amount = reservePayment.getAmount();

	         CancelData cancelData = new CancelData(merchantUid, false, amount);

	         paymentResponse = api.cancelPaymentByImpUid(cancelData);

	         if (paymentResponse != null) { // 이미 취소된 거래건은 response == null
	            Payment payment = paymentResponse.getResponse();
	         }

	      } catch (IamportResponseException e) {
	         int exceptionHttpStatusCode = e.getHttpStatusCode();
	         if (HttpStatus.UNAUTHORIZED.value() == exceptionHttpStatusCode) {
	            // 유효하지 않은 인증
	         } else if (HttpStatus.INTERNAL_SERVER_ERROR.value() == exceptionHttpStatusCode) {
	            // 아임포트 서버 에러
	         }
	      } catch (IOException e) {

	      }

	      int num = paymentService.updatePayment(paymentVO);
	      
	      Date today = new Date();
	      SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
	      String today_format = simpleDateFormat.format(today);
	      
	      ReservationVO reservationVO = new ReservationVO();
	      reservationVO.setMerchant(paymentVO.getMerchant());
	      reservationVO.setCancel_date(today_format);
	      reservationVO.setCancel_reason(paymentVO.getCancel_reason());
	      
	      reservationService.cancelReservation(reservationVO);

	      if (num == 0)
	         return "fali";
	      return "success";
	   }
	
	
}
