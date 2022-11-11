<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
<script type="text/javascript"
	src="../resources/assets/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

$(function(){
	
	var hyPostCnt = 15; // 보여줄 포스트 갯수
	var hytotalPostCnt = $('#hyfPostCnt').val(); // 포스트 수
	var sNum = 1;	// rownum 시작번호
	var hyPostPage = parseInt( hytotalPostCnt / hyPostCnt );	// 전체 페이지
	if( hytotalPostCnt % hyPostCnt != 0){ hyPostPage++;	};
	var hyPostCurpage = 0;	// 현재 페이지
	let lastScroll = 0; // 기준값!!!!
	
	getPostList(sNum); // 처음에 실행됨
	
	// 스크롤 페이징 
	$(document).scroll(function(){

		var maxHeight = $(document).height(); // 문서 전체의 높이
		var maxHeight = $('body').prop('scrollHeight'); // 문서 전체의 높이
		var currentScroll = $(window).scrollTop() + $(window).innerHeight(); // 스크롤 위치값 + 화면의 높이
		let st = $(window).scrollTop(); // 현재 스크롤값 
		var offset = $('#comm_div').offset();
		
		if ( st > lastScroll){	// 기준점보다 스크롤이 내려가면 작동하도록			
			if( maxHeight <= currentScroll ){
				if( hyPostCurpage < hyPostPage ){
					getPostList(sNum);
// 					$('.window').animate( { scrollTop : (offset.top - $('.window').height()/2) }, 500); // 스크롤 위치 이동
				}
			}
		}
		lastScroll = st;	// 스크롤 내려가니까 거기에 따라 기준점 바꿔줄려고
	}); // end 스크롤 이벤트

	// 스크롤 때 실행시킬 함수
	function getPostList(num){
		$.ajax({
			url: '5_hyangsta_followPList2.do',
			type: 'post',
			data: {
				'searchCondition' : $('#searchCondition').val(),
				'searchKeyword' : $('#searchKeyword').val(),
				'user_id' : $('#logUser_id').val(), // footer에 적혀있음
				'sNum' : num
			},
			success: function(data){
				sNum += 15;
				hyPostCurpage += 1;
				
				// 향스타 포스트가 없을 경우
				if(data.length == 0 && $('#searchKeyword').val() != ""){
					$('#hpostDiv').append(
						"<div class='text-center' style='font-size: 1.5rem;'>검색 결과가 없습니다.</div>"
					);
					return false;
				}else if( $('#searchKeyword').val() != "" ){
					$('#hpostDiv').append(
							"<div class='text-center' style='font-size: 1.5rem;'><strong>"+data.length+"</strong> 개의 자료가 검색되었습니다.</div>"
					);
				}
				
				$(data).each(function(){
					$('#hpostDiv').append(
						"<div class='col-4'><div class='card'><div class='card-footer d-flex align-items-center'>"
                       	+ "<div onclick=\"location.href='5_hyangsta_userlist.do?user_id="+(this.user_id)+"'\" class='col-10 d-flex' style='cursor: pointer'>"
		                + "<div class='avatar avatar-sm'><img class='avatar-img rounded-circle' src='../resources/profileImg/"+(this.user_fname_en)+"'></div>"
		                + "<div class='col ps-3'><h6 class='m-0 small fw-800 opacity-8'>"+(this.user_id)+"</h6>"
		                + "<span class='fs-xs'>"+(this.hp_date)+"</span></div></div>"
		                + "<div class='d-none d-xl-block text-center col-2'>" // 좋아요 버튼
		                + "<img id='hylikeYBtn"+(this.hpost_id)+"' hpi='"+(this.hpost_id)+"' src='../resources/assets/img/hylikeYBtn.png' Style='width:20px; height:20px; cursor: pointer;'>"
                 		+ "<img id='hylikeNBtn"+(this.hpost_id)+"' hpi='"+(this.hpost_id)+"' src='../resources/assets/img/hylikeNBtn.png' Style='width:20px; height:20px; cursor: pointer; display:none;'>"
                 		+ "<span id='hylikeCnt"+(this.hpost_id)+"' class='fs-xs ps-1'>"+(this.hp_like)+"</span>"
                 		+ "</div>" // 좋아요 버튼 끝
		                + "</div><div class='card-body hover-scale'><div class='mb-3 hover-scale-in text-center'>"
		                + "<a href='5_hyangsta_viewPost.do?hpost_id="+(this.hpost_id)+"&user_id="+(this.user_id)+"'>"
		                + "<img src='../resources/5_hy_img/"+(this.hp_fname_en)+"' style='height:237px;'>"
		                + "</a></div></div></div></div>"
					);
					
					let hpost_id1 = this.hpost_id;
					
					$.ajax({
						url: 'getHyLike.do',
						type: 'post',
						data: {
							'user_id' : $('#logUser_id').val(),
							'hpost_id' : hpost_id1
						},
						success: function(data){
							if(data == 1){ // 좋아요 눌렸을 경우
								$('#hylikeYBtn'+hpost_id1).hide();
								$('#hylikeNBtn'+hpost_id1).show();
							}
						}
					}); //end 두번째 ajax
				});// end data 반복문
			}// end success
		});// end ajax
	}; // end getPostList()
	
	// 좋아요 등록 클릭 시
	$('#hpostDiv').on('click', "img[id^='hylikeYBtn']", function(){
		let hpost_id2 = $(this).attr('hpi'); // 포스트 아이디
		$.ajax({
			url : 'saveHyLike.do',
			type: 'post',
			data: {
				'hpost_id' : hpost_id2, // 포스트 아이디
				'user_id' : $('#logUser_id').val()
			},
			success: function(data){
				$('#hylikeYBtn'+hpost_id2).hide(); // 빈하트
				$('#hylikeNBtn'+hpost_id2).show(); // 빨간하트
				$('#hylikeCnt'+hpost_id2).text(data.hp_like);
			}
		});
		
	});
	
	// 좋아요 취소 클릭시
	$('#hpostDiv').on('click', "img[id^='hylikeNBtn']", function(){
		let hpost_id3 = $(this).attr('hpi'); // 포스트 아이디
		$.ajax({
			url : 'deleteHyLike.do',
			type: 'post',
			data: {
				'hpost_id' : hpost_id3, // 포스트 아이디
				'user_id' : $('#logUser_id').val() // 로그인 footer에 적혀있음
			},
			success: function(data){
				$('#hylikeYBtn'+hpost_id3).show(); // 빈하트
				$('#hylikeNBtn'+hpost_id3).hide(); // 빨간하트
				$('#hylikeCnt'+hpost_id3).text(data.hp_like);
			}
		});
		
	});
	
});

</script>
</head>
<body>
	<!-- 포스트 갯수 -->
	<input id="hyfPostCnt" type="hidden" value="${hyfPostCnt}">
	<!-- 검색에 저장 -->
	<input id="searchCondition" type="hidden" value="${searchCondition}">
	<input id="searchKeyword" type="hidden" value="${searchKeyword}">
	<!-- Header Height -->
	<!-- Header -->
	<jsp:include page="/WEB-INF/views/hf/header.jsp"></jsp:include>
	<!-- End Header -->
	<!-- Main -->
	<main style="min-height: 79vh;">
		<!-- Page Title -->
		<section class="py-3 bg-gray-100" style="height: 200px;">
			<!-- style 추가-->
			<div class="container" style="padding-top: 35px;">
				<div class="row align-items-center">
					<div class="col-lg-12 my-2">
						<h1 class="m-0 h4 text-center" style="font-size: 2.5rem;">향스타그램</h1>
					</div>
					<div class="col-lg-12 my-2" style="width: 100%">
						<ol class="breadcrumb dark-link m-0 small justify-content-center"
							style="text-align: center">
							<li class="breadcrumb-item"><a class="text-nowrap"
								href="5_hyangsta_all.do" style="color: #9397AD;"><i
									class="bi bi-home"></i>ALL</a></li>
							<li class="breadcrumb-item"><a class="hyFwBtn text-nowrap"
								href="5_hyangsta_followPList.do?user_id=${sessionScope.user_id}"
								style="color: #e63946;"><i class="bi bi-home"></i>FOLLOWING</a></li>
							<li class="breadcrumb-item"><a class="hyMyBtn text-nowrap"
								href="5_hyangsta_userlist.do?user_id=${sessionScope.user_id}"
								style="color: #9397AD;"><i class="bi bi-home"></i>MY</a></li>
						</ol>
					</div>
				</div>
			</div>
		</section>
		<!-- End Page Title -->
		<!-- Section -->
		<section class="section m-auto" style="width: 1010px;">
			<div class="container">
				<div class="container">
					<div class="row gy-4">
						<!-- 포스트 쓰기 btn -->
						<div class="col-12 pt-3 text-end">
							<button id="hp_wirte" class="btn btn-primary"
								onclick="location.href='5_hyangsta_writePost.do'">포스트
								쓰기</button>
						</div>
						<!-- 검색 -->
						<form action="5_hyangsta_followPList.do?user_id=${sessionScope.user_id}" method="post" class="col-12 mb-3 input-group" style="width: 100%">
							<!-- 셀렉트 -->
							<select name="searchCondition" class="form-select"
								style="flex: none; width: 15%;">
								<option value='user_id'>아이디</option>
								<option value='hp_tag'>해시태그</option>
							</select>
							<!-- Search input -->
							<input name="searchKeyword" class="form-control shadow-none"
								type="text" placeholder="What are you looking for?">
							<!-- Search button -->
							<button type="submit" class="btn btn-primary shadow-none">
								<i class="bi bi-search"></i>
							</button>
						</form>
						<!-- 향스타 포스트 들어갈 곳 -->
						<div id="hpostDiv" class="row gy-4"></div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Section -->
	</main>
	<!-- End Main -->
	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
	<!-- End Footer -->
</body>
</html>