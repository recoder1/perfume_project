<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<html lang="zxx" class="dark">
<head>
   <title>오드비 - Eau de Vie</title>
    <!-- metas -->
    <meta charset="utf-8">
    <meta name="author" content="pxdraft" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="Crikon – Multipurpose Template" />
    <meta name="description" content="Crikon – Multipurpose Template" />
    <!-- title -->
    <title>오드비 - Eau de Vie</title>
    <!-- font : Google Noto Serif Korean -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">
    <!-- Favicon -->
    <link rel="shortcut icon" href="../resources/assets/img/logo_black_icon.png" >
    <!-- CSS Template -->
    <link href="../resources/assets/css/theme.css" rel="stylesheet">
<script type="text/javascript" src="../resources/js/jquery-1.7.1.js"></script>
    <style>
        *{
        	font-family: 'Noto Serif KR', serif;
        }        
        
        table {
           min-height : 250px; 
        }
        
        .headerStop {
            position: fixed !important;
            height: 40px !important;
            background: linear-gradient(rgb(0 0 0 / 35%), rgb(255 255 255 / 0%));
            top: 0;
            right: 0;
            left: 0;
            z-index: 1030;
        }

        .headerStop a.nav-link {
            color: black !important;
        }

        .headerSlide {
            position: fixed !important;
            height: 45px !important;
            background: rgba(255, 255, 255, 0.95) !important;
            top: 0;
            right: 0;
            left: 0;
            z-index: 1030;
        }
        
        .p-4 {
        	width : 480px;
        	padding-left : 20px;
        	text-align : center;
        	color: #333333;
        
        }
        
        .fw-300 {
        
        	font-weight : bolder !important;
        	font-size : 55pt;
        	color: black;
        }
        
        .min-vh-65 {
		    min-height: 75vh !important;
		}
        
        table th {
        	text-align : center;
        }
       
        table td {
        	font-size : 15px !important;
        	text-overflow: ellipsis !important;
            white-space:nowrap !important;
            overflow: hidden !important;  
            max-width: 410px;     
        }
        
      
        
    </style>
<script type="text/javascript" src="../resources/assets/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
 // 향스타 
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="/WEB-INF/views/hf/header.jsp"></jsp:include>

	<!-- main -->
    <main>
    	<!-- Home Section -->
        <div class="swiper swiper-container" data-swiper-options='{
			"slidesPerView": 1,
			"spaceBetween": 0,
			"pagination": {
				"el": ".swiper-pagination",
				"clickable": true
			},
			"navigation": {
				"nextEl": ".swiper-next-01",
				"prevEl": ".swiper-prev-01"
			},
			"autoplay": {
				"delay": 5000,
				"disableOnInteraction": false
			}
			}'>
			<div class="swiper-wrapper">
			
				<div class="swiper-slide">
					<div class="bg-cover bg-no-repeat bg-center"
	                     style="background-image: url(../resources/assets/img/home/mainImage1.jpg); opacity: 0.9; ">
						<div class="container">
							<div class="row min-vh-65 py-12 align-items-center">
								<div class="col-md-6 col-lg-5 col-xxl-4 text-center text-md-start">
									<div class=" p-4 p-lg-5">
										<h1 class="fw-300 display-3 mb-2">Eau de Vie</h1>
										<p class="fs-lg">당신의 향기를 말해주세요</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="swiper-slide">
					<div class="bg-cover bg-no-repeat bg-center"
	                     style="background-image: url(../resources/assets/img/home/mainImage2.jpg); opacity: 0.9; ">
						<div class="container">
							<div class="row min-vh-65 py-12 align-items-center">
								<div class="col-md-6 col-lg-5 col-xxl-4 text-center text-md-start">
									<div class=" p-4 p-lg-5">
										<h1 class="fw-300 display-3 mb-2">Eau de Vie</h1>
										<p class="fs-lg">당신의 향기를 말해주세요</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="swiper-slide">
					<div class="bg-cover bg-no-repeat bg-center"
	                     style="background-image: url(../resources/assets/img/home/mainImage3.jpg); opacity: 0.9; ">
						<div class="container">
							<div class="row min-vh-65 py-12 align-items-center">
								<div class="col-md-6 col-lg-5 col-xxl-4 text-center text-md-start">
									<div class=" p-4 p-lg-5">
										<h1 class="fw-300 display-3 mb-2">Eau de Vie</h1>
										<p class="fs-lg">당신의 향기를 말해주세요</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="swiper-slide">
					<div class="bg-cover bg-no-repeat bg-center"
	                     style="background-image: url(../resources/assets/img/home/mainImage6.jpg); opacity: 0.9; ">
						<div class="container">
							<div class="row min-vh-65 py-12 align-items-center">
								<div class="col-md-6 col-lg-5 col-xxl-4 text-center text-md-start">
									<div class=" p-4 p-lg-5">
										<h1 class="fw-300 display-3 mb-2">Eau de Vie</h1>
										<p class="fs-lg">당신의 향기를 말해주세요</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
			</div>
			
				
		<div class="swiper-arrow-style-01 swiper-next swiper-next-01"><i class="bi bi-chevron-right"></i> </div>
		<div class="swiper-arrow-style-01 swiper-prev swiper-prev-01"><i class="bi bi-chevron-left"></i></div>
		<div class="swiper-pagination"></div>
	</div>
	<!-- End Home Section -->
	
	<!-- section -->
	
	<!-- End section -->
	
	<!-- section 향스타 -->
	<section class="section my-8  m-auto" style="width:1010px;">
		<div class="container">
			<div class="row justify-content-center section-heading">
				<div class="col-12 text-center">
					<h3 class="fw-500 h2 m-0">HYANGSTA</h3>
				</div>
			</div>
			<div class="row">
				<!-- 향스타 반복문 시작 -->
				<c:forEach items="${hyPost}" var="hp">
					<div class='col-4'>
						<div class='card'>
							<div class='card-footer d-flex align-items-center'>
	                       		<div onclick="location.href='../hyangsta/5_hyangsta_userlist.do?user_id=${hp.user_id}'" class='col-10 d-flex' style='cursor: pointer'>
			               			<div class='avatar avatar-sm'>
			               				<!-- 사용자 이미지 -->
			               				<img class='avatar-img rounded-circle' src='../resources/profileImg/${hp.user_fname_en}'>
			               			</div>
			                		<div class='col ps-3'><h6 class='m-0 small fw-800 opacity-8'>${hp.user_id}</h6>
			                		<span class='fs-xs'>${hp.hp_date}</span></div></div>
			                		<div class='d-none d-xl-block text-center col-2'>
			               				<img src='../resources/assets/img/hylikeYBtn.png' Style='width:20px; height:20px;'>
	                 					<span class='fs-xs ps-1'>${hp.hp_like}</span>
	                 				</div>
			                	</div>
			                	<div class='card-body hover-scale'>
			                		<div class='mb-3 hover-scale-in text-center'>
			                		<a href='../hyangsta/5_hyangsta_viewPost.do?hpost_id=${hp.hpost_id}&user_id=${hp.user_id}'>
			                		<img src='../resources/5_hy_img/${hp.hp_fname_en}' style='height:237px;'>
			                		</a></div>
			                	</div>
			                </div>
			          </div>
					
				</c:forEach>
				<!-- 향스타 반복문 끝 -->
				</div>
			</div>
		</section>
		<!-- End section 향스타-->

		<!-- section 커뮤니티/리뷰-->
		<section class="section mb-10 m-auto" style="width: 1010px;">
			<div class="container">
				<div class="row justify-content-center section-heading">
					<div class="col-6 text-center">
						<h3 class="fw-500 h2 m-0">COMMUNITY</h3>
					</div>
 					<div class="col-6 text-center">
						<h3 class="fw-500 h2 m-0">REVIEW</h3>
					</div>

				</div>
			</div>
			<div class="row">
			<!-- 커뮤니티 -->
			<div class="col-6 ">
				<table class="table table-bordered table-hover">
					<thead class=" text-700 bg-gray-200">
						<tr>
							<th>
								<a href = "../../basic/4_community/story_list.do"
									style="color : #525252;">향수이야기</a>
							</th>
						</tr>
					</thead>
					<tbody class="border-top-0">
						<c:forEach items="${mainStoryList}" var="story">
							<tr>
								<td>
									<a href="../../basic/4_community/story_view.do?ps_article_id=${story.ps_article_id }"
									style = "padding-right:17px; padding-left:10px;"> 
										${story.ps_title }
										<c:if test="${story.ps_commCnt > 0}">
											<small>(${story.ps_commCnt})</small>
										</c:if>	
									</a>
                            	</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<table class="table table-bordered table-hover">
					<thead class=" text-700 bg-gray-200">
						<tr>
							<th>
								<a href = "../../basic/4_community/market_list.do"
									style="color : #525252;">중고거래</a>
							</th>
						</tr>
					</thead>
					<tbody class="border-top-0">
						<c:forEach items="${mainMarketList}" var="market">
							<tr>
								<td>
									<a href="../../basic/4_community/market_view.do?m_article_id=${market.m_article_id }"
									style = "padding-right:20px; padding-left:10px;"> 
										${market.m_title }
										<c:if test="${market.m_commCnt > 0}">
											<small>(${market.m_commCnt})</small>
										</c:if>	
									</a>
                            	</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
			<!-- 상품 리뷰 -->
			<div class="col-6">
				<table class="table table-bordered table-hover" style="height : 510px ;">
					<thead class=" text-700 bg-gray-200">
						<tr>
							<th colspan="2">
								상품리뷰
								
							</th>
						</tr>
					</thead>
					<tbody class="border-top-0">
						<!--tr에 hover 걸려있음 그래서 rowspan4로 하고, 리뷰1을 아래 tr로 뺌-->
						<tr>
							<td rowspan="4" class="w-px-150">
								<img src="../resources/assets/img/perfumes/${mainProductList.get(0).brand }/${mainProductList.get(0).product_name }.jpg" alt="상품이미지">
							</td>
						</tr>
						<c:forEach items="${main_review_list3 }" var="mainReviewList3" end="2">
						<tr>
							<td>
								<a href="../../basic/product/review_list.do?productid=554NM5WACIGRPM">
									${mainReviewList3.re_content }
								</a> 
							</td>
						</tr>
						</c:forEach>
						<tr>
							<td rowspan="4" class="w-px-150">
								<img src="../resources/assets/img/perfumes/${mainProductList.get(0).brand }/${mainProductList.get(1).product_name }.jpg" alt="상품이미지">
							</td>
						</tr>
						<c:forEach items="${main_review_list2 }" var="mainReviewList2" end="2">
						<tr>
							<td>
								<a href="../../basic/product/review_list.do?productid=555WS5ROSSPAPF">
									${mainReviewList2.re_content }
								</a> 
							</td>
						</tr>
						</c:forEach>
						<tr>
							<td rowspan="4" class="w-px-150">
								<img src="../resources/assets/img/perfumes/${mainProductList.get(0).brand }/${mainProductList.get(2).product_name }.jpg" alt="상품이미지">
							</td>
						</tr>
						<c:forEach items="${main_review_list1 }" var="mainReviewList1" end="2">
						<tr>
							<td>
								<a href="../../basic/product/review_list.do?productid=556NM3WACIARPM">
									${mainReviewList1.re_content }
								</a> 
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>


	</div>
	</section>
	<!-- End section 커뮤니티/리뷰-->
	</main>
    <!-- End Main -->
    
	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>

</div>
<!-- End Wrapper -->
</body>
</html>