<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${contextPath}/resources/partner/css/update-picture.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>${hotel.hotelname}·숙박시설사진</title>
</head>
<script type="text/javascript">
	function saveRoomType(){
		var roomType = $("#roomType option:selected").val();
		var roomId = roomType.split(':');
		alert(roomId[0]);
		alert(roomId[1]);
		$("#room_id").attr("value", roomId[0]);
		$("#type").attr("value", roomId[1]);
	}
</script>

<body>
	<jsp:include page="/WEB-INF/partner/header.jsp" />
	<form action="update-picture.pdo" method="post"
		enctype="multipart/form-data">
		<div class="main">
			<h1>숙박 시설 사진</h1>
			<div class="body">
				<div class="gallery">
					<h2>메인 갤러리</h2>
					<div class="upload__box">
						<div class="upload__btn-box">
							<div class="pics">
								<label class="upload__btn"> <input id="image"
									class="upload__inputfile" type="file" name="uploadFile"
									value="사진 추가" multiple="multiple"> <span>사진추가</span>
								</label> <select id="roomType" name="roomType"
									onchange="saveRoomType();">
									<option value="none">---- 룸 타입 선택 ----</option>
									<c:forEach items="${type}" var="RoomVO">
										<option value="${RoomVO.room_id}:${RoomVO.type}">${RoomVO.type}</option>
									</c:forEach>
								</select> <input type="hidden" id="room_id" name="room_id"> <input
									type="hidden" id="type" name="type">
							</div>
						</div>

						<script>
                                $(document).ready(function () {
                                    $("#continue").on("click", function () {
                                        var formData = new FormData();
                                        var inputFile = $("input[name='uploadFile']");
                                        var files = inputFile[0].files;
                                        console.log(files);
                                        for (var i = 0; i < files.length; i++) {
                                            formData.append("uploadFile", files[i]);
                                        }
                                        $.ajax({
                                            url: 'update-picture.pdo',
                                            processData: false,
                                            contentType: false,
                                            data: formData,
                                            TYPE: 'POST',
                                            success: function (result) {
                                                alert("업로드 성공");
                                            }
                                        });
                                    });
                                });
                            </script>
						<script type="text/javascript">
                                jQuery(document).ready(function () {
                                    ImgUpload();
                                });

                                function ImgUpload() {
                                    var imgWrap = "";
                                    var imgArray = [];

                                    $('.upload__inputfile').each(function () {
                                        $(this).on('change', function (e) {
                                            imgWrap = $(this)
                                                .closest('.upload__box')
                                                .find('.upload__img-wrap');
                                            var maxLength = $(this).attr('data-max_length');
                                            var files = e.target.files;
                                            var filesArr = Array
                                                .prototype
                                                .slice
                                                .call(files);
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
                                                            var html = "<div class='upload__img-box'><div style='background-image: url(" + e.target.result +
                                                                    ")' data-number='" + $(".upload__img-close").length + "' data-file='" + f.name +
                                                                    "' class='img-bg'><div class='upload__img-close'></div></div></div>";
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
                                        var file = $(this)
                                            .parent()
                                            .data("file");
                                        for (var i = 0; i < imgArray.length; i++) {
                                            if (imgArray[i].name === file) {
                                                imgArray.splice(i, 1);
                                                break;
                                            }
                                        }
                                        $(this)
                                            .parent()
                                            .parent()
                                            .remove();
                                    });
                                }
                            </script>
						<div class="upload__img-wrap"></div>
						<div class="uploaded_img">
							<div>
								<h4>기존사진</h4>
								<br>
							</div>
							<div>
								<a href="#modal" id="popup">
									<div>
										<h3>${image.file_name}</h3>
										<br> <img src="${image.file_url}">
									</div>
								</a>
								<div style="display: flex; gap: 20px; margin-top: 20px; flex-wrap: wrap;">
								<c:forEach items="${room_image}" var="UpdateImageVO" varStatus="vs">
										<div onclick="document.getElementById('modalId${vs.index}').style.display='block'">
											<h3>${UpdateImageVO.file_name}</h3>
											<br> <img src="${UpdateImageVO.file_url}">
										</div>
								</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<div class="bottom">

						<input type="submit" id="continue" value="저장">
					</div>
				</div>
	</form>
	
	
		
	<form
		action="remove-picture.pdo?serialnumber=${UpdateImageVO.serialnumber}&&file_name=${UpdateImageVO.file_name}"
		method="POST">
		<div class="modal-wrapper" id="modal">
			<div class="modal">
				<div class="explain">
					<div class="change-pic">
						<div class="change-pic-1">
							<svg data-test-id="default-icon"
								xmlns="http://www.w3.org/2000/svg" viewbox="0 0 24 24">
                                            <path
									d="M14.25 15.75h-.75a.75.75 0 0 1-.75-.75v-3.75a1.5 1.5 0 0 0-1.5-1.5h-.75a.75.75 0 0 0 0 1.5h.75V15a2.25 2.25 0 0 0 2.25 2.25h.75a.75.75 0 0 0 0-1.5zM11.625 6a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"></path>
                                        </svg>
							<h3>사진 바꾸기</h3>
						</div>
						<div>
							<p>사진이 최소 1280x900 픽셀 이상인 경우 더 깊고 오래 남는 인상을 전하실 수 있습니다.</p>
						</div>
					</div>
				</div>

				<div class="modal-bottom">
					<div class="modal_pic">
						<h3>${image.file_name}</h3>
						<img src="${image.file_url}" name="file_url"> <input
							type="hidden" value="${UpdateImageVO.serialnumber}"> <input
							type="hidden" value="${UpdateImageVO.file_name}">
					</div>
					<div>

						<input type="submit" id="delete" value="삭제">

					</div>
					
				</div>
				<div class="close">
					<input type="button" id="close" value="닫기">
				</div>
			</div>
		</div>
		</div>
		</div>
	</form>
	<jsp:include page="/WEB-INF/partner/footer.jsp" />
	
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
		<script>
            $(document).ready(function () {
                $("#delete").on("click", function () {
                    var formData = new FormData();
                    var files = deleteFile[0].files;
                    console.log(files);
                    for (var i = 0; i < files.length; i++) {
                        formData.append("deleteFile", files[i]);
                    }
                    $.ajax({
                        url: 'update-picture.pdo',
                        processData: false,
                        contentType: false,
                        data: formData,
                        TYPE: 'GET',
                        success: function (result) {
                            alert("삭제 성공");
                        }
                    });
                });
            });
                                
         
        </script>
	<!--
	<script type="text/javascript">

       
       function open_url(e) {
       	const popup1 = document.getElementById("popup1");
           const close = document.getElementById("close");
           const modal = document.querySelector(".modal-wrapper");
             		if(modal.style.display == 'none'){
             			modal.style.display = 'block'
             		}
	</script> -->
</body>
</html>