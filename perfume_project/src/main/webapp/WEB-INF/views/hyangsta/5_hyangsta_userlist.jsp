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
	// 피드 스크롤
	let tab = 1;
	let hyPostCnt = 15; // 보여줄 포스트 수
	let hytotalPostCnt = $('#hPostCnt').val(); // 포스트 총 수
	let postsNum = 1;	// rownum 시작번호
	let hyPostPage = parseInt( hytotalPostCnt / hyPostCnt ); // 전체 페이지
	if( hytotalPostCnt % hyPostCnt != 0){ hyPostPage++;	};
	let hyPostCurpage = 0;	// 현재 페이지
	let lastScroll = 0; // 기준값!!!!
	// 팔로워 스크롤
	let hFwerCnt = 20; // 보여줄 팔로워 수
	let hytotalFwerCnt = $('#hFwerCnt').val(); // 팔로워 총 수
	let fwersNum = 1 // rownum 시작번호
	let hyFwerPage = parseInt( hytotalFwerCnt / hFwerCnt );	// 전체 페이지
	if( hytotalFwerCnt % hFwerCnt != 0){ hyFwerPage++;	};
	let hyFwerCurpage = 0;	// 현재 페이지
	// 팔로잉 스크롤
	let hFingCnt = 20; // 보여줄 팔로잉 수
	let hytotalFingCnt = $('#hFingCnt').val(); // 팔로잉 총 수
	let fingsNum = 1 // rownum 시작번호
	let hyFingPage = parseInt( hytotalFingCnt / hFingCnt );	// 전체 페이지
	if( hytotalFingCnt % hFingCnt != 0){ hyFingPage++;	};
	let hyFingCurpage = 0;	// 현재 페이지
	
	// 화면 켜질 때 처음에 실행 됨
	hyFirstTab(postsNum);
	hySecTab(fwersNum);
	hyThrTab(fingsNum);
	
	// 팔로우 판단 유무 >> 팔로우 되어있으면 1, 안되어 있으면 0
	var hyFollowCk = $('#hyFollowCk').val();
	
	if(hyFollowCk == '1'){	// 팔로우o 팔로잉 버튼 보이게
		$('#hyfingBtn1').show(); 
	}else if(hyFollowCk == '0'){
		$('#hyfowBtn1').show(); // 팔로우x 팔로우 버튼 보이게
	}
	
	// 팔로우 버튼 클릭
	$("main").on("click", "button[id^=hyfowBtn]", function(){
		var btn = $(this);
		
		$.ajax({
			url : 'saveHyFollow.do',
			type: 'post',
			data: {
				'user_id' : $('#logUser_id').val(), // 로그인 아이디 footer에 적혀 있음
				'following_id' : $(this).attr('hui')	// 유저 아이디
			},
			success: function(data){ // data >> following_id 유저 정보 담겨 있음
				btn.hide(); // 팔로우 버튼 안보이게
				btn.next().show(); // 팔로잉 버튼 보이게
				
				// hyfowBtn1 / hyfingBtn1 >> 누를 때 팔로워 목록 새로고침 되고 숫자 변경 됨
				if( btn.attr('ex') == '1'){
					$('#hyFwerCnt').text(data.h_follower); // 팔로워 숫자 변경
					hyFwerCh();
				}
				
				// 나의 향스타에서 팔로우 누를 때, 팔로잉목록숫자 달라져야함
				if( $('#logUser_id').val() == $('#postUser_id').val() ){
					$('#hyFingCnt').text( parseInt($('#hyFingCnt').text())+1 ); // 팔로워 숫자 변경
				};
				
			}
		});
	
	});
	
	// 팔로잉 버튼 클릭
	$("main").on("click", "button[id^=hyfingBtn]", function(){
		var btn = $(this);
		
		$.ajax({
			url : 'deleteHyFollow.do',
			type: 'post',
			data: {
				'user_id' : $('#logUser_id').val(), // 로그인 아이디 footer에 적혀 있음
				'following_id' : $(this).attr('hui') // 유저아이디
			},
			success: function(data){ // data >> following_id 유저 정보 담겨 있음
				btn.hide(); // 팔로잉 버튼 안보이게
				btn.prev().show(); // 팔로우 버튼 보이게
				
				// hyfowBtn1 / hyfingBtn1 >> 누를 때 팔로워 목록 새로고침 되야함
				if( btn.attr('ex') == '1'){
					$('#hyFwerCnt').text(data.h_follower); // 팔로워 숫자 변경
					hyFwerCh();
				}
				
				// 나의 향스타에서 팔로잉 누를 때 >>  팔로잉팔로워 목록숫자 달라져야함
				if( $('#logUser_id').val() == $('#postUser_id').val() ){
					$('#hyFingCnt').text( parseInt($('#hyFingCnt').text())-1 );
				}
				
				
			}
		});
	});
	
	function hyFwerCh(){
		fwersNum = 1;
		hyFwerCurpage = 0;
		$('#hySecTabCon').empty();
		hySecTab(fwersNum);
	};
	function hyFingCh(){
		fingsNum = 1;
		hyFingCurpage = 0;
		$('#hyThrTabCon').empty();
		hyThrTab(fingsNum);
	}
	
	
	// 피드 탭 클릭 시
	$('#hyFristTab').click(function(){
		tab=1;
		lastScroll = 0;
		hyFwerCh();
		hyFingCh();
	});
	// 팔로워 탭 클릭시
	$('#hySecTab').click(function(){ 
		tab=2;
		lastScroll = 0;
		hyFwerCh();
		hyFingCh();
	});
	// 팔로잉 탭 클릭시
	$('#hyThrTab').click(function(){
		tab=3;
		lastScroll = 0;
		hyFwerCh();
		hyFingCh();
	});
	
	
	// 스크롤
	$(document).scroll(function(){
		if(tab == 1){	// 피드 탭 클릭 시 
			let maxHeight = $(document).height(); // 문서 전체의 높이
			let currentScroll = $(window).scrollTop() + $(window).innerHeight(); // 스크롤 위치값 + 화면의 높이
			let st = $(window).scrollTop(); // 현재 스크롤값 
		
			if ( st > lastScroll){	// 기준점보다 스크롤이 내려가면 작동하도록			
				if( maxHeight <= currentScroll ){
					if( hyPostCurpage < hyPostPage ){
						hyFirstTab(postsNum);
					}
				}
			}
			lastScroll = st;	// 스크롤 내려가니까 거기에 따라 기준점 바꿔줄려고
			
		}else if(tab == 2){ // 팔로워 탭 클릭 시
			maxHeight = $(document).height(); // 문서 전체의 높이
			currentScroll = $(window).scrollTop() + $(window).innerHeight(); // 스크롤 위치값 + 화면의 높이
			st = $(window).scrollTop(); // 현재 스크롤값 
			
			if ( st > lastScroll){	// 기준점보다 스크롤이 내려가면 작동하도록			
				if( maxHeight <= currentScroll ){
					if( hyFwerCurpage < hyFwerPage ){
						hySecTab(fwersNum);
					}
				}
			}
			lastScroll = st; // 스크롤 내려가니까 거기에 따라 기준점 바꿔줄려고
			
		}else if(tab == 3){ // 팔로잉 탭 클릭 시
			maxHeight = $(document).height(); // 문서 전체의 높이
			currentScroll = $(window).scrollTop() + $(window).innerHeight(); // 스크롤 위치값 + 화면의 높이
			st = $(window).scrollTop(); // 현재 스크롤값 
			
			if ( st > lastScroll){	// 기준점보다 스크롤이 내려가면 작동하도록			
				if( maxHeight <= currentScroll ){
					if( hyFingCurpage < hyFingPage ){
						hyThrTab(fingsNum);
					}
				}
			}
			lastScroll = st;	// 스크롤 내려가니까 거기에 따라 기준점 바꿔줄려고
		}
	});
	
	// 첫번째 탭(피드) ajax 함수
	function hyFirstTab(num){
		$.ajax({
			url: '5_hyangsta_userlist2.do',
			type: 'post',
			data: {
				'sNum' : num,
				'user_id' : $('#postUser_id').val()
			},
			success: function(data){
				postsNum += 15;
				hyPostCurpage += 1;
				
				$(data).each(function(){
					$('#hyFristTabCon').append(
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
					
					// 로그인 했을 경우만 좋아요 확인 함
					if( $('#logUser_id').val() != "" ){
						
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
					};
				});// end data 반복문
			}// end success
		});// end ajax
	};//end hyFirstTab()
	
	// 두번째 탭(팔로워) ajax 함수
	function hySecTab(num){
		$.ajax({
			url: 'getUserfwerList.do',
			type: 'post',
			data: {
				'sNum' : num,
				'user_id' : $('#postUser_id').val()
			},
			success: function(data){
				fwersNum += 20;
				hyFwerCurpage += 1;
				
				$(data).each(function(){
					$('#hySecTabCon').append(
						"<div class='col-6'><div class='card hover-scale'><div class='card-footer d-flex align-items-center'>"
						+ "<div onclick=\"location.href='5_hyangsta_userlist.do?user_id="+(this.user_id)+"'\" class='d-flex justify-content-between col-8' style='cursor: pointer'>"
	                    + "<div class='avatar avatar-sm'><img class='avatar-img rounded-circle' src='../resources/profileImg/"+(this.user_fname_en)+"'></div>"
		                + "<div class='col ps-3'><h6 class='m-0 small fw-500 opacity-8'>"+ (this.user_id) +"</h6>"
		                + "<span class='small'>"+(this.nickname)+"</span></div></div>"
                        + "<div class='product-cart-btn text-end col-4'>"
		                + "<button id='hyfowBtn2"+(this.user_id)+"' hui='"+(this.user_id)+"' class='btn btn-outline-danger' style='display:none;'>팔로우</button>"
						+ "<button id='hyfingBtn2"+(this.user_id)+"' hui='"+(this.user_id)+"' class='btn btn-primary' style='display:none;'>팔로잉</button>"
						+ "</div></div></div></div>"
					);
					
					// 로그인 했을 경우에만 팔로우 유무 판단해서 버튼 보이기
					if( $('#logUser_id').val() != "" && $('#logUser_id').val() != this.user_id){
						let user_id = this.user_id; // 유저 아이디
						$.ajax({
							url: 'getHyFollow.do',
							type: 'post',
							data: {
								'user_id' : $('#logUser_id').val(), // 로그인 아이디 
								'following_id' : user_id, // 유저아이디
							},
							success: function(data){
								if(data == 1){ // 팔로잉 중일경우
									$('#hyfingBtn2'+user_id).show();
								}else if(data == 0){ // 팔로잉 중 아닌경우
									$('#hyfowBtn2'+user_id).show();
								}
							}
						}); //end 두번째 ajax
					};
					
				});// end data 반복문
			}// end success
		});// end ajax
	};// end hySecTab()
	
	// 세번째 탭(팔로잉) ajax 함수
	function hyThrTab(num){
		$.ajax({
			url: 'getUserfingList.do',
			type: 'post',
			data: {
				'sNum' : num,
				'user_id' : $('#postUser_id').val()
			},
			success: function(data){
				fingsNum += 20;
				hyFingCurpage += 1;
				
				$(data).each(function(){
					$('#hyThrTabCon').append(
						"<div class='col-6'><div class='card hover-scale'><div class='card-footer d-flex align-items-center'>"
						+ "<div onclick=\"location.href='5_hyangsta_userlist.do?user_id="+(this.user_id)+"'\" class='d-flex justify-content-between col-8' style='cursor: pointer'>"
	                    + "<div class='avatar avatar-sm'><img class='avatar-img rounded-circle' src='../resources/profileImg/"+(this.user_fname_en)+"'></div>"
		                + "<div class='col ps-3'><h6 class='m-0 small fw-500 opacity-8'>"+ (this.user_id) +"</h6>"
		                + "<span class='small'>"+(this.nickname)+"</span></div></div>"
	                       + "<div class='product-cart-btn text-end col-4'>"
		                + "<button id='hyfowBtn3"+(this.user_id)+"' hui='"+(this.user_id)+"' class='btn btn-outline-danger' style='display:none;'>팔로우</button>"
						+ "<button id='hyfingBtn3"+(this.user_id)+"' hui='"+(this.user_id)+"' class='btn btn-primary' style='display:none;'>팔로잉</button>"
						+ "</div></div></div></div>"
					);
					
					// 로그인 했을 경우에만 팔로우 유무 판단해서 버튼 보이기
					if( $('#logUser_id').val() != ""  && $('#logUser_id').val() != this.user_id){
						let user_id = this.user_id; // 유저 아이디
						$.ajax({
							url: 'getHyFollow.do',
							type: 'post',
							data: {
								'user_id' : $('#logUser_id').val(), // 로그인 아이디 
								'following_id' : user_id, // 유저아이디
							},
							success: function(data){
								if(data == 1){ // 팔로잉 중일경우
									$('#hyfingBtn3'+user_id).show();
								}else if(data == 0){ // 팔로잉 중 아닌경우
									$('#hyfowBtn3'+user_id).show();
								}
							}
						}); //end 두번째 ajax
						
					};
				});// end data 반복문
			}// end success
		});// end ajax
	}; //end hyThrTab()
	
	// 좋아요 등록 클릭시
	$('#hyFristTabCon').on('click', "img[id^='hylikeYBtn']", function(){
		
		if( $('#logUser_id').val() == "" ){
			alert("로그인 후 이용해 주세요");
			return;
		};

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
	$('#hyFristTabCon').on('click', "img[id^='hylikeNBtn']", function(){
			
		if( $('#logUser_id').val() == "" ){
			alert("로그인 후 이용해 주세요");
			return;
		};

		let hpost_id3 = $(this).attr('hpi'); // 포스트 아이디
		
		$.ajax({
			url : 'deleteHyLike.do',
			type: 'post',
			data: {
				'hpost_id' : hpost_id3, // 포스트 아이디
				'user_id' : $('#logUser_id').val()
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
	<!-- hidden 향스타 유저 아이디 -->
	<input id="postUser_id" type="hidden" value="${hUser.user_id}">
	<!-- 로그인시 팔로우/언팔로우 판단 유무 -->
	<input id="hyFollowCk" type="hidden" value="${hyfollow}">
	<!-- 포스트 총 개수 -->
	<input id="hPostCnt" type="hidden" value="${hPostCnt}">
	<!-- 팔로워 총 수 -->
	<input id="hFwerCnt" type="hidden" value="${hUser.h_follower}">
	<!-- 팔로잉 총 수 -->
	<input id="hFingCnt" type="hidden" value="${hUser.h_following}">

	<!-- Wrapper -->
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
						<h1 class="m-0 h4 text-center" style="font-size: 2.5rem;">${hUser.user_id}
							님 향스타</h1>
					</div>
					<div class="col-lg-12 my-2" style="width: 100%">
						<ol class="breadcrumb dark-link m-0 small justify-content-center"
							style="text-align: center">
							<li class="breadcrumb-item"><a class="text-nowrap"
								href="5_hyangsta_all.do" style="color: #9397AD;"><i
									class="bi bi-home"></i>ALL</a></li>
							<li class="breadcrumb-item"><a class="hyFwBtn text-nowrap"
								href="5_hyangsta_followPList.do?user_id=${sessionScope.user_id}"
								style="color: #9397AD;"><i class="bi bi-home"></i>FOLLOWING</a></li>
							<c:if test="${sessionScope.user_id eq hUser.user_id}">
								<li class="breadcrumb-item"><a class="hyMyBtn text-nowrap"
									href="5_hyangsta_userlist.do?user_id=${sessionScope.user_id}"
									style="color: #e63946;"><i class="bi bi-home"></i>MY</a></li>
							</c:if>
							<c:if test="${sessionScope.user_id ne hUser.user_id}">
								<li class="breadcrumb-item"><a class="hyMyBtn text-nowrap"
									href="5_hyangsta_userlist.do?user_id=${sessionScope.user_id}"
									style="color: #9397AD;"><i class="bi bi-home"></i>MY</a></li>
							</c:if>
						</ol> 
					</div>
				</div>
			</div>
		</section>
		<!-- End Page Title -->
		<!-- Section -->
		<section class="section m-auto" style="width: 1010px;">
			<div class="container">
				<div class="row gy-4">
					<div class="col-12 pt-3 text-end">
						<!-- 포스트 쓰기 버튼 >> 나의 향스타 일 경우만 보이게-->
						<c:if test="${sessionScope.user_id eq hUser.user_id}">
							<button class="btn btn-primary" type="submit"
								onclick="location.href='5_hyangsta_writePost.do'">포스트
								쓰기</button>
						</c:if>
						<!-- 팔로우/언팔로우 버튼 >> 로그인 했을 때 다른 유저향스타 일경우만 보이게-->
						<div class="col-12 pt-3 text-end">
							<button id="hyfowBtn1" hui="${hUser.user_id}" ex="1" class="btn btn-outline-danger" type="submit"
								style="display: none">팔로우</button>
							<button id="hyfingBtn1" hui="${hUser.user_id}" ex="1" class="btn btn-primary" type="submit"
								style="display: none">팔로잉</button>
						</div>
					</div>

					<!-- Product Tabs -->
					<section class="pb-6 py-md-6 pb-lg-10 pt-lg-5">
						<div class="container" style="padding: 0;">
							<div class="product-tabs">
								<!-- 탭 버튼 -->
								<ul class="nav product-nav-tabs" id="myTab" role="tablist">
									<!-- 1번째 탭 (피드)-->
									<li id="hyFristTab" class="nav-item" role="presentation"
										style="width: calc(100%/ 3); margin-right: 0;"><a
										href="#" class="nav-link active text-center"
										id="pd_description_tab" data-bs-toggle="tab"
										data-bs-target="#pd_description" role="tab"
										aria-controls="pd_description" aria-selected="true">피드</a></li>
									<!-- 2번째 탭 (팔로워)-->
									<li id="hySecTab" class="nav-item" role="presentation"
										style="width: calc(100%/ 3); margin-right: 0;"><a
										href="#" class="nav-link text-center" id="pd_information_tab"
										data-bs-toggle="tab" data-bs-target="#px_information"
										role="tab" aria-controls="px_information"
										aria-selected="false">팔로워 <span id="hyFwerCnt">${hUser.h_follower}</span>
									</a></li>
									<!-- 3번째 탭 (팔로잉)-->
									<li id="hyThrTab" class="nav-item" role="presentation"
										style="width: calc(100%/ 3); margin-right: 0;"><a
										href="#" class="nav-link text-center" id="pd_reviews_tab"
										data-bs-toggle="tab" data-bs-target="#pd_reviews" role="tab"
										aria-controls="pd_reviews" aria-selected="false">팔로잉 <span
											id="hyFingCnt">${hUser.h_following}</span>
									</a></li>
								</ul>
								<!-- 탭 내용 -->
								<div class="tab-content" id="myTabContent">
									<!-- 1번째 탭 (피드)-->
									<div class="tab-pane fade show active" id="pd_description"
										role="tabpanel" aria-labelledby="pd_description_tab">
										<div id="hyFristTabCon" class="row">
										</div>
									</div>
									<!-- end 1번째 탭 내용-->
									<!-- 2번째 탭(팔로워) -->
									<div class="tab-pane fade" id="px_information" role="tabpanel"
										aria-labelledby="pd_information_tab">
										<div id="hySecTabCon" class="row">
										
										<!-- 11 -->
<!-- 											<div class='col-6'> -->
<!-- 											<div class='card hover-scale'> -->
<!-- 												<div class='card-footer d-flex align-items-center'> -->
<%-- 													<div onclick="location.href='5_hyangsta_userlist.do?user_id=${hPost.user_id}'" class="d-flex justify-content-between col-8" style="cursor: pointer"> --%>
<!-- 							                        	<div class='avatar avatar-sm'><img class='avatar-img rounded-circle' src='../resources/6_user/avatar-1.jpg'></div> -->
<!-- 								                        <div class='col ps-3'> -->
								                        	
<!-- 								                        	<h6 class='m-0 small fw-500 opacity-8'>아이디아이디</h6> -->
<!-- 								                        	<span class='small'>닉네임</span> -->
								                        	
<!-- 								                        </div> -->
<!-- 								                     </div> -->
						                        
<!-- 							                        <div class='product-cart-btn text-end col-4'> -->
<!-- 								                        <button id='hyfowBtn2"+(this.user_id)+"' hui='"+(this.user_id)+"' class='btn btn-outline-danger'>팔로우</button> -->
<!-- 													    <button id='hyfingBtn2"+(this.user_id)+"' hui='"+(this.user_id)+"' class='btn btn-primary' style='display:none;'>팔로잉</button> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 											</div> -->
										<!-- 11 -->
										</div>
									</div>
									<!-- end 2번째 탭 내용-->
									<!-- 3번째 탭(팔로잉) -->
									<div class="tab-pane fade" id="pd_reviews" role="tabpanel"
										aria-labelledby="pd_reviews_tab">
										<div id="hyThrTabCon" class="row"></div>
									</div>
									<!-- end 3번째 탭 내용-->
								</div>

							</div>
						</div>
					</section>
					<!-- End Product Tabs -->
				</div>
			</div>
		</section>
		<!-- End Section -->
	</main>
	<!-- End Main -->
	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
	<!-- End Footer -->
	<!-- End Wrapper -->
</body>
</html>