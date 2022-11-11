<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
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
<!-- font : Google Noto Serif Korean -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">

<style>
    *{
       font-family: 'Noto Serif KR', serif;
    }
</style>
</head>

<body>
    <!-- Skippy & Prload -->
    <!-- skippy -->
<a id="skippy" class="skippy visually-hidden-focusable overflow-hidden" href="#content">
    <div class="container">
        <span class="u-skiplink-text">Skip to main content</span>
    </div>
</a>
<!-- End skippy -->
<!-- <!-- Preload --> -->
<!-- <div id="loading" class="loading-preloader"> -->
<!--     <div class="spinner-border text-primary" role="status"> -->
<!--         <span class="visually-hidden">Loading...</span> -->
<!--     </div> -->
<!-- </div> -->
<!-- <!-- End Preload --> -->
    <!-- 
    ========================
        Wrapper 
    ========================
    -->
<div class="wrapper">
        <!-- Header Height -->
        <!-- Header -->
        <!-- Header -->
    <jsp:include page="/WEB-INF/views/hf/header.jsp"></jsp:include>
<!-- End Header -->
        <!-- End Header -->
        <!-- Main -->
        <main>
            <!-- Page Title -->
            <section class="py-3 bg-gray-100" style="height: 200px;"> <!-- style 추가-->
            <div class="container" style="padding-top: 35px;">
                <div class="row align-items-center">
                    <!-- col-1g-6 12로 변경, h1에 text-lg-start 클래스 삭제-->
                    <div class="col-lg-12 my-2">
                        <h1 class="m-0 h4 text-center" style="font-size: 2.5rem;">향수공부</h1>
                    </div>
                    <div class="col-lg-12 my-2" style="width: 100%">
                        <!-- ol태그 justify-content-lg-end 클래스 삭제 : 오른쪽정렬 > 가운데 정렬 / a 태그 컬러 변경-->
                        <ol class="breadcrumb dark-link m-0 small justify-content-center" style="text-align: center">
                            <li class="breadcrumb-item"><a class="text-nowrap" href="#" style="color: #9397AD;"><i class="bi bi-home"></i>기본 용어</a></li>
                            <li class="breadcrumb-item"><a class="text-nowrap" href="#" style="color: #9397AD;"><i class="bi bi-home"></i>향조</a></li>       
                            <li class="breadcrumb-item"><a class="text-nowrap" href="#" style="color: #9397AD;"><i class="bi bi-home"></i>하우스</a></li>       
                        </ol>
                    </div>
                </div>
            </div>
            </section>
        <!--셀렉트박스 수정-->
        <div class="brand dropdown">
            <a class="dropdown-toggle brand-select" href="#" data-bs-toggle="dropdown">하우스 선택</a>
                <div class="dropdown-menu dropdown-menu-lg brand-one">
                    <div class="brand-big">
                        <ul class="list-unstyled">
                            <!-- 한칸당 8개씩함... 가나다순 나열이 아니어서 정리 필요-->
                            <li><a class="dropdown-item" href="#">전체보기</a></li>
                            <li><a class="dropdown-item" href="#">크리드</a></li>
                            <li><a class="dropdown-item" href="#">톰포드뷰티</a></li>
                            <li><a class="dropdown-item" href="#">바이킬리안</a></li>
                            <li><a class="dropdown-item" href="#">에르메스</a></li>
                            <li><a class="dropdown-item" href="#">메모</a></li>
                            <li><a class="dropdown-item" href="#">아쿠아 디 파르마</a></li>
                            <li><a class="dropdown-item" href="#">산타마리아노벨라</a></li>
                        </ul>
                    </div>
                    <div class="brand-big">
                        <ul class="list-unstyled">
                            <li><a class="dropdown-item" href="#">불리1803</a></li>
                            <li><a class="dropdown-item" href="#">프란시스커정</a></li>
                            <li><a class="dropdown-item" href="#">메종마르지엘라</a></li>
                            <li><a class="dropdown-item" href="#">구딸 파리</a></li>
                            <li><a class="dropdown-item" href="#">에디션 드 퍼퓸 프레데릭 말</a></li>
                            <li><a class="dropdown-item" href="#">퍼퓸드말리</a></li>
                            <li><a class="dropdown-item" href="#">르라보</a></li>
                            <li><a class="dropdown-item" href="#">조러브스</a></li>
                        </ul>
                    </div>
                    <div class="brand-big">
                        <ul class="list-unstyled">
                            <li><a class="dropdown-item" href="#">바이레도</a></li>
                            <li><a class="dropdown-item" href="#">딥티크</a></li>
                            <li><a class="dropdown-item" href="#">에어린AERIN</a></li>
                            <li><a class="dropdown-item" href="#">멜린앤게츠MALIN GOETZ</a></li>    
                        </ul>
                    </div>
                    <div>
                        <div class="brand-big">
                            더 추가하기
                        </div>
                    </div>
                </div>      
                <!--
                    css에 추가

                    /*향수공부 브랜드 나열*/
                    .brand .dropdown-menu {
                        width: auto;
                    }

                    /*리스트 각각*/
                    .brand .dropdown-item {
                        width: 210px;
                        margin-right: 0;
                    }

                    /*리스트들의 큼직한 부위를 나눈 것*/
                    .brand-big {
                        width: 210px;
                        display: inline-block;
                        float: left;
                    }

                    /*하우스 선택 버튼*/
                    .brand-select {
                        margin-left: 20px;
                        padding: 10px 10px ;
                        border: 0.3px solid #c6d4cb;    /*색 나중에 정하기...*/
                        
                        text-align: center;

                    }

                    /*리스트의 젤 큰 테두리*/
                    .brand-one {
                        background-color: ghostwhite;   /*색 나중에 정하기...*/
                    }

                -->      
        </div>
    </div>

            <!-- End Page Title -->
            <!-- Section -->
            <section class="section">
                <div class="container">
                    <div class="row gy-4 align-items-center">
                        <div class="col-lg-6 pe-xl-12">
                            <h6 class="text-primary">서브제목</h6>
                            <h3 class="h1 pb-3">제목</h3>
                            <p>문단1</p>
                            <p>문단2</p>
                        </div>
                        <div class="col-lg-6">
                            <img src="../resources/assets/img/shop-banner-1.jpg" title="" alt="사진">
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Section -->
            <!-- Section -->
            <section class="section">
                <div class="container">
                    <div class="row gy-4 align-items-center flex-row-reverse">
                        <div class="col-lg-6 ps-xl-12">
                            <h6 class="text-primary">서브제목</h6>
                            <h3 class="h1 pb-3">제목</h3>
                            <p>문단1</p>
                            <p>문단2</p>
                        </div>
                        <div class="col-lg-6">
                            <img src="../resources/assets/img/shop-banner-2.jpg" title="" alt="사진">
                        </div>
                    </div>
                </div>
            </section>
            
        </main>
        <!-- End Main -->
        <!-- Footer -->
     	<jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
</body>

</html>