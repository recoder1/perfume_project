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
    <link rel="shortcut icon" href="../resources/assets/img/logo_black_icon.png">
    <!-- CSS Template -->
    <link href="../resources/assets/css/theme.css" rel="stylesheet">
    <link href="../resources/assets/css/syh_theme.css" rel="stylesheet">
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

	<!-- main -->
    <main>
        <!-- Page Title -->
        <section class="py-3 bg-gray-100" style="height: 200px;">
            <!-- style 추가-->
            <div class="container" style="padding-top: 35px;">
                <div class="row align-items-center">
                    <!-- col-1g-6 12로 변경, h1에 text-lg-start 클래스 삭제-->
                    <div class="col-lg-12 my-2">
                        <h1 class="m-0 h4 text-center" style="font-size: 2.5rem;">로그인</h1>
                    </div>
                    <div class="col-lg-12 my-2" style="width: 100%">
                        <!-- ol태그 justify-content-lg-end 클래스 삭제 : 오른쪽정렬 > 가운데 정렬 / a 태그 컬러 변경-->
                        <ol class="breadcrumb dark-link m-0 small justify-content-center"
                            style="text-align: center">
                            <li class="breadcrumb-item"><a class="text-nowrap" href="#" style="color: #9397AD;"><i
                                        class="bi bi-home"></i>로그인</a></li>
                            <li class="breadcrumb-item"><a class="text-nowrap" href="#" style="color: #9397AD;"><i
                                        class="bi bi-home"></i>회원가입</a></li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Page Title -->
        <!-- Section -->
		<section>
		<!-- 로그인 성공시 -->
		<c:choose>
			<c:when test="${not empty sessionScope.user_id}">
				${sessionScope.nickname } 님 로그인 성공<hr>
				<% response.sendRedirect("../home/home.do"); %> 
			</c:when>
			<c:otherwise>
				<h6>아이디 혹은 비밀번호가 일치하지 않습니다.</h6>
			</c:otherwise>
		</c:choose>
		<!-- 로그인 실패시 -->

		</section>
         <!-- End Section -->
    </main>
    <!-- End Main -->
	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
	
</body>
</html>