<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="zxx" class="dark">

<head>
    <!-- metas -->
<meta charset="utf-8">
<meta name="author" content="pxdraft" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="keywords" content="Crikon – Multipurpose Template" />
<meta name="description" content="Crikon – Multipurpose Template" />
<!-- title -->
<title>오드비 - Eau de Vie</title>
<!-- Favicon -->
<link rel="shortcut icon" href="../resources/assets/img/logo_black_icon.png" >
<!-- CSS Template -->
<link href="../resources/assets/css/theme.css" rel="stylesheet">
<link href="../resources/assets/css/gyu_theme.css" rel="stylesheet">

<!-- script -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- font : Google Noto Serif Korean -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">

<style>
    *{
       font-family: 'Noto Serif KR', serif;
    }
</style>

<!-- script -->
<script type="text/javascript" src="../resources/assets/js/jquery-3.5.1.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){

let gender = $('#pGender').val();
let strength = $('#pStrength').val();
let season = $('#pSeason').val();
let note1 = $('#pNote1');
let note2 = $('#pNote2');
let note3 = $('#pNote3');
let coment = $('#pComent').val();

console.log("note2 >> " + note2.val());
console.log("coment >> " + coment);

// 성별
if( gender == 'W'){
$('.tdGender').text('여성');
}else if( gender == 'M'){
$('.tdGender').text('남성');
}else{
$('.tdGender').text('무관');
}

// 확산력
if( strength == 'W'){
$('.tdStrength').text('약함');
}else if( strength == 'M'){
$('.tdStrength').text('중간');
}else{
$('.tdStrength').text('강함');
}

// 계절
if( season == 'AA'){
$('.tdSeason').text('봄, 여름, 가을, 겨울');
$('.seasonImg1').attr('src', '../resources/assets/img/test_spring.jpg');
$('.seasonImg2').attr('src', '../resources/assets/img/test_winter.jpg');
$('.seasonCom').append(
"<p>좋은 일만 생길 것 같은, 가슴 벅찬 설렘의 봄 날</p>"
+"<p>산천 초목들의 녹음이 짙어가는 싱그러운 여름 날</p>"
+"<p>노을이 한껏 붉게 무르익는 가을 날</p>"
+"<p>뽀얀 눈송이가 내려앉는 겨울 날</p>"
+"<p>당신의 하루를 '환기' 시켜줄 '향기' 큐레이션</p>"
);
}else if( season == 'FW'){
$('.tdSeason').text('가을, 겨울');
$('.seasonImg1').attr('src', '../resources/assets/img/test_fall.jpg');
$('.seasonImg2').attr('src', '../resources/assets/img/test_winter.jpg');
$('.seasonCom').append(
"<p>뉘엿뉘엿 저물어가는</p>"
+"<p>노을이 한껏 붉게 무르익는 계절을 지나</p>"
+"<p>선선한 바람에 어느새 따듯함이 그리워지는</p>"
+"<p>뽀얀 눈송이가 내려앉는 계절이 한 걸음 다가오는 때</p>"
+"<p>당신의 하루를 '환기' 시켜줄 '향기' 큐레이션</p>"
);
}else if( season == 'PF'){
$('.tdSeason').text('봄, 가을');
$('.seasonImg1').attr('src', '../resources/assets/img/test_spring.jpg');
$('.seasonImg2').attr('src', '../resources/assets/img/test_fall.jpg');
$('.seasonCom').append(
"<p>창문 틈으로 새어들어오는 따스한 햇볕이</p>"
+"<p>옹 몸을 훈훈하게 해주는 따스한 날</p>"
+"<p>일상의 단조로움을 환하게 밝혀주는 향기</p>"
+"<p>한 폭의 풍경화를 그려내는</p>"
+"<p>당신의 하루를 '환기' 시켜줄 '향기' 큐레이션</p>"
);
}else if( season == 'PM'){
$('.tdSeason').text('봄, 여름');
$('.seasonImg1').attr('src', '../resources/assets/img/test_spring.jpg');
$('.seasonImg2').attr('src', '../resources/assets/img/test_summer.jpg');
$('.seasonCom').append(
"<p>습한 날씨에 보송함 한 스푼</p>"
+"<p>장대비가 주룩주룩 쏟아지는 계절,</p>"
+"<p>습기를 한가득 머금어 축축 처지는 머리카락,</p>"
+"<p>비 냄새에서 올라오는 꿉꿉한 물 비린내</p>"
+"<p>눅눅해진 몸과 마음에 피르레시가 필요한 때</p>"
+"<p>당신의 하루를 '환기' 시켜줄 '향기' 큐레이션</p>"
);
// $('.tdSeansText').text('한 여름, 나만의 휴식처 매미 우는 소리, 풀잎들이 바람맞는 소리, 시원한 바람 소리가 모여 만드는 세레나데')
}else if( season == 'pW'){
$('.tdSeason').text('봄, 겨울');
$('.seasonImg1').attr('src', '../resources/assets/img/test_spring.jpg');
$('.seasonImg2').attr('src', '../resources/assets/img/test_winter.jpg');
}else{ // MF
$('.tdSeason').text('여름, 가을');

$('.seasonImg1').attr('src', '../resources/assets/img/test_summer.jpg');
$('.seasonImg2').attr('src', '../resources/assets/img/test_fall.jpg');
$('.seasonCom').append(
"<p>뉘엿뉘엿 저물어가는</p>"
+"<p>노을이 한껏 붉게 무르익는 계절</p>"
+"<p>따사롭게 느껴지던 햇빛이</p>"
+"<p>문득 따가워지던 여름 날</p>"
+"<p>당신의 하루를 '환기' 시켜줄 '향기' 큐레이션</p>"
);
}

// 노트
noteCk( note1 );
noteCk( note2 );
noteCk( note3 );

function noteCk( note ){
if( note.val() == 'AL'){
noteEx(note, 'ROALDEHYDICSE');
}else if( note.val() == 'AM'){
noteEx(note, 'AMBER');
}else if( note.val() == 'AQ'){
noteEx(note, 'AQUATIC');
}else if( note.val() == 'AR'){
noteEx(note, 'AROMATIC');
}else if( note.val() == 'CC'){
noteEx(note, 'COCONUT');
}else if( note.val() == 'CI'){
noteEx(note, 'CITRUS');
}else if( note.val() == 'EA'){
noteEx(note, 'EARTHY');
}else if( note.val() == 'FL'){
noteEx(note, 'FLORAL');
}else if( note.val() == 'FR'){
noteEx(note, 'FRESH');
}else if( note.val() == 'FS'){
noteEx(note, 'FRESH SPICY');
}else if( note.val() == 'GR'){
noteEx(note, 'GREEN');
}else if( note.val() == 'HO'){
noteEx(note, 'HONEY');
}else if( note.val() == 'IR'){
noteEx(note, 'IRIS');
}else if( note.val() == 'LE'){
noteEx(note, 'LEATHER');
}else if( note.val() == 'LV'){
noteEx(note, 'LAVENDER');
}else if( note.val() == 'MA'){
noteEx(note, 'MARINE');
}else if( note.val() == 'MD'){
noteEx(note, 'ALMOND');
}else if( note.val() == 'MO'){
noteEx(note, 'MOSSY');
}else if( note.val() == 'MU'){
noteEx(note, 'MUSKY');
}else if( note.val() == 'OU'){
noteEx(note, 'OUD');
}else if( note.val() == 'OZ'){
noteEx(note, 'OZONIC');
}else if( note.val() == 'PA'){
noteEx(note, 'PATCHOULI');
}else if( note.val() == 'PO'){
noteEx(note, 'POWDERY');
}else if( note.val() == 'RO'){
noteEx(note, 'ROSE');
}else if( note.val() == 'SM'){
noteEx(note, 'SMOKY');
}else if( note.val() == 'SO'){
noteEx(note, 'SOAPY');
}else if( note.val() == 'SS'){
noteEx(note, 'SOFT SPICY');
}else if( note.val() == 'SW'){
noteEx(note, 'SWEET');
}else if( note.val() == 'TO'){
noteEx(note, 'TOBACCO');
}else if( note.val() == 'TR'){
noteEx(note, 'TROPICAL');
}else if( note.val() == 'TU'){
noteEx(note, 'TUBEROSE');
}else if( note.val() == 'UI'){
noteEx(note, 'FRUITY');
}else if( note.val() == 'VA'){
noteEx(note, 'VANILLA');
}else if( note.val() == 'VI'){
noteEx(note, 'VIOLET');
}else if( note.val() == 'WA'){
noteEx(note, 'WARM SPICY');
}else if( note.val() == 'WH'){
noteEx(note, 'WHITE FLORAL');
}else if( note.val() == 'WO'){
noteEx(note, 'WOODY');
}else if( note.val() == 'YE'){
noteEx(note, 'YELLOW FLORAL');
}else if( note.val() == 'AN'){
noteEx(note, 'ANIS');
}else if( note.val() == 'BA'){
noteEx(note, 'BALSAMIC');
}else if( note.val() == 'CA'){
noteEx(note, 'CACAO');
}else if( note.val() == 'CF'){
noteEx(note, 'COFFEE');
}else if( note.val() == 'HE'){
noteEx(note, 'HERBAL');
}else if( note.val() == 'LA'){
noteEx(note, 'LACTONIC');
}else if( note.val() == 'NM'){
noteEx(note, 'ANIMALIC');
}else if( note.val() == 'NU'){
noteEx(note, 'NUTTY');
}else if( note.val() == 'RU'){
noteEx(note, 'RUM');
}else if( note.val() == 'SA'){
noteEx(note, 'SALTY');
}else if( note.val() == 'NO'){
noteEx(note, 'NONE');
}
}


function noteEx(nt, note){
if(nt.attr("ex") == '1'){
$('.tdNote1').text(note);
}else if(nt.attr("ex") == '2'){
$('.tdNote2').text(note);
}else if(nt.attr("ex") == '3'){
$('.tdNote3').text(note);
}
}
})

</script>
</head>

<body>

<input type="hidden" value="${pro_list.brand }" id="pBrand">
<input type="hidden" value="${pro_list.gender }" id="pGender">
<input type="hidden" value="${pro_list.strength }" id="pStrength">
<input type="hidden" value="${pro_list.season }" id="pSeason">
<input type="hidden" value="${pro_list.note1 }" id="pNote1" ex="1">
<input type="hidden" value="${pro_list.note2 }" id="pNote2" ex="2">
<input type="hidden" value="${pro_list.note3 }" id="pNote3" ex="3">
<input type="hidden" value="${pro_list.coment }" id="pComent">

    <!-- Skippy & Prload -->
    <!-- skippy -->
<a id="skippy" class="skippy visually-hidden-focusable overflow-hidden" href="#content">
    <div class="container">
        <span class="u-skiplink-text">Skip to main content</span>
    </div>
</a>
<!-- End skippy -->
<!-- Preload -->
<!-- <div id="loading" class="loading-preloader"> -->
<!-- <div class="spinner-border text-primary" role="status"> -->
<!-- <span class="visually-hidden">Loading...</span> -->
<!-- </div> -->
<!-- </div> -->
<!-- End Preload -->



<!-- Ask Product -->
<!-- Ask About Product-->
<div class="modal-askform-view modal fade" id="px_ask_modal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">문의하기</h4>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">아이디</label>
                                <input type="text" class="form-control" placeholder="아이디">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">제목</label>
                                <input type="text" class="form-control" placeholder="제목">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">상세내용</label>
                                <textarea class="form-control" rows="5" placeholder="상세내용"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="">
                        <button type="submit" class="btn btn-primary">문의 올리기</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- End Ask About Product-->

<!-- update About Product-->
<div class="modal-askform-view modal fade" id="px_update_modal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">수정</h4>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-3">
                                <textarea class="form-control re_update_text" rows="5">${review.re_content }</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="">
                        <button type="submit" class="btn btn-primary re_update_btn">수정하기</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- End revise About Product-->
    <!-- Edn All Modal -->
    <!-- 
    ========================
        Wrapper 
    ========================
    -->
    <div class="wrapper">
        <!-- Header Height -->
        <jsp:include page="/WEB-INF/views/hf/header.jsp"></jsp:include>
<!-- End Header -->
        <!-- End Header -->
        <!-- Main -->
        <main>
        <!-- Page Title
		-->
		<section class="py-3 bg-gray-100" style="height: 230px">
		<!-- style 추가-->
		<div class="container" style="padding-top: 35px">
		<div class="row align-items-center">
		<!-- col-1g-6 12로 변경, h1에 text-lg-start 클래스 삭제-->
		<div class="col-lg-12 my-2">
		<h1 class="h4 text-center perfume_list_h1" style="font-size: 2.5rem">
		향수 리스트
		</h1>
		</div>
		<div class="col-lg-12 my-2" style="width: 100%">
		<!-- ol태그 justify-content-lg-end 클래스 삭제 : 오른쪽정렬 > 가운데 정렬 / a 태그 컬러 변경-->
		<ol
		
		class="breadcrumb dark-link small justify-content-center"
		style="text-align: center">
		<li class="breadcrumb-item">
		<a
		class="text-nowrap" href="product_list.do?brand=all" style="color: #9397ad">
		<i class="bi bi-home"></i>all</a>
		</li>
		<c:forEach items="${brands }" var="brands">
		<li class="breadcrumb-item">
		<a
		class="text-nowrap" href="product_list.do?brand=${brands.brand }" style="color: #9397ad">
		<i class="bi bi-home">${brands.brand }</i></a>
		
		</li>
		</c:forEach>
		
		</ol>
		</div>
		</div>
		</div>
		</section>
		<!-- End Page Title -->
        
            <!-- Section -->
            <section class="py-6 mt-12 m-auto" style="width:1010px;">
				<div class="container">
                    <div class="row gy-4">
                        <!-- Product Gallery -->
                        <div class="col-lg-7 pe-lg-8 product-single-gallery lightbox-gallery">
                             <div class="pd-gallery-slide text-center">
                                 <a class="gallery-link" href="../resources/assets/img/perfumes/${pro_list.brand }/${pro_list.pl_fname }" tabindex="0"><i class="bi bi-arrows-fullscreen"></i></a>
                                 <img src="../resources/assets/img/perfumes/${pro_list.brand }/${pro_list.pl_fname }" title="" alt="">
                             </div>
                        </div>
                        <!-- End Product Gallery -->
                        <!-- Product Info -->
                        <div class="col-lg-5 product-single-info">
                            <div class="products-brand">
                                <span>${pro_list.brand }</span>
                            </div>
                            <div class="products-title">
                                <h4 class="h4">${pro_list.product_name }</h4>
                            </div>
                            <div class="rike">
                                <i class="like-heart"><!--깔끔한 하트-->❤</i>
                                <small>(4 wish)</small>
                            </div>
                            <div class="product-description">
                                <p>${pro_list.coment }</p>
                            </div>
                            <div class="product-detail-actions">
                                <div class="d-flex cart-extra-button">
                                    <button class="btn wishlist-btn">
                                        <i class="fi-heart"></i> 위시리스트
                                    </button>
                                    <button class="btn collection-btn">
                                        <i class="fi-check"></i> 마이컬렉션
                                    </button>
                                </div>
                            </div>
                            <div class="product-info-buttons nav">
                                <!-- <a href="#" class="me-3" data-bs-toggle="modal" data-bs-target="#px_size_chart_modal"><i class="bi bi-scissors"></i>Size guide</a> -->
                                <!-- <a href="#" class="" data-bs-toggle="modal" data-bs-target="#px_shipping_modal"><i class="bi bi-truck me-2"></i>Shipping</a> -->
                                <a href="#" class="ms-auto" data-bs-toggle="modal" data-bs-target="#px_ask_modal"><i class="bi bi-envelope ms-auto"></i>문의하기</a>
                            </div>
                            <div class="products-meta">
                                <p class="mb-2">
                                    <label class="m-0 text-dark">브랜드 : </label>
                                    <span >${pro_list.brand }</span>
                                </p>
                            </div>
                            <div class="products-share-link">
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item">
                                        <a class="btn btn-sm btn-primary-soft avatar-xs d-inline-flex align-items-center justify-content-center p-0" href="#">
                                            <i class="bi bi-facebook"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="btn btn-sm btn-primary-soft avatar-xs d-inline-flex align-items-center justify-content-center p-0" href="#">
                                            <i class="bi bi-twitter"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="btn btn-sm btn-primary-soft avatar-xs d-inline-flex align-items-center justify-content-center p-0" href="#">
                                            <i class="bi bi-github"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="btn btn-sm btn-primary-soft avatar-xs d-inline-flex align-items-center justify-content-center p-0" href="#">
                                            <i class="bi bi-slack"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- End Product Info -->
                    </div>
                </div>
            </section>
            <!-- End Section -->
            <!-- Product Tabs -->
            <section class="pb-6 py-md-6 pb-lg-10 pt-lg-5 m-auto" style="width:1010px;">
                <div class="container">
                    <div class="product-tabs">
                        <ul class="nav product-nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a href="#" class="nav-link active" id="pd_description_tab" data-bs-toggle="tab" data-bs-target="#pd_description" role="tab" aria-controls="pd_description" aria-selected="true">설명</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a href="#" class="nav-link" id="pd_information_tab" data-bs-toggle="tab" data-bs-target="#px_information" role="tab" aria-controls="px_information" aria-selected="false">정보</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a href="review_list.do" class="nav-link" id="pd_reviews_tab" data-bs-toggle="tab" data-bs-target="#pd_reviews" role="tab" aria-controls="pd_reviews" aria-selected="false">리뷰</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="pd_description" role="tabpanel" aria-labelledby="pd_description_tab">
                                <div class="row">
                                    <div class="col-12 text-center">
                                        <h3 class="fw-300 m-0 mt-12">${pro_list.brand}</h3>
                                        <h3 class="fw-500 m-0 mt-12">${pro_list.product_name}</h3>
                                        <div class="mt-7">
                                        	<img src="../resources/assets/img/perfumes/${pro_list.brand }/${pro_list.pl_fname }"> 
                                        </div>
                                        
                                        <!-- 계절 -->
                                        <h3 class="fw-500 m-0 mt-12">계절</h3>
                                        <h5 class="fw-300 mt-7 text-muted">${pro_list.coment}</h5>
                                        <!-- 계절 사진 -->
                                        <div class='avatar mt-7 mb-7' style="width: 200px; height: 200px;">
                                        	 	<img class='avatar-img rounded-circle seasonImg1' >
                                       	</div>
                                       	<div class='avatar mt-7 mb-7' style="width: 200px; height: 200px;">
                                        	 	<img class='avatar-img rounded-circle seasonImg2' >
                                       	</div>
<!--                                        	<div class='avatar mt-7 seasonImg3' style="width: 150px; height: 150px;"> -->
<!--                                         	 	<img class='avatar-img rounded-circle seasonImg3' > -->
<!--                                        	</div> -->
<!--                                        	<div class='avatar mt-7 seasonImg4' style="width: 150px; height: 150px;"> -->
<!--                                         	 	<img class='avatar-img rounded-circle seasonImg4' > -->
<!--                                        	</div> -->
                                       	
                                       <div class="seasonCom">
<!--                                        		<p>끈적이는 땀을 바람에 식히고 나면 비로 보이는 신록의 계절</p> -->
<!--                                        		<p>환기찬 에너지로 기쁘게 흔들리는 풀입소리가</p> -->
<!--                                        		<p>시원한 바람과 함께 내 귓등을 타고 흐르는 청량함</p> -->
                                       </div>
                                    <table class="m-auto mt-12 mb-12 text-center pt-3 pb-3 " style="background-color: #F3F6FF">
                                        	<!-- 노트 -->
                                        	<tr>
                                        		<th class="fw-500  pt-3 pb-3" style="width: 200px; font-size:1.5rem;">Note 1</th>
                                        		<th class="tdNote1  pt-3 pb-3 text-muted" style="width: 150px;"></th>
                                        		<th class="pt-3 pb-3" style="width: 350px;">${pro_list.coment1}</th>                                       		
                                        	</tr>
                                        	<tr>
                                        		<th class="fw-500 pt-3 pb-3" style="width: 200px; font-size:1.5rem;">Note 2</th>
                                        		<th class="tdNote2 pt-3 pb-3 text-muted" style="width: 150px;"></th>
                                        		<th class="pt-3 pb-3" style="width: 350px;">${pro_list.coment2}</th>                                       		
                                        	</tr>
                                        	<tr>
                                        		<th class="fw-500 pt-3 pb-3" style="width: 200px; font-size:1.5rem;">Note 3</th>
                                        		<th class="tdNote3 pt-3 pb-3 text-muted" style="width: 150px;"></th>
                                        		<th class="pt-3 pb-3" style="width: 350px;">${pro_list.coment3}</th>                                       		
                                        	</tr>
                                       		<!-- 확산력 -->
                                        	<tr>
                                        		<th class="fw-500 pt-3 pb-3" style="width: 200px; font-size:1.5rem;">확산력</th>
                                        		<th colspan="2" class="pt-3 pb-3 text-muted tdStrength" style="width: 150px;"></th>                                 		
                                        	</tr>
                                        	<!-- 지속시간 -->
                                        	<tr>
                                        		<th class="fw-500 pt-3 pb-3" style="width: 200px; font-size:1.5rem;">지속시간</th>
                                        		<th colspan="2" class="pt-3 pb-3 text-muted" style="width: 150px;">${pro_list.lasting} 시간</th>                                 		
                                        	</tr>
                                        </table>
                                       
                                      
                                    </div>
<!--                                     <div class="col-lg-5"> -->
<!--                                         <div class="pb-3"> -->
<!--                                             <img src="../resources/assets/img/이미지넣기.jpg" class="img-fluid" title="" alt=""> -->
<!--                                         </div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                            <div class="tab-pane fade" id="px_information" role="tabpanel" aria-labelledby="pd_information_tab">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <table class="table text-sm">
                                            <tbody>
                                                <tr>
                                                    <th class="fw-500 text-dark">브랜드</th>
                                                    <td class="text-muted">${pro_list.brand}</td>
                                                </tr>
                                                <tr>
                                                    <th class="fw-500 text-dark">성별</th>
                                                    <td class="text-muted tdGender"></td>
                                                </tr>
                                                <tr>
                                                    <th class="fw-500 text-dark">확산력</th>
                                                    <td class="text-muted tdStrength"></td>
                                                </tr>
                                                <tr>
                                                    <th class="fw-500 text-dark">지속시간</th>
                                                    <td class="text-muted">${pro_list.lasting} 시간</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="col-lg-6">
                                        <table class="table text-sm">
                                            <tbody>
                                                <tr>
                                                    <th class="fw-500 text-dark">계절</th>
                                                    <td class="text-muted tdSeason"></td>
                                                </tr>
                                                <tr>
                                                    <th class="fw-500 text-dark">Note 1</th>
                                                    <td class="text-muted tdNote1"></td>
                                                </tr>
                                                <tr>
                                                    <th class="fw-500 text-dark">Note 2</th>
                                                    <td class="text-muted tdNote2"></td>
                                                </tr>
                                                <tr>
                                                    <th class="fw-500 text-dark">Note 3</th>
                                                    <td class="text-muted tdNote3"></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pd_reviews" role="tabpanel" aria-labelledby="pd_reviews_tab">
                                <div class="row">
                                    <div class="col-lg-8 pe-lg-6">
                                        <div class="row align-items-end">
                                            <div class="col-sm-6">
                                                <div>
                                                    <h5 class="m-0 reviews">Reviews</h5>
                                                    <span class="small">${review_cnt } 개</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="review_div">
	                                        <c:forEach items="${re_list }" var="review" end="4">
		                                        <div class="d-flex review-box border-top mt-3 pt-3">
		                                            <div class="avatar">
		                                                <img name="user_fname_en" class="avatar-img rounded-circle" src="../resources/profileImg/${review.user_fname_en}" title="" alt="프로필 사진">
		                                            </div>
		                                            <div class="col ps-3">
		                                                <div class="small review-date">
			                                                <h6 class="review-name" name="nickname">${review.nickname }</h6>
			                                                <span><fmt:formatDate value="${review.re_date }" pattern="yyyy년 MM월 dd일"/></span>
			                                                <c:if test="${review.user_id eq sessionScope.user_id}">
				                                                <button class="ms-auto review_update_btn" data-bs-toggle="modal" data-bs-target="#px_update_modal" style="font-size: small; border-radius: 10px; border-color: gray;">수정</button>
				                                                <button class="ms-auto review_delete_btn" style="font-size: small; border-radius: 10px; border-color: gray;">삭제</button>
			                                                </c:if>
		                                                </div>
		                                                <p class="m-0" name="re_content">${review.re_content }</p>
		                                                <c:if test="${not empty review.re_fname_en }">
			                                                <!-- 이미지 넣기 -->
			                                                <div class="img_upload">
			                                                	<img id="review_img" src="../resources/assets/img/review_img/${review.re_fname_en }" alt="리뷰 이미지"  style="height:100px; width:auto;">
			                                                </div>
		                                                </c:if>
		                                                <!-- 좋아요 -->
<!-- 		                                                <span class="re_like" name="re_like"> -->
<!-- 		                                                	<input type="checkbox"> -->
<!-- 		                                                </span> -->
		                                            </div>
		                                            <input name="user_id" class="user_id" type="hidden" value="${review.user_id }">
		                                        	<input name="review_id" class="review_id" type="hidden" value="${review.review_id}" />
		                                        	<input name="productid" class="productid" type="hidden" value="${review.productid}" />
		                                        	<input name="user_fname_en" class="user_fname_en" type="hidden" value="${review.user_fname_en}">
		                                        </div>
	                                        </c:forEach>
	                                        <c:forEach items="${re_list }" var="review" begin="5">
		                                        <div class="review-box2 border-top mt-3 pt-3" style="display: none">
		                                            <div class="avatar">
		                                                <img name="user_fname_en" class="avatar-img rounded-circle" src="../resources/profileImg/${review.user_fname_en}" title="" alt="프로필 사진">
		                                            </div>
		                                            <div class="col ps-3">
		                                                <div class="small review-date">
			                                                <h6 class="review-name" name="nickname">${review.nickname }</h6>
			                                                <span><fmt:formatDate value="${review.re_date }" pattern="yyyy년 MM월 dd일"/></span>
			                                                <c:if test="${review.user_id eq sessionScope.user_id}">
				                                                <button class="ms-auto review_update_btn" data-bs-toggle="modal" data-bs-target="#px_update_modal" style="font-size: small; border-radius: 10px; border-color: gray;">수정</button>
				                                                <button class="ms-auto review_delete_btn" style="font-size: small; border-radius: 10px; border-color: gray;">삭제</button>
			                                                </c:if>
		                                                </div>
		                                                <p class="m-0" name="re_content">${review.re_content }</p>
		                                                <c:if test="${not empty review.re_fname_en }">
			                                                <!-- 이미지 넣기 -->
			                                                <div class="img_upload">
			                                                	<img id="review_img" src="../resources/assets/img/review_img/${review.re_fname_en }" alt="리뷰 이미지"  style="height:100px; width:auto;">
			                                                </div>
		                                                </c:if>
		                                            </div>
		                                            <input name="user_id" class="user_id" type="hidden" value="${review.user_id }">
		                                        	<input name="review_id" class="review_id" type="hidden" value="${review.review_id}" />
		                                        	<input name="productid" class="productid" type="hidden" value="${review.productid}" />
		                                        	<input name="user_fname_en" class="user_fname_en" type="hidden" value="${review.user_fname_en}">
		                                        </div>
	                                        </c:forEach>
	                                    </div>
                                        <hr>
                                        
                                        <input name="productid" class="productid" type="hidden" value="${pro_list.productid }" />
										<input name="user_id" class="user_id" type="hidden" value="${member.user_id }">
                                        
                                        <div class="col-sm-12 text-sm-end">
                                            <p class="link-effect fw-600 review_full">리뷰 전체보기</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="border p-4 sticky-lg-top review-form mt-4 mt-lg-0">
                                            <h5 class="mb-3 pb-3 border-bottom">리뷰 작성</h5>
                                            <!-- 리뷰 작성 -->
                                            <form id="review_upload" name="review_upload" method="post" enctype="multipart/form-data">
                                                <div class="row g-2">
                                                    <div class="col-sm-12">
                                                    	<input name="productid" class="productid" type="hidden" value="${pro_list.productid }" />
                                        				<input name="user_id" class="user_id" type="hidden" value="${sessionScope.user_id}">
                                        				<input name="nickname" class="nickname" type="hidden" value="${sessionScope.nickname}">
                                        				<input name="user_fname_en" class="user_fname_en" type="hidden" value="${sessionScope.user_fname_en}">
                                                        <textarea rows="5" class="form-control" name="re_content" placeholder="500자 내외" id="review-text"></textarea>
                                                    </div>
                                                    <div class="review-upload">
														<!-- 사진업로드-->
										               <div class="img_up" style="height:150px;">
										                  <!-- 선택한 이미지 들어가는 곳 -->
										                  <div id="insertImg_div">
										                     <img id="post_img" style="height:100px; width:auto;"
										                     src="http://via.placeholder.com/100.jpg" alt="100*100 size image">
										                  </div>
										                  <!-- 파일선택 버튼 -->
										                  <div id="fileSelect_btn" style="height: 40px; padding-top: 5px;">
										                     <input type="file" class="form-control" name="file" accept="image/*">
										                  </div>
										               </div>
                                                    </div>
                                                        <button class="btn btn-primary" id="review-upload" type="button">올리기</button>
                                                </div> 
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Product Tabs -->
            <!-- 향스타 그램 -->
            <section class="section pt-2 m-auto" style="width:1010px;">
                <div class="container">
                    <div class="row justify-content-center section-heading">
                        <div class="col-lg-6 text-center">
                            <h3 class="fw-500 h2 m-0">향스타그램</h3>
                        </div>
                    </div>
					<c:if test="${empty hplist}">
						<div class="text-center mt-7">관련된 향스타가 없습니다.</div>
					</c:if>                  
                            
                            
                    <div class="row mt-7">
                            <!-- 향스타 post 반복문 -->
                            <c:forEach items="${hplist}" var="hp">
                                              <div class='col-4'>
                                              		<div class='card'>
                                              			<div class='card-footer d-flex align-items-center'>
                      										<div onclick="location.href='../hyangsta/5_hyangsta_userlist.do?user_id=${hp.user_id}'" class='col-10 d-flex' style='cursor: pointer'>
	             											<div class='avatar avatar-sm'>
	             												<img class='avatar-img rounded-circle' src='../resources/profileImg/${hp.user_fname_en}'>
	             											</div>
	               											<div class='col ps-3'><h6 class='m-0 small fw-800 opacity-8'>${hp.user_id}</h6>
	                										<span class='fs-xs'>${hp.hp_date}</span></div>
	                									</div>
	               									</div>
	               									<div class='card-body hover-scale'>
	               										<div class='mb-3 hover-scale-in text-center'>
	                										<a href='../hyangsta/5_hyangsta_viewPost.do?hpost_id=${hp.hpost_id}&user_id=${hp.user_id}'>
	                											<img src='../resources/5_hy_img/${hp.hp_fname_en}' style='height:237px;'>
	                										</a>
	                									</div>
	                								</div>
	                							</div>
											</div>
                                </c:forEach>
                   </div>
                   <div class="hyang-more mt-7" style="text-align: center;">
                       <a href="../hyangsta/5_hyangsta_all.do" class="link-effect fw-600">더 많은 향스타그램 >></a>
                   </div>
                 
            </section>
            <!-- End 향스타그램 -->
        </main>
        <!-- End Main -->
        <!-- Footer -->
        <jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
    <!-- End script start -->
    <!-- Product Thumb -->
    <script>
    var swiper_gallery = new Swiper(".swiper_thumb_gallery", {
        spaceBetween: 10,
        slidesPerView: 5,
        freeMode: true,
        watchSlidesProgress: true,
        navigation: {
            nextEl: ".swiper-next-pd-details_thumb",
            prevEl: ".swiper-prev-pd-details_thumb",
        },
    });
    var swiper2 = new Swiper(".swiper_gallery", {
        spaceBetween: 10,
        effect: "fade",
        thumbs: {
            swiper: swiper_gallery,
        },
    });
    </script>
    <script  src="../resources/assets/js/gyu_jquery.js"></script>
</body>

</html>