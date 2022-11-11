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
    <link rel="shortcut icon" href="../resources/assets/img/favicon.ico">
    <!-- CSS Template -->
    <link href="../resources/assets/css/theme.css" rel="stylesheet">
    <link href="../resources/assets/css/syh_theme.css" rel="stylesheet">
	<script type="text/javascript" src="../resources/js/jquery-1.7.1.js"></script>
	
	<script>
	
		window.onload = function(){
			document.getElementById('Submit').onclick = check;	
		}
		
		function check(){
			if(document.form.userId.value==""){
				alert("ID를 입력하세요.")
				document.form.userId.focus();
				return false;
			}
			
			if(document.form.userPass.value==""){
				alert("패스워드를 입력하세요.")
				document.form.userPass.focus();
				return false;
			}
			
			document.form.submit();//전송
			
		}
	
	</script>
	
    <style>
        *{
        	font-family: 'Noto Serif KR', serif;
        }
    </style>    

</head>
<body>

<!-- 로그인 실패 후 재로딩시 출력 -->
	<c:if test="${not empty sessionScope.loginFailed}">
		<script type="text/javascript"> alert("아이디 또는 비밀번호가 일치하지 않습니다."); </script>
		<% session.invalidate(); %>
		<% request.getSession(true); %>
	</c:if>
	
    
    
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
            <section class="section">
                <div class="container">
                    <div class="justify-content-center row">
                        <div class="col-lg-5 col-xxl-4">
                            <div class="card">
<!--							<div class="card-header bg-transparent py-3" style="display: block;"> -->
<!--								<h6 class="h4 mb-0"> 아이디 또는 비밀번호가 일치하지 않습니다. </h6> -->
<!--							</div> -->
                                <div class="card-body">
                                    <form name="loginForm" action="login.do" method="post">
                                        <!-- id 입력 -->
                                        <div class="form-group mb-3">
                                            <label for="email_1" class="form-label">아이디<span class="text-danger">*</span></label>
                                            <input type="text" name="user_id" id="email_1" class="form-control" placeholder="ID/이메일">
                                        </div>
                                        <div class="form-group mb-3">
                                        	<!-- 아이디/비밀번호 찾기 -->
                                            <div id = "login_findIdPw" class="row align-items-center">
                                                <label class="form-label col" for="exampleInputPassword01">비밀번호<span class="text-danger">*</span></label>
                                                <span class="col ms-auto small text-end"><a href="#!" >아이디/비밀번호 찾기</a></span>
                                            </div>
                                            <!-- password 입력 -->
                                            <input type="password" name="user_password" class="form-control" id="exampleInputPassword01" placeholder="*********">
                                        </div>
                                        <!-- 아이디 기억하기 checkbox -->
                                        <div class="form-check mb-3">
                                            <input class="form-check-input" type="checkbox" value="" id="form2Example3" checked="">
                                            <label class="form-check-label" for="form2Example3"> 아이디 기억하기 </label>
                                        </div>
                                        <!-- submit -->
                                        <div id = "login_loginBtn" class="form-group text-center">
                                            <button type="submit" name="submit" class="btn btn-primary w-100" id="submitBtn">
                                                로그인
                                            </button>
                                        </div>
                                    </form>
                                    <div class="text-center pt-4 pb-5" style="">
                                        <span class="px-3 bg-white d-inline-block align-top lh-sm">간편로그인</span>
                                        <div class="border-bottom mt-n3"></div>
                                    </div>
                                    <div id="login_easyLoginSection" class="row g-2">
                                        <div>
                                            <a><img src = "../resources/assets/img/kakaotalk.png"></a> 
                                        </div>
                                        <div>
                                            <a><img src = "../assets/img/instagram.png"></a>
                                        </div>
                                        <div>
                                            <a><img src = "../resources/assets/img/naver.png"></a>
                                        </div>
                                    </div>
                                    <div id ="login_noAccountDiv" class="pt-4 text-center">
                                        <span class="text-muted">계정이 없으신가요? <a href="6_myPage_sign-up.do">회원가입</a></span>
                                    </div>
                                </div>
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
	
</body>
</html>