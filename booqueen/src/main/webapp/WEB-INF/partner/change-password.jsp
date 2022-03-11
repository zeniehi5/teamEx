<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${contextPath}/resources/partner/css/change-password.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>${hotel.hotelname} · 비밀번호 변경</title>
</head>

<script type="text/javascript">
   $(function() {
      $('#Pw').keyup(function() {
         $('#chkNotice').html('');
      });

      $('#PwCheck').keyup(function() {
            
            if($('#Pw').val() == $('#PwCheck').val()){
               $('#chkNotice').html('비밀번호 일치함<br><br>');
               $('#chkNotice').attr('color', '#199894b3');      
            }else if ($('#Pw').val() != $('#PwCheck').val()) {
               $('#chkNotice').html('비밀번호 일치하지 않음<br><br>');
               $('#chkNotice').attr('color', '#f82a2aa3');
            
         }
      });
   });
</script>
<body
   class="m-property_details m-facilities ua-chrome-97 ua-chrom is_desktop is_cjk is_new_hnav fix-badge-color env-self-manage facilities-buification-1 contents-ready">
   <form action="change-password.pdo" method="post">
   <input type="hidden" name="email" value="${email }">
      <div class="js-dont-warn-about-unsaved-changes">
       <jsp:include page="/WEB-INF/partner/header.jsp"/>
      </div>
      <div id="main-container"
         class="container-fluid fta_phone_alt container-fluid--color">
         <main id="content">
            <div class="page-body">
               <div class="page-header-component-title th__page-header">
                  <div class="row">
                     <div class="th__page-header__content col-md-12">
                        <h1 class="th__page-header__title">비밀번호 변경</h1>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-12">
                     
                        <fieldset>
                           <div class="row">
                              <div class="describe-block">
                                 <ul class="describe-text list-unstyled">
                                    <li id="row-1">새 비밀번호 입력 시</li>
                                    <li>- 8자 이상 입력하십시오.</li>
                                    <li>- 최소 1자 이상의 문자 및 숫자를 조합해 주십시오.</li>
                                    <li>- 보안을 위해, 변경 시마다 이전과 다른 비밀번호를 등록하고 예전의 비밀번호를 재사용하지
                                       마십시오.</li>
                                 </ul>
                              </div>
                              <div class="form-group col-sm-6">
                                 <br> <label>현재 비밀번호</label>
                                 <div class="controls">
                                    <input type="password" name="password" class="form-control">
                                 </div>
                              </div>
                           </div>
                           <div class="row">
                              <div class="form-group col-sm-6">
                                 <label>새 비밀번호</label>
                                 <div class="controls">
                                    <input type="password" id="Pw" name="confirmpass"
                                       class="form-control">
                                 </div>
                              </div>
                              <div class="form-group col-sm-6">
                                 <label>새 비밀번호 확인</label>
                                 <div class="controls">
                                    <input type="password" id="PwCheck" class="form-control">
                                    <font id="chkNotice" size="2"></font>
                                 </div>
                              </div>
                           </div>
                        </fieldset>
                        <input type="submit" class="btn btn-primary btn-block btn-lg" id="test" value="저장">
                  </div>
               </div>
            </div>
         </main>
      </div>
      <div class="js-dont-warn-about-unsaved-changes">
         <jsp:include page="/WEB-INF/partner/footer.jsp"/>
      </div>
   </form>
</body>
</html>
