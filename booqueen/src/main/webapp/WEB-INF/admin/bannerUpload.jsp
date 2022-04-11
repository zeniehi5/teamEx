<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>배너 등록</title>
	<link href="${contextPath}/resources/admin/css/styles.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
		var maxSize = 5242880; //5MB
		
		function checkExtension(fileName, fileSize) {
			if(fileSize >= maxSize) {
				alert("파일 사이즈 초과");
				return false;
			}
	        
			if(regex.test(fileName)) {
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			return true;
		}
		
		$("#formFileMultiple").on("click", function(e){
			var formData = new FormData();
			var inputFile = $("input[name='uploadFile']");
			var files = inputFile[0].files;
			console.log(files);
			
			//add filedate to formdata
			for(var i=0; i<files.length; i++) {
				if(!checkExtension(files[i].name, files[i].size)) {
					return false;
				}
				formData.append("uploadFile", files[i]);
				$('input[id=banner_img]').attr('value', fileName);
			}
	    });
	});
	</script>
</head>

<body class="bg-black">
	<div id="map" style="width: 0px; height:0px;"></div>
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content" style="overflow: hidden;">
			<main>
				<div class="container1" style="max-width:100%;">
					<div class="row justify-content-center">
						<div class="col-lg-7" style="width: 40%;">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header"><h3 class="text-center font-weight-light my-4">배너 등록</h3></div>
								<div class="card-body" style="padding: 3rem 3rem;">
									<form action="bannerRegister.mdo" method="post" id="addBanner" enctype="multipart/form-data">
										<div class="row mb-3" style="margin-bottom: 0!important;">
											<div class="col-md-6" style="width: 100%;">
												<div class="form-floating mb-3 mb-md-0">
													<input class="form-control" id="banner_title" name="city" type="text" placeholder="Enter your first name">
													<label for="banner_title">도시명</label>
												</div>
											</div>
										</div>
										<div class="mb-3">
											<label for="formFileMultiple" class="form-label"></label>
											<input name="uploadFile" class="form-control" type="file" id="formFileMultiple" multiple>
										</div>
										<div class="d-grid gap-2" style="display: flex!important; justify-content: center; margin-top: 38px;">
											<button class="btn btn-primary" type="submit" style="padding: 8px 20px; min-width: 14%;">배너 등록</button>
											<div class="d-grid" style="min-width: 14%;">
												<a class="btn btn-danger btn-block" id="cancle" style="background-color: #dc3545; border:solid 1px #dc3545; width: 100%; padding: 8px 20px;" href="banner.mdo">취	소</a>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/admin/javascript/datatables-simple-demo.js"></script>
</body>
</html>