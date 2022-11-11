<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="zxx" class="dark">

<head>
    <!--부트스트랩 아이콘-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
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
<script type="text/javascript" src="../resources/assets/js/jquery-3.5.1.min.js"></script>
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
<!-- Preload -->

<!-- End Preload -->
    <!-- Edn Skippy & Prload -->
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
            <!-- Page Title -->
            <section class="py-3 bg-gray-100" style="height: 230px">
                <!-- style 추가-->
                <div class="container" style="padding-top: 35px">
                  <div class="row align-items-center">
                    <div class="col-lg-12 my-2">
                      <h1 class="h4 text-center perfume_list_h1" style="font-size: 2.5rem">
                        향수 리스트
                      </h1>
                    </div>
                    <div class="col-lg-12 my-2" style="width: 100%">
                      <ol
                        class="breadcrumb dark-link small justify-content-center"
                        style="text-align: center">
                        <li class="breadcrumb-item">
                          <a class="text-nowrap" href="product_list.do?brand=all" style="color: #9397ad">
                            <i class="bi bi-home"></i>all</a>
                        </li>
                        <!-- 브랜드 리스트 -->
                        <c:forEach items="${brands }" var="brands">
                        <li class="breadcrumb-item">
                          <a class="text-nowrap" href="product_list.do?brand=${brands.brand }" style="color: #9397ad">
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
            <section class="section">
                <div class="container">
                    <div class="row">
                        <div class="imsi"></div><!-- 크기 조절용 -->
                        <div class="list-tull">
                            <!-- Top Bar -->
                            <!-- 검색 -->
                            <div class="mb-3 input-group">
                                <!-- Search input -->
                                <input class="form-control shadow-none" type="text" name="search" placeholder="검색" id="keywordInput" value="${cri.keyword}">
                                <!-- Search button -->
                                <button type="button" class="btn btn-primary shadow-none" id="searchBtn">
                                    <i class="bi bi-search"></i>
                                </button>
                            </div>
                                <!-- 슬라이드 -->
                                <section class="section slide-pick">
                                    <div class="container">
                                        <div class="row justify-content-center section-heading">
                                            <div class="text-start pick-text">
                                                <h6>이달의 인기향수 오드비 Pick!</h6>
                                            </div>
                                        </div>
                                        <div class="swiper-hover-arrow position-relative">
                                            <div class="swiper swiper-container" data-swiper-options='{
                                                  "slidesPerView": 2,
                                                  "spaceBetween": 24,
                                                  "loop": true,
                                                  "pagination": {
                                                    "el": ".swiper-pagination",
                                                    "clickable": true
                                                    },
                                                  "navigation": {
                                                    "nextEl": ".swiper-next-02",
                                                    "prevEl": ".swiper-prev-02"
                                                  },
                                                  "autoplay": {
                                                    "delay": 3500,
                                                    "disableOnInteraction": false
                                                  },
                                                  "breakpoints": {
                                                    "600": {
                                                      "slidesPerView": 3
                                                    },
                                                    "991": {
                                                      "slidesPerView": 3
                                                    },
                                                    "1200": {
                                                      "slidesPerView": 4
                                                    }
                                                  }
                                            }'>
                                                <div class="swiper-wrapper">
                                                    <!-- Product Card -->
                                                    <c:forEach items="${list }" var="listVO" end="6">
                                                    <div class="swiper-slide">
                                                        <div class="product-card-01 my-1">
                                                            <div class="product-media">
                                                                <div class="product-media-hover" style="text-align: center;">
                                                                
                                                                    <a href="review_list.do?productid=${listVO.productid }"><!-- 제품번호 입력 -->
                                                                        <img src="../resources/assets/img/perfumes/${listVO.brand }/${listVO.product_name }.jpg" title="" alt="" style="height: 150px; width: auto">
                                                                    </a>
                                                                </div>
                                                                <div class="product-action">
                                                                    <a href="#" class="p-btn">
                                                                        <i class="fi-heart"></i>
                                                                    </a>
                                                                    <a href="#" class="p-btn">
                                                                        <i class="fi-check"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="product-card-info">
                                                                <h6 class="product-title">
                                                                    <a href="review_list.do?productid=${listVO.productid }">${listVO.product_name }</a>
                                                                </h6>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    </c:forEach>
                                                    <!-- Product Card -->
                                                </div>
                                                <div class="swiper-pagination mt-4 d-lg-none position-relative"></div>
                                            </div>
                                            <div class="swiper-arrow-style-02 swiper-next swiper-next-02"><i class="bi bi-chevron-right"></i> </div>
                                            <div class="swiper-arrow-style-02 swiper-prev swiper-prev-02"><i class="bi bi-chevron-left"></i></div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                            <!-- 슬라이드 끝 -->
                            <div class="shop-top-bar d-flex pb-3">
                                <div class="imsi"></div><!-- 크기 조절용 -->
                                <hr>
<!--                                 <div class="shop-mob-button"> -->
<!--                                 </div> -->
<!--                                 <div class="shortby-dropdown ms-auto"> -->
<!--                                     <div class="dropdown"> -->
<!--                                         <a class="btn btn-white border dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false"> -->
<!--                                             필터 -->
<!--                                         </a> -->
<!--                                         <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="dropdownMenuLink"> -->
<!--                                             <li><a class="dropdown-item" href="#">최신순</a></li> -->
<!--                                             <li><a class="dropdown-item" href="#">리뷰 많은순</a></li> -->
<!--                                             <li><a class="dropdown-item" href="#">가격 높은순</a></li> -->
<!--                                             <li><a class="dropdown-item" href="#">가격 낮은순</a></li> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                <div class="imsi"></div><!-- 크기 조절용 -->
                            </div>
                            <!-- End Top Bar -->

                            <div class="imsi"></div><!-- 크기 조절용 -->
                            <!-- Product List -->
                            <div class="row g-3 list-table">
                                <!-- Product Box -->
                                <c:forEach items="${list }" var="listVO">
                                	<input type="hidden" id="brand" value="${cri.brand }"/>
	                                <div class="col-6 col-lg-4">
	                                    <div class="product-card-01">
	                                        <div class="product-media">
	                                            <div class="product-media-hover text-center">
	                                                <a href="review_list.do?productid=${listVO.productid }">
	                                                    <img src="../resources/assets/img/perfumes/${listVO.brand }/${listVO.product_name }.jpg" title="" alt="" style="height: 200px; width: auto">
	                                                </a>
	                                            </div>
	                                            <div class="product-action">
	                                                <a href="#" class="p-btn">
	                                                    <i class="fi-heart"></i>
	                                                </a>
	                                                <a href="#" class="p-btn">
	                                                    <i class="fi-check"></i>
	                                                </a>
	                                            </div>
	                                        </div>
	                                        <div class="product-card-info">
	                                            <h6 class="product-title text-center">
	                                                <a href="review_list.do?productid=${listVO.productid }">${listVO.product_name }</a>
	                                            </h6>
<!-- 	                                            <div class="product-price"> -->
<!--                                                 	<span class="text-primary">$28.<small>50</small></span> -->
<!--                                             	</div> -->
	                                        </div>
	                                    </div>
	                                </div>
                                </c:forEach>
                                <!-- End Product Box -->
                            </div>
                            <!-- 페이징 시도 -->
                            <!-- 페이징 페이지번호 버튼-->
					           <div class="ms-lg-auto" style="margin-top: 30px;">
					              <ul class="pagination m-0">
								     <c:if test="${pagemaker.prev }">
										<li class="page-item">
										<a class="page-link" aria-label="Previous" href="product_list.do${pagemaker.makeSearch(pagemaker.startPage-1)}&brand=${cri.brand }">«</a></li>
					 				 </c:if>
					 				 
					              	<c:forEach begin="${pagemaker.startPage}" end="${pagemaker.endPage}" var="pageNum">
					                  <li class="page-item"><a class="page-link" href="product_list.do${pagemaker.makeSearch(pageNum)}&brand=${cri.brand }">${pageNum }</a></li>
					             	<!-- 클래스명에  active 달기-->
					             	</c:forEach>
					             	
					             	<c:if test="${pagemaker.next && pagemaker.endPage > 0 }">
						                <li class="page-item">
						                   <a class="page-link" aria-label="Next" href="product_list.do${pagemaker.makeSearch(pagemaker.endPage+1)}&brand=${cri.brand }">»</a>
						                </li>
					   				</c:if>
					              </ul>
					          	</div>
                            <!-- 페이징 끝 -->

                            
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Section -->
                                <div class="imsi"></div><!-- 크기 조절용 -->
        </main>
        <!-- End Main -->
        <!-- Footer -->
        <jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
        <script  src="../resources/assets/js/gyu_jquery.js"></script>
</body>

</html>