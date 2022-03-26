<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
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
    	var path = '${contextPath}';
    	var IMP = window.IMP; // 생략가능
    	   IMP.init('imp09566797');  // 가맹점 식별 코드    	   
    	   IMP.request_pay({
    		   pg : 'html5_inicis',
    		   pay_method : 'card',
    		   merchant_uid : 'merchant_' + new Date().getTime(),
    		   name : '주문명:결제테스트',
    		   amount : 14000,
    		   buyer_email : 'iamport@siot.do',
    		   buyer_name : '구매자이름',
    		   buyer_tel : '010-1234-5678',
    		   buyer_addr : '서울특별시 강남구 삼성동',
    		   buyer_postcode : '123-456'
    	   }, function(rsp) {
    		if ( rsp.success ) { // 성공시
    			alert('success');
    		
    			jQuery.ajax({
    	            url: path + "/reservation/payments.do", // 예: https://www.myservice.com/payments/complete
    	            method: "POST",
    	            headers: { "Content-Type": "application/json" },
    	            data: {
    	                imp_uid: rsp.imp_uid,
    	                merchant_uid: rsp.merchant_uid
    	            }
    	        }).done(function (data) {
    	          // 가맹점 서버 결제 API 성공시 로직
    	        })
  
    		} else { // 실패시
			var msg = '결제에 실패하였습니다.';
			alert(msg);
    		}
		});
    });   
    </script>
 
</body>
</html>