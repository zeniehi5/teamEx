<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<title>Insert title here</title>
</head>
<body>
<script>
    $(function(){
    	var IMP = window.IMP; // 생략가능
    	   IMP.init('imp09566797');  // 가맹점 식별 코드

    	   IMP.request_pay({
    	      pg : 'kakao', // 결제방식
    	       pay_method : 'card',	// 결제 수단
    	       merchant_uid : 'merchant_' + new Date().getTime(),
    	      name : '주문명: 결제 테스트',	// order 테이블에 들어갈 주문명 혹은 주문 번호
    	       amount : '100',	// 결제 금액
    	       buyer_email : 'dd@dfads',	// 구매자 email
    	      buyer_name :  'asd',	// 구매자 이름
    	       buyer_tel :  '123',	// 구매자 전화번호
    	       buyer_addr :  'afdw',	// 구매자 주소
    	       buyer_postcode :  '123',	// 구매자 우편번호
    	       m_redirect_url : '/reservation/payments.do'	// 결제 완료 후 보낼 컨트롤러의 메소드명
    	   }, function(rsp) {
    		if ( rsp.success ) { // 성공시
    			var msg = '결제가 완료되었습니다.';
    			msg += '고유ID : ' + rsp.imp_uid;
    			msg += '상점 거래ID : ' + rsp.merchant_uid;
    			msg += '결제 금액 : ' + rsp.paid_amount;
    			msg += '카드 승인번호 : ' + rsp.apply_num;
    		} else { // 실패시
    			var msg = '결제에 실패하였습니다.';
    			msg += '에러내용 : ' + rsp.error_msg;
    		}
    	});
    });   
    </script>
 
</body>
</html>