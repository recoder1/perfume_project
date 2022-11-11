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
	
	
	table{
		width: 766px;
		talbe-layout: fixed;
	}
	
	</style>

<script type="text/javascript" src="../resources/assets/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	// 스크롤 페이징 변수
	var hyCommCnt = 15; // 보여줄 댓글 갯수
	var hytotalCommCnt = $('#hyCommCnt').val(); 	//전체 댓글 수
	var sNum = 16;	// rownum 시작번호
	var hyCommPage = ( parseInt(hytotalCommCnt) / hyCommCnt );	// 전체 페이지
	if( hytotalCommCnt % hyCommCnt != 0){ hyCommPage++;	};
	var hyCommCurpage = 1;	// 현재 페이지
	let lastScroll = 0; // 기준값!!!!
	
	// 댓글 등록
	$('#hyComm').submit(function(){
		// 내용 입력 확인
		if($("#hc_content").val() ==''){
			alert("내용을 써주세요.");
			$("#hc_content").focus();
    		return false;
		}		
		// 댓글 등록
		$.ajax({
			url: 'saveHyComm.do',
			type: 'post',
			data: {
				'hpost_id' : $('#hpost_id').val(),
				'hc_user_id' : $('#logUser_id').val(), // 로그인 아이디 footer에 적혀 있음
				'hc_content' : $('#hc_content').val()
			},
			success: function(){
				location.reload();
// 				sNum = 1; // rownum 1로 바꿔줘야함
// 				hyCommCurpage = 0; // 현재 페이지도 바꿔줘야함
// 				$('#comm_div').empty(); // 댓글 div 삭제
// 				hyCommLoad(); // 댓글 div 불러오기
			}	
		});
		$('#hc_content').val(''); // 댓글 창 초기화
		return false;		// submit 전송되지 않도록 막아줌
	});

	
	// 댓글 수정
	$('#comm_div').on("click","#hyCommUpdBtn", function(){
		if( $("textarea[id^='hyCommText']").length ){ // input 태그가 있다면
			alert("댓글 수정을 마무리 해주세요");
		}else{
			// 댓글 번호
			var hcomment_id = $(this).parent().next().val();
			// 댓글 내용
			var hc_content = $('#hc_content'+hcomment_id).html();
			// 댓글 수정 폼
			$('#hc_content'+hcomment_id).html(
				"<textarea id='hyCommText"+hcomment_id+"' style='width:100%; overflow:visible;'></textarea>"
			)
			$('#hyCommText'+hcomment_id).val(hc_content).focus();
			// 수정 삭제 btn >> 등록 취소 btn
			$('#hyCommBtn'+hcomment_id).html(
					"<ol class='breadcrumb dark-link m-0 small justify-content-center' style='text-align: center'>"
					+"<li id='hyReUpdBtn' ex='"+hcomment_id+"' class='breadcrumb-item text-nowrap' style='color: #9397AD; cursor: pointer;'>"
					+'등록'+"</li>"
					+"<li id='hyReCanBtn' onclick='hyReloadComm()' class='breadcrumb-item text-nowrap' style='color: #9397AD; cursor: pointer;'>"
					+'취소'+"</li></ol>"
			);
		};
	});
	
	// 댓글 수정 >> 등록 버튼 눌렀을 때
	$('#comm_div').on("click","#hyReUpdBtn", function(){
		$.ajax({
			url: 'updateHyComm.do',
			type: 'post',
			data: {
				'hcomment_id' : $(this).attr('ex'),
				'hc_content' : $("textarea[id^='hyCommText']").val()
			},
			success: function(){
				$('#comm_div').empty(); // 댓글 div 삭제
				sNum = 1; // rownum 1로 바꿔줘야함 
				hyCommCurpage = 0; // 현재 페이지도 바꿔줘야함
				hyCommLoad(); // 댓글 div만 새로고침
			}
		});
	});
	
	// 댓글 수정 >> 취소 버튼 눌렀을 때
	$('#comm_div').on("click","#hyReCanBtn", function(){
		$('#comm_div').empty(); // 댓글 모두 삭제
		sNum = 1; // rownum 1로 바꿔줘야함
		hyCommCurpage = 0; // 현재 페이지도 바꿔줘야함		
		hyCommLoad(); // 댓글 div만 새로고침
	});
	
	// 댓글 삭제
	$('#comm_div').on("click","#hyCommDelBtn", function(){
		var msg = confirm('댓글을 삭제 하시겠습니까?');
		if(msg){ // 확인 눌렀을 때
			$.ajax({
				url: 'deleteHyComm.do',
				type: 'post',
				data: { 'hcomment_id' : $(this).parent().next().val(),
						'hpost_id' : $('#hpost_id').val()
				},
				success: function(){
					$('#comm_div').empty(); // 댓글 모두 삭제
					sNum = 1; // rownum 1로 바꿔줘야함
					hyCommCurpage = 0; // 현재 페이지도 바꿔줘야함		
					hyCommLoad(); // 댓글 div만 새로고침
				}
			});
			
		}else{
			return false; // 삭제 취소
		}
		
	})
	
	// 댓글 div 불러오기
	function hyCommLoad(){
		$.ajax({
			url: 'getHyComm.do',
			type: 'post',
			data: {
				'hpost_id' : $('#hpost_id').val(),
				'sNum' : sNum
			},
			success: function(data){
				sNum += 15;
				hyCommCurpage += 1;
				$(data).each(function(){
					$('#comm_div').append("<tr class='pb-'><td class='pb-3' style='width: 150px; font-weight: bolder;'>"
						+ (this.hc_user_id) +"</td>"
						+ "<td id='hc_content"+(this.hcomment_id)+"' class='pb-3' style='width: 600px;'>"
						+ (this.hc_content) +"</td>"
						+ "<td class='pb-3 fs-xs text-center' style='width: 100px;'>"
						+ (this.hc_date)+"</td>"
						+ "<td id='hyCommBtn"+(this.hcomment_id)+"' class='pb-3' style='width: 100px;'></td>/</tr>"
					);
					// 로그인 아이디와 작성자 아이디가 같을 경우만 append 수정 취소 버튼
					if( $('#logUser_id').val() == (this.hc_user_id) ){
						$('#hyCommBtn'+(this.hcomment_id)).append(
								"<ol class='breadcrumb dark-link m-0 small justify-content-center' style='text-align: center'>"
								+ "<li id='hyCommUpdBtn' class='breadcrumb-item text-nowrap' style='color: #9397AD; cursor: pointer;'>"
								+ '수정' +"</li>"
								+ "<li id='hyCommDelBtn' class='breadcrumb-item text-nowrap' style='color: #9397AD; cursor: pointer;'>"
								+ '삭제' +"</li></ol><input type='hidden' value="+(this.hcomment_id)+">"	
						);
					}
				});
			}// end success
		});// end ajax
	}// end hyCommLoad()
	
	// 스크롤 페이징 
	$(document).scroll(function(){
		
		var maxHeight = $(document).height(); // 문서 전체의 높이
		var currentScroll = $(window).scrollTop() + $(window).innerHeight(); // 스크롤 위치값 + 화면의 높이
		let st = $(window).scrollTop(); // 현재 스크롤값 
		var offset = $('#comm_div').offset();
	
		if ( st > lastScroll){	// 기준점보다 스크롤이 내려가면 작동하도록		
			if( maxHeight <= currentScroll){
				$('.window').animate( { scrollTop : (offset.top - $('.window').height()/2) }, 500); // 스크롤 위치 이동
				if( hyCommCurpage < hyCommPage ){
					hyCommLoad();				
				}
			}
		}
		lastScroll = st;	// 스크롤 내려가니까 거기에 따라 기준점 바꿔줄려고
	}); // end 스크롤 이벤트
	
	
	// 좋아요 조회
	if($('#hyLikeCk').val() == '1'){ // 좋아요 누른 경우
		$('#hylikeYBtn').hide();
		$('#hylikeNBtn').show();
 	}
	
	// 좋아요 등록 클릭시
	$('#hylikeYBtn').click(function(){
		
		if( $('#logUser_id').val() == "" ){ // 로그인 아이디 footer에 적혀 있음
			alert("로그인 후 이용해 주세요");
			return;
		};
	
		$.ajax({
			url : 'saveHyLike.do',
			type: 'post',
			data: {
				'hpost_id' : $('#hpost_id').val(),
				'user_id' : $('#logUser_id').val()
			},
			success: function(data){
				$('#hylikeYBtn').hide();
				$('#hylikeNBtn').show();
				$('#hylikeCnt').text( data.hp_like );
			}
		});
	});
	
	// 좋아요 취소 클릭시
	$('#hylikeNBtn').click(function(){
		$.ajax({
			url : 'deleteHyLike.do',
			type: 'post',
			data: {
				'hpost_id' : $('#hpost_id').val(),
				'user_id' : $('#logUser_id').val() // footer에 적혀있음
			},
			success: function(data){
				$('#hylikeYBtn').show();
				$('#hylikeNBtn').hide();
				$('#hylikeCnt').text( data.hp_like );
			}
		});
	});
	
	
	// 포스트 삭제 클릭시
	$('#hyPostDel').click(function(e){
		var msg = confirm('포스트를 삭제 하시겠습니까?');
		if(msg == false){
			e.preventDefault(); // a 태그를 눌렀을 때 href 링크로 이동하지 않게 함
		}
	})
	
	
});
</script>
</head>
<body>
<!-- Wrapper -->
<!-- Header -->
<jsp:include page="/WEB-INF/views/hf/header.jsp"></jsp:include>
<!-- End Header -->
<!-- Main -->
<main>
	<!-- hidden 전체 댓글 수 -->
	<input id="hyCommCnt" type="hidden" value="${hyCommCnt}">
	<!-- hidden 포스트 번호 -->
	<input id="hpost_id" type="hidden" value="${hPost.hpost_id}">
	<!-- hidden 좋아요 조회 -->
	<input id="hyLikeCk" type="hidden" value="${hylike}">
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
								style="color: #9397AD;"><i class="bi bi-home"></i>FOLLOWING</a></li>
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
	<section class="section m-auto" style="width: 800px;">
		<!-- 포스트 수정 /삭제 버튼 >> 로그인 아이디랑 포스트 작성자랑 같을 경우만 버튼 뜸 -->
		<c:if test="${sessionScope.user_id eq hUser.user_id}">
			<div class="col product-cart-btn text-end">
	        	<a class="btn btn-outline-danger"
	        		href="5_hyangsta_updatePost.do?hpost_id=${hPost.hpost_id}&user_id=${hUser.user_id}">
	        		포스트 수정
	            </a>
	            <a id="hyPostDel" class="btn btn-outline-danger"
	            	href="deleteHyPost.do?hpost_id=${hPost.hpost_id}&user_id=${hUser.user_id}&hp_fname_en=${hPost.hp_fname_en}">
					포스트 삭제
	            </a>
			</div>
		</c:if>
		<div class="card mt-5">
			<!-- 포스트 업로더 프로필 >> 클릭시 유저 향스타 홈으로 이동 -->
			<div class="card-header row">
			<div onclick="location.href='5_hyangsta_userlist.do?user_id=${hUser.user_id}'" class=" py-3 col-10" style="cursor: pointer">
				<div class="d-flex">
					<div class="avatar avatar-sm">
						<!-- 포스트 작성자 이미지 -->
						<img class="avatar-img rounded-circle"
							src="../resources/profileImg/${hUser.user_fname_en}">
					</div>
					<div class="col ps-3">
						<!-- 포스트 작성자 아이디 -->
						<h6 class="m-0 small fw-800 opacity-8">${hUser.user_id}</h6>
						<!-- 포스트 작성 날짜 -->
						<span class="fs-xs">${hPost.hp_date}</span>
					</div>
				</div>
			</div>
			<div class="d-none d-xl-block text-center col-2 pt-4">
				<!-- 좋아요 btn -->
				<img id="hylikeYBtn" src="../resources/assets/img/hylikeYBtn.png" Style="width:30px; height:30px; cursor: pointer;">
				<img id="hylikeNBtn" src="../resources/assets/img/hylikeNBtn.png" Style="width:30px; height:30px; cursor: pointer; display:none;">
               <!-- 좋아요 cnt -->
               <span id="hylikeCnt" class="fs-sm">${hPost.hp_like}</span>
            </div>
	        </div>
			<div class="card-body">
				<div class="row gy-4">
					<!-- 포스트 이미지 / 내용-->
					<!-- 좌측 : 포스트 사진 -->
					<div class="col-6 text-center" id="post_img_div">
						<img src="../resources/5_hy_img/${hPost.hp_fname_en}" id="post_img"
							style="height: 371px;">
							
					</div>
					<!-- 우측: 포스트 텍스트 -->
					<div class="col-6">
						<!-- 포스트 텍스트 -->
						<div>${hPost.hp_content}</div>
						<!-- 해시태그 -->
						<div>
							<c:forEach items="${tag}" var="tag" begin="1"> <!-- 인덱스 0 은 공백임. 없음 -->
								<c:choose>
									<c:when test="${tag == ''}">
										<span>#</span>
									</c:when>
									<c:otherwise>
										<span><a href="5_hyangsta_all.do?searchCondition=hp_tag&searchKeyword=${tag}">#${tag}</a></span>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</div>						
					</div>

					<!-- 댓글 등록 / 로그인 했을 때만 뜨도록-->
					<c:if test="${sessionScope.user_id != null}">
						<div class="col-12 mb-3 input-group" style="width: 100%">
							<!-- 댓글 등록 : 포스트번호 / 작성자 아이디 / 댓글내용 -->
							<form id="hyComm" action="saveHyComm.do" style="display: flex; width: 100%">
								<input id="hc_content" class="form-control shadow-none" type="text" name="hc_content">
								<input type="submit" class="btn btn-primary shadow-none" value="등록">
							</form>
						</div>
					</c:if>

					<!-- 댓글 -->
					<div>
						<table>
							<tbody id="comm_div" >
								<!-- 댓글 반복문 -->
								<c:forEach items="${hclist}" var="hc">
									<tr class="pb-3">
										<!-- 유저 아이디-->
										<td class="pb-3" style="width: 15%; font-weight: bolder;">
											${hc.hc_user_id}
										</td>
										<!-- 댓글 내용 -->
										<td id="hc_content${hc.hcomment_id}" class="pb-3" style="width: 60%; ">${hc.hc_content}</td>
										<!-- 댓글 작성 날짜-->
										<td class="pb-3 fs-xs text-center" style="width: 13%;">${hc.hc_date}</td>
										<!-- 수정/삭제 >> 로그인 아이디랑 댓글 작성자 아이디랑 같은 때만 보이게 -->
										<!-- 수정/삭제 >> pk(댓글번호) -->
										<td id="hyCommBtn${hc.hcomment_id}" class="pb-3" style="width: 12%;">
											<c:if test="${sessionScope.user_id eq hc.hc_user_id}">
												<ol class="breadcrumb dark-link m-0 small justify-content-center"
													style="text-align: center">
													<li id="hyCommUpdBtn" class="breadcrumb-item text-nowrap"
														style="color: #9397AD; cursor: pointer;">
														수정</li>
													<li id="hyCommDelBtn" class="breadcrumb-item text-nowrap"
														style="color: #9397AD; cursor: pointer;">
														삭제</li>
												</ol>
												<input type="hidden" value="${hc.hcomment_id}">												
											</c:if>
										</td>
									</tr>
								</c:forEach>
								<!-- 댓글 반복문 끝-->
							</tbody>
						</table>
					</div>
					
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
<!-- End Wrapper -->
</body>
</html>