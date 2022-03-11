<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 등록 · 사진</title>
<link rel="stylesheet" href="${contextPath}/resources/partner/css/picture.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<form action="picture.pdo" method="post" enctype="multipart/form-data">
      <div class="container">
         <header>
            <span id="logo"> <a href="#"> <img alt=""
                  src="https://s3.ap-northeast-2.amazonaws.com/booqueen.com/Booqueen.com.png"
                  class="header_logo"></a>
            </span>
            <nav>
               <ul id="topMenu">
                  <li><a href="/register/Register.html">로그인</a></li>
                  <li><a href="/register/Register.html">회원가입</a></li>
               </ul>
            </nav>
         </header>
      </div>
      <main class="contents">
         <div class="option">
            <label> <a href="/hotel_reg/Basic_Info.html">
                  <div class="basic">
                     <img alt=""
                        src="${pageContext.request.contextPath}/resources/partner/images/check.png">
                     기본정보
                  </div>
            </a>
            </label> <label> <a href="/hotel_reg/Price.html">
                  <div class="price">
                     <img alt=""
                        src="${pageContext.request.contextPath}/resources/partner/images/check.png">
                     구성 및 요금
                  </div>
            </a>
            </label> <label> <a href="/hotel_reg/Service.html">
                  <div class="service">
                     <img alt=""
                        src="${pageContext.request.contextPath}/resources/partner/images/check.png">
                     시설 및 서비스
                  </div></label> </a> <label> <a href="/hotel_reg/Facility.html">
                  <div class="fac">
                     <img alt=""
                        src="${pageContext.request.contextPath}/resources/partner/images/check.png">
                     편의시설
                  </div>
            </a>
            </label> <label> <a href="/hotel_reg/Picture.html">
                  <div class="pic">사진</div>
            </a>
            </label> <label> <a href="/hotel_reg/Policy.html">

                  <div class="policy">정책</div>
            </a>
            </label> <label> <a href="/hotel_reg/Payment.html">
                  <div class="payment">결제</div>
            </a>
            </label>

         </div>
         <br>
         <div class="head">
            <h2>숙박 시설 사진</h2>
            <br> 좋은 사진을 보면 고객이 숙소에 호기심을 가질 확률이 높아지므로, 숙소가 제공 사항을 정확히 보여줄 수
            있는 고화질 사진을 업로드하시길 추천합니다. Booqueen.com 웹사이트 내 귀사 페이지에 이 사진들이 표시됩니다.

            <div class="input">
               <div class="upload__box">
                  <span>사진 갤러리</span>
                  <div class="upload__btn-box">
                     <label class="upload__btn">
                        <p class="row1">최소 1장의 사진 등록 필요</p>
                        <p class="row2">사진은 숙소 등록 후 더 추가하실 수 있습니다</p>
                        <p class="row3">여기에 사진을 드래그해보세요</p>
                        <p class="row4">또는</p> <br> <input type="file" id="image"
                        name="uploadFile" multiple="multiple" data-max_length="20"
                        class="upload__inputfile"> <%--<input type="button" id="button-fake"
                           value="사진추가"> --%> <a class="btn-primary"> <svg
                              xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                              fill="currentColor" class="bi bi-image" viewBox="0 0 16 16">
  <path d="M6.002 5.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
  <path
                                 d="M2.002 1a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-12zm12 1a1 1 0 0 1 1 1v6.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12V3a1 1 0 0 1 1-1h12z" />
</svg> 사진추가
                     </a>
                     </label>
                  </div>
                  <script>
                     $(document).ready(function() {
                        $("#continue").on("click", function(){
                           var formData = new FormData();
                           var inputFile = $("input[name='uploadFile']");
                           var files = inputFile[0].files;
                           
                           console.log(files);
                                                      
                           for(var i = 0; i< files.length; i++) {
                              formData.append("uploadFile", files[i]);
                           }
                           
                           $.ajax({
                              url:'picture.pdo',
                              processData : false,
                              contentType : false,
                              data : formData,
                              TYPE : 'POST',
                              success : function(result) {
                                 alert ("업로드 성공");
                              }
                           }); 
                           
                        <%--   $.ajax({
                              url:'picture.pdo',
                              processData : false,
                              contentType : false,
                              data : formData,
                              type : "POST",
                              dataType:'json',
                              success : function(result) {
                                 console.log(result);
                              }
                           });--%>
                        });
                     });
                     </script>
                  <script type="text/javascript">
                     <%-- Image Preview --%>
                     jQuery(document).ready(function () {
                          ImgUpload();
                        });

                        function ImgUpload() {
                          var imgWrap = "";
                          var imgArray = [];

                          $('.upload__inputfile').each(function () {
                            $(this).on('change', function (e) {
                              imgWrap = $(this).closest('.upload__box').find('.upload__img-wrap');
                              var maxLength = $(this).attr('data-max_length');

                              var files = e.target.files;
                              var filesArr = Array.prototype.slice.call(files);
                              var iterator = 0;
                              filesArr.forEach(function (f, index) {

                                if (!f.type.match('image.*')) {
                                  return;
                                }

                                if (imgArray.length > maxLength) {
                                  return false
                                } else {
                                  var len = 0;
                                  for (var i = 0; i < imgArray.length; i++) {
                                    if (imgArray[i] !== undefined) {
                                      len++;
                                    }
                                  }
                                  if (len > maxLength) {
                                    return false;
                                  } else {
                                    imgArray.push(f);

                                    var reader = new FileReader();
                                    reader.onload = function (e) {
                                      var html = "<div class='upload__img-box'><div style='background-image: url(" + e.target.result + ")' data-number='" + $(".upload__img-close").length + "' data-file='" + f.name + "' class='img-bg'><div class='upload__img-close'></div></div></div>";
                                      imgWrap.append(html);
                                      iterator++;
                                    }
                                    reader.readAsDataURL(f);
                                  }
                                }
                              });
                            });
                          });

                          $('body').on('click', ".upload__img-close", function (e) {
                            var file = $(this).parent().data("file");
                            for (var i = 0; i < imgArray.length; i++) {
                              if (imgArray[i].name === file) {
                                imgArray.splice(i, 1);
                                break;
                              }
                            }
                            $(this).parent().parent().remove();
                          });
                        }
                        <%-- Image Preview --%>
                        
                  </script>

                  <div class="upload__img-wrap"></div>
                  <div class="desc">
                     <h4>전문적인 사진이 없으시다고요? 걱정 마세요.</h4>
                     <ol>
                        <li>활용 팁 : <img
                           src="${pageContext.request.contextPath}/resources/partner/images/cellphone.png">스마트폰
                           &nbsp; <img
                           src="${pageContext.request.contextPath}/resources/partner/images/camera.png">디지털
                           카메라
                        </li>
                        <li>꿀팁! <a href="#modal" id="popup">좋은 인상을 남길 수 있는 사진
                              촬영 팁!</a>
                        </li>
                        <li>저작권을 보유하고 있거나, 촬영 당사자에게 사용에 대한 동의를 얻은 사진만 사용하셔야 합니다. 사진
                           저작권자가 분명하지 않은 경우 해당 사진은 사용하지 마세요.</li>
                     </ol>
                     <div class="modal-wrapper" id="modal">
                        <div class="modal">
                           <div class="row-1">
                              <h3>숙소 사진 잘 찍는 방법</h3>
                           </div>
                           <hr>
                           <div class="row-2">
                              <img
                                 src="${pageContext.request.contextPath}/resources/partner/images/check.png">
                              <h4>완벽한 숙소 사진</h4>
                           </div>
                           <p>숙소 사진에는 건물 내관과 함께 외관도 포함되어 있는 것이 좋습니다. 거실, 침실, 욕실, 정원,
                              주방 및 수영장이나 스파와 같은 시설도 잊지 마세요. 객실 창문이나 발코니에서 바라볼 수 있는 좋은 전망이
                              있다면 꼭 홍보하시길 바랍니다!</p>

                           <div class="row-2">
                              <img
                                 src="${pageContext.request.contextPath}/resources/partner/images/check.png">
                              <h4>가로모드(Landscape)</h4>
                           </div>
                           <p>가로모드(Landscape)로 촬영하여 숙소의 공간을 최대한 담아보세요.</p>

                           <div class="row-2">
                              <img
                                 src="${pageContext.request.contextPath}/resources/partner/images/check.png">
                              <h4>낮 촬영</h4>
                           </div>
                           <p>낮 촬영을 추천합니다. 커튼을 열고 모든 조명을 밝혀서 숙소를 부각시켜보세요.</p>
                           <div class="row-2">
                              <img
                                 src="${pageContext.request.contextPath}/resources/partner/images/x.png">
                              <h4>사적인 글과 스크린</h4>
                           </div>
                           <p>개인 정보 보호를 위해 사진에는 자동차 번호판이나 TV 또는 컴퓨터, 노트북 스크린이 나타나지 않도록
                              해주세요.</p>
                           <div class="row-2">
                              <img
                                 src="${pageContext.request.contextPath}/resources/partner/images/x.png">
                              <h4>스크린샷과 지도</h4>
                           </div>
                           <p>귀사 숙소의 위치와 이동 경로는 저희가 고객에게 전달해드리므로 웹사이트 또는 지도 스크린샷을 직접
                              올리실 필요가 없어요.</p>
                           <div class="row-2">
                              <img
                                 src="${pageContext.request.contextPath}/resources/partner/images/x.png">
                              <h4>워터마크와 로고</h4>
                           </div>
                           <p>귀사에서 만들지 않은 워터마크, 호텔 요금, 로고 등이 사진에 나타나지 않도록 해주세요.</p>
                           <div class="row-2">
                              <img
                                 src="${pageContext.request.contextPath}/resources/partner/images/x.png">
                              <h4>예약 유치의 시작</h4>
                           </div>
                           <p id="last_p">당사 웹사이트 게재를 통해 예약을 유치하고자 하신다면, 있는 그대로의 모습을
                              담아낸 사진을 사용해야 합니다.</p>
                           <hr>
                           <div class="close">
                              <input type="button" id="close" value="닫기">
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="right">
                  <p>숙소 등록 후에도 온라인으로 숙소 판매가 시작되기 전에 정보를 수정하실 수 있습니다.</p>
               </div>
               <script type="text/javascript">
                        const popup = document.getElementById("popup");
                        const close = document.getElementById("close");
                        const modal = document.querySelector(".modal-wrapper");

                        popup.addEventListener('click', () => {
                            modal.style.display = 'block';
                        });
                            close.addEventListener('click', () => {
                            modal.style.display = 'none';
                        });                 
                    </script>
            </div>
         </div>
         <div>
            <input type="submit" id="continue" value="계속">
         </div>
      </main>
</form>
</body>
</html>