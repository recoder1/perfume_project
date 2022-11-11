<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="dark">
<head>
<!-- metas -->
<meta charset="utf-8">
<meta name="author" content="pxdraft" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="keywords" content="Crikon – Multipurpose Template" />
<meta name="description" content="Crikon – Multipurpose Template" />
<!-- title -->
<title>오드비 - Eau de Vie</title>
<!-- font : Google Noto Serif Korean -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap"
	rel="stylesheet">
<!-- Favicon -->
<link rel="shortcut icon" href="../resources/assets/img/logo_black_icon.png" >
<!-- CSS Template -->
<link href="../resources/assets/css/theme.css" rel="stylesheet">
<style>
* {
	font-family: 'Noto Serif KR', serif;
}
</style>
<script type="text/javascript" src="../resources/assets/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		// 이미지 미리 보기
		$("input[type=file]").on("change", function(){
			
			var file = event.target.files[0];
			var reader = new FileReader();
			reader.onload = function(e){
				
				$('#post_img').attr("src", e.target.result);
			}
			reader.readAsDataURL(file);
		})
		
		
		// 유효성 검사
		$("button[type=button]").click(function(){
		
			// 해시태그 공백 제거
			$('#hp_tag').val( $('#hp_tag').val().replace(/ /g, "") );
			// 해시태그 # 시작 입력
			if($('#hp_tag').val() != ''){
				// 해시태그 # 시작 입력
				if($('#hp_tag').val().charAt(0) != "#"){
					alert("해시태그 앞에 #을 써주세요");
					$('#hp_tag').focus();
					return;
				}
			}
			// 내용 입력 확인
			if($("#hp_content").val() ==''){
				alert("내용을 써주세요.");
				$("#hp_content").focus();
	    		return;
			}
			// 사진 입력 확인
			if($("input[name=file]").val() ==''){
				alert("사진을 올려주세요.");
	    		return;
			}
		
			document.hyPost.action="saveHyPost.do";
			document.hyPost.submit();
		})
		
		
		// 포스트 내용 글자 수 확인
		$('#hp_content').keyup(function(){
			var hp_content = $(this).val();
  
			$('#textCnt span').html(hp_content.length);
			if (hp_content.length > 500){
			  alert("최대 500자까지 입력 가능합니다.");
			  $(this).val(hp_content.substring(0, 500));
			  $('#textCnt span').html(500);
			}
		});

		// 해시태그 글자 수 확인
		$('#hp_tag').keyup(function(){
			var tag_content = $(this).val();
  
			$('#tagCnt span').html(tag_content.length);
			if (tag_content.length > 100){
			  alert("최대 100자까지 입력 가능합니다.");
			  $(this).val(tag_content.substring(0, 100));
			  $('#tagCnt span').html(100);
			}
		});
		
		
	})
	
	


</script>
</head>
<body>
<!-- End Wrapper -->
<!-- Header Height -->
<!-- Header -->
<jsp:include page="/WEB-INF/views/hf/header.jsp"></jsp:include>
<!-- End Header -->
<!-- Main -->
<main>
	<!-- Page Title -->
	<section class="py-3 bg-gray-100" style="height: 200px;">
		<div class="container" style="padding-top: 35px;">
			<div class="row align-items-center">
				<div class="col-lg-12 my-2">
					<h1 class="m-0 h4 text-center" style="font-size: 2.5rem;">향스타그램</h1>
				</div>
				<div class="col-lg-12 my-2" style="width: 100%">
					<ol class="breadcrumb dark-link m-0 small justify-content-center"
						style="text-align: center">
					 	<li><a class="dropdown-item" href="../learn/2_terms.do">기본용어</a></li>
                        <li><a class="dropdown-item" href="../learn/2_notes.do">향조</a></li>
                        <li><a class="dropdown-item" href="../learn/2_houses.do">하우스</a></li>
					</ol>
				</div>
			</div>
		</div>
	</section>
	<!-- End Page Title -->
	<!-- ----------------------------------- -->
	<!-- Section -->
	<section class="section m-auto" style="width: 800px;">
		<div class="card mt-5">
			<div class="card-header py-3">
				<h6 class="mb-0 h4">향스타 포스트 쓰기</h6>
			</div>
			<div class="card-body">
				<form id="hyPost" class="row gy-4" name="hyPost" method='post' enctype="multipart/form-data" onsubmit="return fasle">
					<!-- 사진업로드-->
					<div class="col-6" style="height:371px;">
						<!-- 선택한 이미지 들어가는 곳 -->
						<div id="insertImg_div">
							<img id="post_img" style="height:371px; width:371px;"
							src="http://via.placeholder.com/370.jpg" alt="370*370 size image">
						</div>
						<!-- 파일선택 버튼 -->
						<div id="fileSelect_btn" style="height: 40px; padding-top: 5px;">
							<input type="file" class ="form-control" name = "file" accept = "image/*">
<!-- 							<input type="file" accept="image/*" name=file> -->
						</div>
					</div>
					<!-- 향스타 텍스트-->
					<div class="col-6">
						<div>
							<label class="form-label" for="hp_content"> 포스트 내용 </label>
							<textarea class="form-control" id="hp_content" type="text"
								name="hp_content" style="height: 290px;" placeholder="최대 500자까지 입력 가능합니다."></textarea>
							<div id="textCnt" class="text-end">(<span>0</span>/500)</div>
						</div>
						<div>
							<label class="form-label" for="hp_tag"> #해시태그 </label>
							<input class="form-control" id="hp_tag" type="text"
								placeholder="최대 100자까지 입력 가능합니다." name="hp_tag">
							<input type="text" style="display:none;">
							<div id="tagCnt" class="text-end">(<span>0</span>/100)</div>
						</div>
							<input type="hidden" name="user_id" value="${sessionScope.user_id}">
					</div>
					<!-- 올리기 버튼-->
					<div class="col-12 pt-3 text-end">
						<button class="btn btn-primary" type="button">포스트 등록</button>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- End Section -->

</main>
<!-- Footer -->
<jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
<!-- End Footer -->
<!-- End Wrapper -->
</body>

</html>