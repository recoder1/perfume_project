<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
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
    <link rel="shortcut icon" href="../resources/assets/img/favicon.ico">
    <!-- CSS Template -->
    <link href="../resources/assets/css/theme.css" rel="stylesheet">
    <link href="../resources/assets/css/test_theme.css" rel="stylesheet">
	<script type="text/javascript" src="../resources/js/jquery-1.7.1.js"></script>

	
    <style>
        *{
        	font-family: 'Noto Serif KR', serif;
        }
    </style>

</head>

<body>

		<!-- header -->
		<jsp:include page="/WEB-INF/views/hf/header.jsp"></jsp:include>
		
        <!-- Main -->
        <main>
            <!-- Page Title -->
            <section class="py-3 bg-gray-100" style="height: 200px;">
                <!-- style 추가-->
                <div class="container" style="padding-top: 35px;">
                    <div class="row align-items-center">
                        <!-- col-1g-6 12로 변경, h1에 text-lg-start 클래스 삭제-->
                        <div class="col-lg-12 my-2">
                            <h1 class="m-0 h4 text-center" style="font-size: 2.5rem;">취향테스트</h1>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Page Title -->

            <!-- Section -->
            <div class="section m-auto my-7" style="width: 800px;">
                <div class="card mt-5">
                    <!-- 결과보기-->

                    <!-- 결과보기 내용 -->
                    <div class="card-body">
                        <div class="row gy-4">
                            <div class="col-12">
                                <h6 class="my-10 text-center">당신의 취향에 맞는 향수를 추천해드려요.</h6>
                            </div>
                            <!--향수 이미지1 -->
                            <c:forEach items="${recommList}" var="vo">
	                            <div class="col-4 m-auto">
	                                <div class="product-card-01">
	                                    <div class="product-media-hover" type="button">
	                                        <img src="../resources/assets/img/perfumes/${vo.brand }/${vo.pl_fname }">
 	                                        <h6 class="product-title text-start mt-3">${vo.product_name} by ${vo.brand }</h6>
	                                        <span class="text-muted">#${vo.note1 }</span>
	                                        <span class="text-muted">#${vo.note2 }</span>
	                                        <span class="text-muted">#${vo.note3 }</span>
	                                    </div>
	                                </div>
	                            </div>
                            </c:forEach>
                        </div>
                    </div>
                     <!-- 다시하기 버튼-->
                    <div class="col-12 my-10 text-center">
                        <a class="nav-link" href="../recommendation/3_questions.do"><button class="btn btn-primary">다시하기</button></a>
                    </div>
 
                </div>
            </div>
            <!-- End Section -->
            
        </main>
        <!-- End Main -->
        
        <!-- Footer -->
		<jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
		
</body>
</html>